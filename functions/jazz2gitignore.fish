function jazz2gitignore
	for jazzignore in (find . -name '.jazzignore')
rm (echo $jazzignore | sed 's/.jazzignore/.gitignore/')
for line in (cat $jazzignore | sed 's/^#.*//' | sed '/^\s*$/d' | sed 's/{//' | sed 's/}//' | sed 's/\\\$//' | sed 's/^\s*//' | sed 's/\s*$//')
if [ $line = "core.ignore.recursive=" ]
set rec 1
continue
else if [ $line = "core.ignore=" ]
set rec 0
continue
else if [ $rec = 1 ]
echo $line >> (echo $jazzignore | sed 's/.jazzignore/.gitignore/')
else if [ $rec = 0 ]
echo "/$line" >> (echo $jazzignore | sed 's/.jazzignore/.gitignore/')
end
end
end
end
