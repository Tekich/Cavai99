find . -name '*.txt' |xargs grep -FA 1 '//##\\' |grep -v '//##\\'



find . -name '*.*'|xargs grep -A 1 '//##\\'|sed -e '/fff/s/$/   <----Mistake, not txt/' -e '/rtf/s/$/   <----Mistake, not txt/'|grep -v '//##\\'
