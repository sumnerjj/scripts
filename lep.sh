# Compress jpg images from a directory using Dropbox's Lepton: 
# https://github.com/dropbox/lepton
mkdir lepton_compressed
for Jpg in $1/*
do
		if [[ $Jpg =~ .*.jpg ]]
		then
    	echo "$Jpg"
			./lepton-master/lepton "$Jpg" "./lepton_compressed/$(basename "$Jpg").lep"
		fi

		if [[ $Jpg =~ .*.jpeg ]]
		then
			./lepton-master/lepton "$Jpg" "./lepton_compressed/$(basename "$Jpg").lep"
		fi

done
