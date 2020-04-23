for f in *.sh; do  
  if [[ ${BASH_SOURCE[0]##*/} != $f ]]; then
     #echo "$f"
     source "$f"
  fi
done