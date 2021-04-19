Just some fun experiments.

* 01 - trivial baseline, reaches steady state fast
* 02 - identical tribes, reaches steady state with similarly sized tribe (minor RNG)
* 03 - optimize math a bit, I like this yield function (extracted to `yield_function.rb`)
* 04 - two jobs; weirdly it has multiple steady states, as hunters and gatherers are sharing food, so either can be subsidizing the other
* 05 - competing tribes (gatherers, hunters, mixed) - reaches steady state with all surviving at similar size
* 06 - competing tribe, even small 5% bonus (to work efficiency; or food need) makes such tribe dominate
* 07 - +10% / -10% environmental fluctuation, it usually kills pure-hunter and pure-gatherer tribe, with mixed tribe the only survivor; sometimes 2/3 tribes survive, but mixed one has big advantage
* 08 - +20%/-20% environmental fluctuation or +5% specialization bonus, which is stronger? outcomes seem too random, is die-off too fast?
* 09 - simple demographics structure with constant death rate; way too many adult deaths
* 10 - death chance dependent on age (0-14, 15-40, 41+)
* 11 - count just age buckets instead of ages, with probabilistic age transitions
* 12 - #05 plus child as extra job in usual simulator; destabilizes tribes a bit due to non-working members; 2 or 3 tribes survive in good health
