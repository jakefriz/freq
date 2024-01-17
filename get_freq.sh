#!/bin/bash
echo "<table>" > index.html

for i in {1..264}
do
    echo "Page ${i}"
    curl "https://www.scannerfrequencies.com/radio/hawaii/honolulu/page/${i}" | sed -n '/<tr class="odd_even">/,/<\/tr>/p' >> index.html
done


echo "</table>" >> index.html