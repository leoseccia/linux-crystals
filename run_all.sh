for f in *.sh; do  
  if [[ ${BASH_SOURCE[0]##*/} != $f ]]; then
     source "$f"
  fi
done