import re

fileToRead = "fast.lib"
fileToWrite = "data.csv"
with open(fileToRead,"r") as readFile:
  file_contents = readFile.read()
with open(fileToWrite,"w") as writeFile:
	writeFile.write("CELLNAME, AREA, PIN")
	for line in file_contents.split("\n"):
		pattern = r'\bcell\s+\((\w+)\)\s*{'
		pattern2= r'^\s*area\s*:\s*([\d.]+);'
		pattern3= r'pin\((\w+)\)'
		cell=re.findall(pattern,line)
		area=re.findall(pattern2,line)
		pin=re.findall(pattern3,line)
		for m in cell:
			print(i)
       		 	writeFile.write("\n"+i+' , ')
		for n in area:
			print(j)
   	    	 	writeFile.write(j+' , ')
		for p in pin:
			print(k)
        		writeFile.write(k+',')