# Stylorhythm

This repo contains the data and code for an investigation into the possibility of using a text's rhythmical pattern as a feature for author attribution.

## The case of Henry of Brussels

**Henry of Brussels** (or in Dutch: Hendrik van Brussel) was a poet, active in the larger Brussels area between ca. 1250-ca. 1330. Of one particular text, we can be rather sure that it was written by him, since he incorporated his name in its final verse lines: _**Van de Coninc Saladijn**_ (English: _Of King Saladin_).

Two other texts have been rather tentatively attributed to Henry: 

 - His his translation of _Roman de la Rose_, in Dutch: _**De Brabantse Rose**_ Most scholars agree on Henry being the author of this text, since the scribe mentions a certain 'Henry of Brussels', being the original translator of the text.
 
 - An abridged version of the story of _**Cassamus**_ has also been attributed to Henry, based on the fact that it immediately follows the abovementioned _Rose_-text in the manuscript (and is even sort of interlaced with it).

 - Finally, the _**Roman van Limborch**_, an adventurous chivalric epic has also been attributed to him. However, the evidence for this attribution is very thin: one verse line mentions a certain "Heinriic" [...] "whom made this text".

## Stylometry to the rescue?

### Use of rhyme words

On the basis of a stylometric investigation, Mike Kestemont has reopened the controversial issue surrounding the attribution of Middle Dutch texts to Henry of Brussels. Stylometric comparisons show that, based on the rhyme vocabulary used, there is a **great similarity** between the _**Cassamus**_, the _**Roman van Limborch**_ and the _**Brabantse Rose**_. Due to its short length,  it is more difficult to determine the authorship of _Van de Coninc Saladijn_.

### Rhythm

Interestingly, it has been noted by Knuvelder that both the _Roman van Limborch_ and the  _De Brabantse Rose_ share a "well-developed rhythm". Obviously, this is more or less an intuition of a scholar (who is of course well versed in Middle Dutch poetry). Yet it raises an intriguing question: would it be possible to -- in addition to the similar rhyme word vocabulary -- **link these texts based on their rhythmical characteristics?**

## Data

The data used in this project is fully automatic scanned Middle Dutch poetry. Note: the development of the scansion machine is the subject of previous projects. In essence, it's strings of 0's (unstressed) and 1's (stressed). For example:

|Verse line  | Stress pattern  |
|--|--|
|het **es** ghe**seit** dat in **dro**me  | [0][1][0, 1][0][0][1, 0] |
|**niet** ne es dan **y**dele **go**me  |[1][0][0][0][1, 0, 0][1, 0]  |
|**lo**ghene **en**de on**waer**hede  | [1, 0, 0][1, 0][0, 1, 0, 0] |
|noch**tan** heeft **men** te **me**niger **ste**de  | [0, 1][0][1][0][1, 0, 0][1, 0]  |
|**dic**ken die **dro**me **von**den **waer**  | [1, 0][0][1, 0][1, 0][1] |
|**en**de die **din**ghen ghe**scien** daer **naer**  | [1, 0][0][1, 0][0, 1][0][1] |