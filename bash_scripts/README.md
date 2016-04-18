# Scripts

## gco ("git checkout")

Check out a branch matching the given argument:

```
$ gco payment
Switched to branch 'settings-payment-method-add-edit-de24152'
```

## master

Check out master, update it from the remote, and delete all merged branches (locally)

```
$ master

Switched to branch 'master'
Your branch is up-to-date with 'origin/master'.
remote: Counting objects: 515, done.
remote: Compressing objects: 100% (217/217), done.
remote: Total 241 (delta 162), reused 4 (delta 4)
Receiving objects: 100% (241/241), 45.27 KiB | 0 bytes/s, done.
Resolving deltas: 100% (162/162), completed with 98 local objects.
From http://stash.chotel.com:8080/scm/chcom/replatform
   d4f7b41..3bebf5b  us40112_ta208180_vacation_rentals_search-results_webapi -> origin/us40112_ta208180_vacation_rentals_search-results_webapi
 * [new branch]      us40328_ta210325_unit_testing_and_promise -> origin/us40328_ta210325_unit_testing_and_promise
Already up-to-date.
From http://stash.chotel.com:8080/scm/chcom/replatform
 x [deleted]         (none)     -> origin/GDC_Vinay_US39961_phonepreferences
```

## st ("git status")

```
$ st
On branch master
Your branch is up-to-date with 'origin/master'.

nothing to commit, working directory clean
```

## dif ("git diff")

## dfc ("git diff --cached")

## commit ("git commit -m "$1")

## amend ("git commit --amend")

## ad

Add files matching the given argument, or add all files if no arg provided.

Add all files with names/paths containing `foo`:
```
$ ad foo
```

Add all unstaged files/hunks:
```
$ ad
```

## adf

Like `ad`, but view a diff after adding.
