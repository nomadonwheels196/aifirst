#!/usr/bin/env python3
"""
Royalty Tax Calculator — GILTI / Subpart F / WHT quick scenarios

Computes indicative global cash taxes and effective rates for:
  A) No IP HoldCo (US parent owns IP)
  B) Ireland IP HoldCo (with/without high-tax exception)
  C1) Cayman IP HoldCo (GILTI)
  C2) Cayman IP HoldCo (Subpart F-like residual)

Default numbers align with Model_GILTI_SubpartF_WHT.md. Override via CLI flags.
"""

import argparse
from dataclasses import dataclass


@dataclass
class Inputs:
    royalty: float = 5_000_000.0
    es_cit: float = 0.25
    wht_us: float = 0.05
    wht_ie: float = 0.00
    wht_cayman: float = 0.24
    us_rate: float = 0.21
    ie_rate: float = 0.125
    gilti_rate: float = 0.105
    us_residual_ie_no_hte: float = 0.03
    us_residual_cayman_subpartf: float = 0.08


def fmt_eur(x: float) -> str:
    return f"€{x:,.0f}".replace(",", "_").replace("_", ",")


def scenario_us_parent(inp: Inputs):
    R = inp.royalty
    wht = R * inp.wht_us
    us_tax = R * inp.us_rate
    us_residual = max(us_tax - wht, 0.0)
    es_cit_saved = R * inp.es_cit
    global_cash = wht + us_residual - es_cit_saved
    eff_rate = global_cash / R
    return {
        "name": "A) US Parent (no IP HoldCo)",
        "global_cash": global_cash,
        "effective_rate": eff_rate,
        "components": {
            "ES_WHT": wht,
            "US_tax_residual": us_residual,
            "ES_CIT_saved": -es_cit_saved,
        },
    }


def scenario_ie(inp: Inputs, high_tax_exception: bool):
    R = inp.royalty
    wht = R * inp.wht_ie
    ie_tax = R * inp.ie_rate
    us_residual = 0.0 if high_tax_exception else R * inp.us_residual_ie_no_hte
    es_cit_saved = R * inp.es_cit
    global_cash = wht + ie_tax + us_residual - es_cit_saved
    eff_rate = global_cash / R
    return {
        "name": f"B) Ireland IP HoldCo ({'HTE' if high_tax_exception else 'no HTE'})",
        "global_cash": global_cash,
        "effective_rate": eff_rate,
        "components": {
            "ES_WHT": wht,
            "IE_tax": ie_tax,
            "US_residual": us_residual,
            "ES_CIT_saved": -es_cit_saved,
        },
    }


def scenario_cayman_gilti(inp: Inputs):
    R = inp.royalty
    wht = R * inp.wht_cayman
    us_residual = R * inp.gilti_rate
    es_cit_saved = R * inp.es_cit
    global_cash = wht + us_residual - es_cit_saved
    eff_rate = global_cash / R
    return {
        "name": "C1) Cayman IP HoldCo (GILTI)",
        "global_cash": global_cash,
        "effective_rate": eff_rate,
        "components": {
            "ES_WHT": wht,
            "US_GILTI": us_residual,
            "ES_CIT_saved": -es_cit_saved,
        },
    }


def scenario_cayman_subpartf(inp: Inputs):
    R = inp.royalty
    wht = R * inp.wht_cayman
    us_residual = R * inp.us_residual_cayman_subpartf
    es_cit_saved = R * inp.es_cit
    global_cash = wht + us_residual - es_cit_saved
    eff_rate = global_cash / R
    return {
        "name": "C2) Cayman IP HoldCo (Subpart F-like)",
        "global_cash": global_cash,
        "effective_rate": eff_rate,
        "components": {
            "ES_WHT": wht,
            "US_SubpartF_residual": us_residual,
            "ES_CIT_saved": -es_cit_saved,
        },
    }


def parse_args() -> Inputs:
    p = argparse.ArgumentParser(description="Royalty tax quick model")
    p.add_argument("--royalty", type=float, default=5_000_000.0)
    p.add_argument("--es-cit", type=float, default=0.25, help="Spain CIT rate")
    p.add_argument("--wht-us", type=float, default=0.05, help="WHT rate on royalties to US")
    p.add_argument("--wht-ie", type=float, default=0.00, help="WHT rate to Ireland")
    p.add_argument("--wht-cayman", type=float, default=0.24, help="WHT rate to Cayman")
    p.add_argument("--us-rate", type=float, default=0.21, help="US corporate tax rate")
    p.add_argument("--ie-rate", type=float, default=0.125, help="Ireland corporation tax (trading)")
    p.add_argument("--gilti-rate", type=float, default=0.105, help="US GILTI effective rate on tested income")
    p.add_argument("--ie-no-hte-us-residual", type=float, default=0.03, help="US residual if HTE not used")
    p.add_argument("--cayman-subpartf-us-residual", type=float, default=0.08, help="US residual assumption under Subpart F characterization")
    args = p.parse_args()
    return Inputs(
        royalty=args.royalty,
        es_cit=args.es_cit,
        wht_us=args.wht_us,
        wht_ie=args.wht_ie,
        wht_cayman=args.wht_cayman,
        us_rate=args.us_rate,
        ie_rate=args.ie_rate,
        gilti_rate=args.gilti_rate,
        us_residual_ie_no_hte=args.ie_no_hte_us_residual,
        us_residual_cayman_subpartf=args.cayman_subpartf_us_residual,
    )


def main():
    inp = parse_args()
    scenarios = [
        scenario_us_parent(inp),
        scenario_ie(inp, high_tax_exception=True),
        scenario_ie(inp, high_tax_exception=False),
        scenario_cayman_gilti(inp),
        scenario_cayman_subpartf(inp),
    ]

    print("Royalty Tax Quick Model")
    print(f"Royalty base: {fmt_eur(inp.royalty)}")
    print()
    for s in scenarios:
        print(s["name"]) 
        print(f"  Global cash taxes: {fmt_eur(s['global_cash'])}")
        print(f"  Effective rate: {s['effective_rate']*100:.1f}%")
        for k, v in s["components"].items():
            print(f"    {k}: {fmt_eur(v)}")
        print()


if __name__ == "__main__":
    main()

