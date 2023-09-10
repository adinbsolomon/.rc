#!/bin/bash

file_to_overwrite=~/.bashrc

echo "#!/bin/bash" > $file_to_overwrite
echo "" >> $file_to_overwrite
echo "# Please see ~/.rc for details." >> $file_to_overwrite
echo "" >> $file_to_overwrite
echo "source ~/.rc/bashrc.sh" >> $file_to_overwrite
echo "source ~/.rc/bash-aliases.sh" >> $file_to_overwrite
echo "source ~/.rc/bash-utils.sh" >> $file_to_overwrite
