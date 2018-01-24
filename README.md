# emojify
Convert gemoji style emoji(ex. `:smile:`) to unicode emoji(ex. :smile:). (a fish porting of [mrowa44/emojify](https://github.com/mrowa44/emojify))


## :mag: Usage
Here's a clever example:
```shell
emojify "Hey, I just :raising_hand: you, and this is :scream: , but here's my :calling: , so :telephone_receiver: me, maybe?"
```
would output:
> Hey, I just :raising_hand: you, and this is :scream: , but here's my
> :calling: , so :telephone_receiver: me, maybe?


Or maybe:
```shell
$ emojify "To :bee: , or not to :bee: : that is the question... To take :muscle: against a :ocean: of troubles, and by opposing, end them?"
```
> To :bee: , or not to :bee: : that is the question... To take :muscle: against
> a :ocean: of troubles, and by opposing, end them?

Or you could run it through git log with something like:
```shell
$ git log --oneline --color | emojify | less -r
```


## :package: Installation
### With [**Fisherman**](https://github.com/fisherman/fisherman)
```shell
$ fisher Tosuke/emojify
```

## Relates
- [mrowa44/emojify](https://github.com/mrowa44/emojify) bash
- [lord63/pyemojify](https://github.com/lord63/pyemojify) python