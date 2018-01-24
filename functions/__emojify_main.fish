function __emojify_main
  set -l define (cat (dirname (realpath (status -f)))/emoji.tsv | awk '{print "dict[\\":" $1 ":\\"]=\\"" $2 "\\";"}' | string join '')
  set -l script """
  BEGIN {
  $define
  }
  
  /^:/ {
    x = dict[\$0];
    if (length(x) == 0) print \$0;
    else print x; 
  }
  
  /^[^:]/ {
    print \$0;
  }
  """
  set -l escchr \uFFFE
  cat - \
    | awk "{ print \$0; print \"$escchr\" }" \
    | string replace --all -r ':[a-z0-9\+\-\_]+:' '\n$0\n' \
    | awk $script \
    | awk "BEGIN{ buf=\"\" } /[^$escchr]\$/{ buf=buf \$0 } /^$escchr\$/{ print buf; buf=\"\" }"
end