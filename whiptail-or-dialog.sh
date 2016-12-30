read dialog <<< "$(which whiptail dialog 2> /dev/null)"

# exit if none found
[[ "$dialog" ]] || {
  echo 'neither whiptail nor dialog found' >&2
  exit 1
}

# just use whichever was found
"$dialog" --msgbox "Message displayed with $dialog" 0 0
