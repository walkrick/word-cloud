# Word Cloud

Brought to you by [lmoehn](https://github.com/lmoehn)

You work for a tech conference company.  Somebody transcribes all the noteworthy quotes from all the speakers,
and enters them into a system.  This system outputs a JSON file that looks like this:

```
{
  "Ila Huels": [
    "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
    "ENVISIONEER ROBUST E-COMMERCE",
    "TRANSFORM WIRELESS ARCHITECTURES",
    "redefine global platforms",
    "AGGREGATE FRICTIONLESS E-MARKETS",
    "TRANSFORM B2C SUPPLY-CHAINS",
    "E-ENABLE COMPELLING BANDWIDTH",
    "embrace scalable architectures",
    "ENGINEER B2C COMMUNITIES",
    "embrace e-business supply-chains",
    "enhance one-to-one partnerships"
  ],
  "Cristopher Feest": [
    "BENCHMARK CROSS-PLATFORM PARTNERSHIPS",
    "brand sexy channels",
    "BENCHMARK 24/7 PARADIGMS",
    "WHITEBOARD B2B EYEBALLS",
    "TRANSITION VIRTUAL WEB-READINESS",
    "REINTERMEDIATE INTEGRATED COMMUNITIES",
    "mesh wireless e-commerce",
    "streamline next-generation niches",
    "drive interactive technologies"
  ]
}
```

Your mission, should you choose to accept it, is to turn this data into a hash that can be used by a word cloud.  The
output should look like this:

```
{
  "optimize" => {
    count: 24,
    speakers: ["Ila Huels", "Christopher Feest"]
  }
}
```

The words appear in a mix of uppercase and lowercase letters, but the resulting word-cloud should be all lowercase,
and counts and speakers should be case-insensitive.

# Extra

Write a file in your bin directory that processes all the words in the `data/quotes.json` file.

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/self-referencing-documentation.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
