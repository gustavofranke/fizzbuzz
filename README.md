# fizzbuzz

The other day I found this code I wrote sometime ago, it was one of my first ever programs written in Haskell. So, I've created [a gist for it](https://gist.github.com/gustavofranke/ae05845f2082c8d8f7ded8f25ae23b96). It solves the fizz buzz problem, only to find [this blog post](https://www.parsonsmatt.org/2016/02/27/an_elegant_fizzbuzz.html) with a much better and idiomatic solution than mine, that also exploits some cool mathy aspects, with a much more idiomatic result.

So I wanted to see the post's code in action and play with it, and I've created this repo with that in mind.

The project was setup using the following commands:
```
stack new fizzbuzz simple
cd fizzbuzz/
stack setup
```

the cycle for run it is:
```
stack test
stack build
stack exec fizzbuzz
```

or alternatively:
```
stack test --fast --haddock-deps --file-watch
```
