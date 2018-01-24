function emojify
  if string length -q -- $argv[1]
    switch $argv[1]
      case '-h' '--help'
        echo '''
Usage: emojify [options] [TEXT]

Options:
  -h, --help  show help message
  -l, --list  show emoji list
'''
        return 0
      case '-l' '--list'
        cat (dirname (realpath (status -f)))/emoji.tsv \
          | awk '{print ":"$1": "$2}'
        return 0
    end
    echo $argv | __emojify_main
  else
    __emojify_main
  end
end