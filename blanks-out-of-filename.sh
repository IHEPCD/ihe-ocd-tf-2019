for oldname
do
    newname=${oldname// /_}
    echo mv \"${oldname}\" ${newname}
done

