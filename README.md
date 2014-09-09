# Word Cloud

Brought to you by [lmoehn](https://github.com/lmoehn)

You work for a tech conference company.  Somebody transcribes all the noteworthy quotes from all the speakers,
and enters them into a system.  This system outputs a JSON file that looks like this:

```
{
  "Ila Huels": [
    "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
    "brand sexy channels",
    "ENVISIONEER ROBUST E-COMMERCE",
    "TRANSFORM WIRELESS ARCHITECTURES",
    "BENCHMARK CROSS-PLATFORM PARTNERSHIPS"
  ],
  "Cristopher Feest": [
    "BENCHMARK CROSS-PLATFORM PARTNERSHIPS",
    "brand sexy channels",
    "BENCHMARK 24/7 PARADIGMS"
  ]
}
```

Your mission, should you choose to accept it, is to turn this data into a hash that can be used by a word cloud.  The
output should look like this:

```
{
  "optimize" => { :count => 1, :people => ["Ila Huels"] },
  "web-enabled" => { :count => 1, :people => ["Ila Huels"] },
  "supply-chains" => { :count => 1, :people => ["Ila Huels"] },
  "brand" => { :count => 2, :people => ["Ila Huels", "Cristopher Feest"] },
  "sexy" => { :count => 2, :people => ["Ila Huels", "Cristopher Feest"] },
  "channels" => { :count => 2, :people => ["Ila Huels", "Cristopher Feest"] },
  "envisioneer" => { :count => 1, :people => ["Ila Huels"] },
  "robust" => { :count => 1, :people => ["Ila Huels"] },
  "e-commerce" => { :count => 1, :people => ["Ila Huels"] },
  "transform" => { :count => 1, :people => ["Ila Huels"] },
  "wireless" => { :count => 1, :people => ["Ila Huels"] },
  "architectures" => { :count => 1, :people => ["Ila Huels"] },
  "benchmark" => { :count => 3, :people => ["Ila Huels", "Cristopher Feest"] },
  "cross-platform" => { :count => 2, :people => ["Ila Huels", "Cristopher Feest"] },
  "partnerships" => { :count => 2, :people => ["Ila Huels", "Cristopher Feest"] },
  "24/7" => { :count => 1, :people => ["Cristopher Feest"] },
  "paradigms" => { :count => 1, :people => ["Cristopher Feest"] }
}
```

The words appear in a mix of uppercase and lowercase letters, but the resulting word-cloud should be all lowercase,
and counts and speakers should be case-insensitive.

# Extra

Write a file in your bin directory that processes all the words in the `data/quotes.json` file.

