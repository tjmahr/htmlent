
<!-- README.md is generated from README.Rmd. Please edit that file -->
htmlent: HTML entities
======================

A simple data package with HTML entities, downloaded from [this page](https://dev.w3.org/html5/html-author/charref).

Installation
------------

You can install htmlent from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("tjmahr/htmlent")
```

Example
-------

I am writing some RMarkdown, and I want to express a statistic as the mean plus-minus the standard deviation. I can never remember the entity for the plus-minus character, so I have to look it up online.

Not anymore. I can just get the entity by using RStudio's autocompletion on the `htmlent` object. I type `htmlent::ents$` then hit `tab` to bring up the autocompletion and type `plus-m` and find it.

``` r
htmlent::ents$`plus-minus sign`
#> [1] "&plusmn;"
```

### Might as well make a dataframe of them all

``` r
df <- tibble::data_frame(
  symbol = unlist(htmlent::ents),
  entity = paste0("`", symbol, "`"),
  name = names(htmlent::ents)
)
  
knitr::kable(df)
```

| symbol | entity                   | name                                                                      |
|:-------|:-------------------------|:--------------------------------------------------------------------------|
| 	      | `&Tab;`                  | character tabulation                                                      |
|        | `&NewLine;`              | line feed (lf)                                                            |
| !      | `&excl;`                 | exclamation mark                                                          |
| "      | `&quot;`                 | quotation mark                                                            |
| \#     | `&num;`                  | number sign                                                               |
| $      | `&dollar;`               | dollar sign                                                               |
| %      | `&percnt;`               | percent sign                                                              |
| &      | `&amp;`                  | ampersand                                                                 |
| '      | `&apos;`                 | apostrophe                                                                |
| (      | `&lpar;`                 | left parenthesis                                                          |
| )      | `&rpar;`                 | right parenthesis                                                         |
| \*     | `&ast;`                  | asterisk                                                                  |
| +      | `&plus;`                 | plus sign                                                                 |
| ,      | `&comma;`                | comma                                                                     |
| .      | `&period;`               | full stop                                                                 |
| /      | `&sol;`                  | solidus                                                                   |
| :      | `&colon;`                | colon                                                                     |
| ;      | `&semi;`                 | semicolon                                                                 |
| &lt;   | `&lt;`                   | less-than sign                                                            |
| =      | `&equals;`               | equals sign                                                               |
| &gt;   | `&gt;`                   | greater-than sign                                                         |
| ?      | `&quest;`                | question mark                                                             |
| @      | `&commat;`               | commercial at                                                             |
| \[     | `&lsqb;`                 | left square bracket                                                       |
| \\     | `&bsol;`                 | reverse solidus                                                           |
| \]     | `&rsqb;`                 | right square bracket                                                      |
| ^      | `&Hat;`                  | circumflex accent                                                         |
| \_     | `&lowbar;`               | low line                                                                  |
| \`     | `&grave;`                | grave accent                                                              |
| {      | `&lcub;`                 | left curly bracket                                                        |
| |      | `&verbar;`               | vertical line                                                             |
| }      | `&rcub;`                 | right curly bracket                                                       |
|        | `&nbsp;`                 | no-break space                                                            |
| ¡      | `&iexcl;`                | inverted exclamation mark                                                 |
| ¢      | `&cent;`                 | cent sign                                                                 |
| £      | `&pound;`                | pound sign                                                                |
| ¤      | `&curren;`               | currency sign                                                             |
| ¥      | `&yen;`                  | yen sign                                                                  |
| ¦      | `&brvbar;`               | broken bar                                                                |
| §      | `&sect;`                 | section sign                                                              |
| ¨      | `&Dot;`                  | diaeresis                                                                 |
| ©      | `&copy;`                 | copyright sign                                                            |
| ª      | `&ordf;`                 | feminine ordinal indicator                                                |
| «      | `&laquo;`                | left-pointing double angle quotation mark                                 |
| ¬      | `&not;`                  | not sign                                                                  |
| ­      | `&shy;`                  | soft hyphen                                                               |
| ®      | `&reg;`                  | registered sign                                                           |
| ¯      | `&macr;`                 | macron                                                                    |
| °      | `&deg;`                  | degree sign                                                               |
| ±      | `&plusmn;`               | plus-minus sign                                                           |
| ²      | `&sup2;`                 | superscript two                                                           |
| ³      | `&sup3;`                 | superscript three                                                         |
| ´      | `&acute;`                | acute accent                                                              |
| µ      | `&micro;`                | micro sign                                                                |
| ¶      | `&para;`                 | pilcrow sign                                                              |
| ·      | `&middot;`               | middle dot                                                                |
| ¸      | `&cedil;`                | cedilla                                                                   |
| ¹      | `&sup1;`                 | superscript one                                                           |
| º      | `&ordm;`                 | masculine ordinal indicator                                               |
| »      | `&raquo;`                | right-pointing double angle quotation mark                                |
| ¼      | `&frac14;`               | vulgar fraction one quarter                                               |
| ½      | `&frac12;`               | vulgar fraction one half                                                  |
| ¾      | `&frac34;`               | vulgar fraction three quarters                                            |
| ¿      | `&iquest;`               | inverted question mark                                                    |
| À      | `&Agrave;`               | latin capital letter a with grave                                         |
| Á      | `&Aacute;`               | latin capital letter a with acute                                         |
| Â      | `&Acirc;`                | latin capital letter a with circumflex                                    |
| Ã      | `&Atilde;`               | latin capital letter a with tilde                                         |
| Ä      | `&Auml;`                 | latin capital letter a with diaeresis                                     |
| Å      | `&Aring;`                | latin capital letter a with ring above                                    |
| Æ      | `&AElig;`                | latin capital letter ae                                                   |
| Ç      | `&Ccedil;`               | latin capital letter c with cedilla                                       |
| È      | `&Egrave;`               | latin capital letter e with grave                                         |
| É      | `&Eacute;`               | latin capital letter e with acute                                         |
| Ê      | `&Ecirc;`                | latin capital letter e with circumflex                                    |
| Ë      | `&Euml;`                 | latin capital letter e with diaeresis                                     |
| Ì      | `&Igrave;`               | latin capital letter i with grave                                         |
| Í      | `&Iacute;`               | latin capital letter i with acute                                         |
| Î      | `&Icirc;`                | latin capital letter i with circumflex                                    |
| Ï      | `&Iuml;`                 | latin capital letter i with diaeresis                                     |
| Ð      | `&ETH;`                  | latin capital letter eth                                                  |
| Ñ      | `&Ntilde;`               | latin capital letter n with tilde                                         |
| Ò      | `&Ograve;`               | latin capital letter o with grave                                         |
| Ó      | `&Oacute;`               | latin capital letter o with acute                                         |
| Ô      | `&Ocirc;`                | latin capital letter o with circumflex                                    |
| Õ      | `&Otilde;`               | latin capital letter o with tilde                                         |
| Ö      | `&Ouml;`                 | latin capital letter o with diaeresis                                     |
| ×      | `&times;`                | multiplication sign                                                       |
| Ø      | `&Oslash;`               | latin capital letter o with stroke                                        |
| Ù      | `&Ugrave;`               | latin capital letter u with grave                                         |
| Ú      | `&Uacute;`               | latin capital letter u with acute                                         |
| Û      | `&Ucirc;`                | latin capital letter u with circumflex                                    |
| Ü      | `&Uuml;`                 | latin capital letter u with diaeresis                                     |
| Ý      | `&Yacute;`               | latin capital letter y with acute                                         |
| Þ      | `&THORN;`                | latin capital letter thorn                                                |
| ß      | `&szlig;`                | latin small letter sharp s                                                |
| à      | `&agrave;`               | latin small letter a with grave                                           |
| á      | `&aacute;`               | latin small letter a with acute                                           |
| â      | `&acirc;`                | latin small letter a with circumflex                                      |
| ã      | `&atilde;`               | latin small letter a with tilde                                           |
| ä      | `&auml;`                 | latin small letter a with diaeresis                                       |
| å      | `&aring;`                | latin small letter a with ring above                                      |
| æ      | `&aelig;`                | latin small letter ae                                                     |
| ç      | `&ccedil;`               | latin small letter c with cedilla                                         |
| è      | `&egrave;`               | latin small letter e with grave                                           |
| é      | `&eacute;`               | latin small letter e with acute                                           |
| ê      | `&ecirc;`                | latin small letter e with circumflex                                      |
| ë      | `&euml;`                 | latin small letter e with diaeresis                                       |
| ì      | `&igrave;`               | latin small letter i with grave                                           |
| í      | `&iacute;`               | latin small letter i with acute                                           |
| î      | `&icirc;`                | latin small letter i with circumflex                                      |
| ï      | `&iuml;`                 | latin small letter i with diaeresis                                       |
| ð      | `&eth;`                  | latin small letter eth                                                    |
| ñ      | `&ntilde;`               | latin small letter n with tilde                                           |
| ò      | `&ograve;`               | latin small letter o with grave                                           |
| ó      | `&oacute;`               | latin small letter o with acute                                           |
| ô      | `&ocirc;`                | latin small letter o with circumflex                                      |
| õ      | `&otilde;`               | latin small letter o with tilde                                           |
| ö      | `&ouml;`                 | latin small letter o with diaeresis                                       |
| ÷      | `&divide;`               | division sign                                                             |
| ø      | `&oslash;`               | latin small letter o with stroke                                          |
| ù      | `&ugrave;`               | latin small letter u with grave                                           |
| ú      | `&uacute;`               | latin small letter u with acute                                           |
| û      | `&ucirc;`                | latin small letter u with circumflex                                      |
| ü      | `&uuml;`                 | latin small letter u with diaeresis                                       |
| ý      | `&yacute;`               | latin small letter y with acute                                           |
| þ      | `&thorn;`                | latin small letter thorn                                                  |
| ÿ      | `&yuml;`                 | latin small letter y with diaeresis                                       |
| Ā      | `&Amacr;`                | latin capital letter a with macron                                        |
| ā      | `&amacr;`                | latin small letter a with macron                                          |
| Ă      | `&Abreve;`               | latin capital letter a with breve                                         |
| ă      | `&abreve;`               | latin small letter a with breve                                           |
| Ą      | `&Aogon;`                | latin capital letter a with ogonek                                        |
| ą      | `&aogon;`                | latin small letter a with ogonek                                          |
| Ć      | `&Cacute;`               | latin capital letter c with acute                                         |
| ć      | `&cacute;`               | latin small letter c with acute                                           |
| Ĉ      | `&Ccirc;`                | latin capital letter c with circumflex                                    |
| ĉ      | `&ccirc;`                | latin small letter c with circumflex                                      |
| Ċ      | `&Cdot;`                 | latin capital letter c with dot above                                     |
| ċ      | `&cdot;`                 | latin small letter c with dot above                                       |
| Č      | `&Ccaron;`               | latin capital letter c with caron                                         |
| č      | `&ccaron;`               | latin small letter c with caron                                           |
| Ď      | `&Dcaron;`               | latin capital letter d with caron                                         |
| ď      | `&dcaron;`               | latin small letter d with caron                                           |
| Đ      | `&Dstrok;`               | latin capital letter d with stroke                                        |
| đ      | `&dstrok;`               | latin small letter d with stroke                                          |
| Ē      | `&Emacr;`                | latin capital letter e with macron                                        |
| ē      | `&emacr;`                | latin small letter e with macron                                          |
| Ė      | `&Edot;`                 | latin capital letter e with dot above                                     |
| ė      | `&edot;`                 | latin small letter e with dot above                                       |
| Ę      | `&Eogon;`                | latin capital letter e with ogonek                                        |
| ę      | `&eogon;`                | latin small letter e with ogonek                                          |
| Ě      | `&Ecaron;`               | latin capital letter e with caron                                         |
| ě      | `&ecaron;`               | latin small letter e with caron                                           |
| Ĝ      | `&Gcirc;`                | latin capital letter g with circumflex                                    |
| ĝ      | `&gcirc;`                | latin small letter g with circumflex                                      |
| Ğ      | `&Gbreve;`               | latin capital letter g with breve                                         |
| ğ      | `&gbreve;`               | latin small letter g with breve                                           |
| Ġ      | `&Gdot;`                 | latin capital letter g with dot above                                     |
| ġ      | `&gdot;`                 | latin small letter g with dot above                                       |
| Ģ      | `&Gcedil;`               | latin capital letter g with cedilla                                       |
| Ĥ      | `&Hcirc;`                | latin capital letter h with circumflex                                    |
| ĥ      | `&hcirc;`                | latin small letter h with circumflex                                      |
| Ħ      | `&Hstrok;`               | latin capital letter h with stroke                                        |
| ħ      | `&hstrok;`               | latin small letter h with stroke                                          |
| Ĩ      | `&Itilde;`               | latin capital letter i with tilde                                         |
| ĩ      | `&itilde;`               | latin small letter i with tilde                                           |
| Ī      | `&Imacr;`                | latin capital letter i with macron                                        |
| ī      | `&imacr;`                | latin small letter i with macron                                          |
| Į      | `&Iogon;`                | latin capital letter i with ogonek                                        |
| į      | `&iogon;`                | latin small letter i with ogonek                                          |
| İ      | `&Idot;`                 | latin capital letter i with dot above                                     |
| ı      | `&imath;`                | latin small letter dotless i                                              |
| Ĳ      | `&IJlig;`                | latin capital ligature ij                                                 |
| ĳ      | `&ijlig;`                | latin small ligature ij                                                   |
| Ĵ      | `&Jcirc;`                | latin capital letter j with circumflex                                    |
| ĵ      | `&jcirc;`                | latin small letter j with circumflex                                      |
| Ķ      | `&Kcedil;`               | latin capital letter k with cedilla                                       |
| ķ      | `&kcedil;`               | latin small letter k with cedilla                                         |
| ĸ      | `&kgreen;`               | latin small letter kra                                                    |
| Ĺ      | `&Lacute;`               | latin capital letter l with acute                                         |
| ĺ      | `&lacute;`               | latin small letter l with acute                                           |
| Ļ      | `&Lcedil;`               | latin capital letter l with cedilla                                       |
| ļ      | `&lcedil;`               | latin small letter l with cedilla                                         |
| Ľ      | `&Lcaron;`               | latin capital letter l with caron                                         |
| ľ      | `&lcaron;`               | latin small letter l with caron                                           |
| Ŀ      | `&Lmidot;`               | latin capital letter l with middle dot                                    |
| ŀ      | `&lmidot;`               | latin small letter l with middle dot                                      |
| Ł      | `&Lstrok;`               | latin capital letter l with stroke                                        |
| ł      | `&lstrok;`               | latin small letter l with stroke                                          |
| Ń      | `&Nacute;`               | latin capital letter n with acute                                         |
| ń      | `&nacute;`               | latin small letter n with acute                                           |
| Ņ      | `&Ncedil;`               | latin capital letter n with cedilla                                       |
| ņ      | `&ncedil;`               | latin small letter n with cedilla                                         |
| Ň      | `&Ncaron;`               | latin capital letter n with caron                                         |
| ň      | `&ncaron;`               | latin small letter n with caron                                           |
| ŉ      | `&napos;`                | latin small letter n preceded by apostrophe                               |
| Ŋ      | `&ENG;`                  | latin capital letter eng                                                  |
| ŋ      | `&eng;`                  | latin small letter eng                                                    |
| Ō      | `&Omacr;`                | latin capital letter o with macron                                        |
| ō      | `&omacr;`                | latin small letter o with macron                                          |
| Ő      | `&Odblac;`               | latin capital letter o with double acute                                  |
| ő      | `&odblac;`               | latin small letter o with double acute                                    |
| Œ      | `&OElig;`                | latin capital ligature oe                                                 |
| œ      | `&oelig;`                | latin small ligature oe                                                   |
| Ŕ      | `&Racute;`               | latin capital letter r with acute                                         |
| ŕ      | `&racute;`               | latin small letter r with acute                                           |
| Ŗ      | `&Rcedil;`               | latin capital letter r with cedilla                                       |
| ŗ      | `&rcedil;`               | latin small letter r with cedilla                                         |
| Ř      | `&Rcaron;`               | latin capital letter r with caron                                         |
| ř      | `&rcaron;`               | latin small letter r with caron                                           |
| Ś      | `&Sacute;`               | latin capital letter s with acute                                         |
| ś      | `&sacute;`               | latin small letter s with acute                                           |
| Ŝ      | `&Scirc;`                | latin capital letter s with circumflex                                    |
| ŝ      | `&scirc;`                | latin small letter s with circumflex                                      |
| Ş      | `&Scedil;`               | latin capital letter s with cedilla                                       |
| ş      | `&scedil;`               | latin small letter s with cedilla                                         |
| Š      | `&Scaron;`               | latin capital letter s with caron                                         |
| š      | `&scaron;`               | latin small letter s with caron                                           |
| Ţ      | `&Tcedil;`               | latin capital letter t with cedilla                                       |
| ţ      | `&tcedil;`               | latin small letter t with cedilla                                         |
| Ť      | `&Tcaron;`               | latin capital letter t with caron                                         |
| ť      | `&tcaron;`               | latin small letter t with caron                                           |
| Ŧ      | `&Tstrok;`               | latin capital letter t with stroke                                        |
| ŧ      | `&tstrok;`               | latin small letter t with stroke                                          |
| Ũ      | `&Utilde;`               | latin capital letter u with tilde                                         |
| ũ      | `&utilde;`               | latin small letter u with tilde                                           |
| Ū      | `&Umacr;`                | latin capital letter u with macron                                        |
| ū      | `&umacr;`                | latin small letter u with macron                                          |
| Ŭ      | `&Ubreve;`               | latin capital letter u with breve                                         |
| ŭ      | `&ubreve;`               | latin small letter u with breve                                           |
| Ů      | `&Uring;`                | latin capital letter u with ring above                                    |
| ů      | `&uring;`                | latin small letter u with ring above                                      |
| Ű      | `&Udblac;`               | latin capital letter u with double acute                                  |
| ű      | `&udblac;`               | latin small letter u with double acute                                    |
| Ų      | `&Uogon;`                | latin capital letter u with ogonek                                        |
| ų      | `&uogon;`                | latin small letter u with ogonek                                          |
| Ŵ      | `&Wcirc;`                | latin capital letter w with circumflex                                    |
| ŵ      | `&wcirc;`                | latin small letter w with circumflex                                      |
| Ŷ      | `&Ycirc;`                | latin capital letter y with circumflex                                    |
| ŷ      | `&ycirc;`                | latin small letter y with circumflex                                      |
| Ÿ      | `&Yuml;`                 | latin capital letter y with diaeresis                                     |
| Ź      | `&Zacute;`               | latin capital letter z with acute                                         |
| ź      | `&zacute;`               | latin small letter z with acute                                           |
| Ż      | `&Zdot;`                 | latin capital letter z with dot above                                     |
| ż      | `&zdot;`                 | latin small letter z with dot above                                       |
| Ž      | `&Zcaron;`               | latin capital letter z with caron                                         |
| ž      | `&zcaron;`               | latin small letter z with caron                                           |
| ƒ      | `&fnof;`                 | latin small letter f with hook                                            |
| Ƶ      | `&imped;`                | latin capital letter z with stroke                                        |
| ǵ      | `&gacute;`               | latin small letter g with acute                                           |
| ȷ      | `&jmath;`                | latin small letter dotless j                                              |
| ˆ      | `&circ;`                 | modifier letter circumflex accent                                         |
| ˇ      | `&caron;`                | caron                                                                     |
| ˘      | `&breve;`                | breve                                                                     |
| ˙      | `&dot;`                  | dot above                                                                 |
| ˚      | `&ring;`                 | ring above                                                                |
| ˛      | `&ogon;`                 | ogonek                                                                    |
| ˜      | `&tilde;`                | small tilde                                                               |
| ˝      | `&dblac;`                | double acute accent                                                       |
| ̑       | `&DownBreve;`            | combining inverted breve                                                  |
| \_     | `&UnderBar;`             | combining low line                                                        |
| Α      | `&Alpha;`                | greek capital letter alpha                                                |
| Β      | `&Beta;`                 | greek capital letter beta                                                 |
| Γ      | `&Gamma;`                | greek capital letter gamma                                                |
| Δ      | `&Delta;`                | greek capital letter delta                                                |
| Ε      | `&Epsilon;`              | greek capital letter epsilon                                              |
| Ζ      | `&Zeta;`                 | greek capital letter zeta                                                 |
| Η      | `&Eta;`                  | greek capital letter eta                                                  |
| Θ      | `&Theta;`                | greek capital letter theta                                                |
| Ι      | `&Iota;`                 | greek capital letter iota                                                 |
| Κ      | `&Kappa;`                | greek capital letter kappa                                                |
| Λ      | `&Lambda;`               | greek capital letter lamda                                                |
| Μ      | `&Mu;`                   | greek capital letter mu                                                   |
| Ν      | `&Nu;`                   | greek capital letter nu                                                   |
| Ξ      | `&Xi;`                   | greek capital letter xi                                                   |
| Ο      | `&Omicron;`              | greek capital letter omicron                                              |
| Π      | `&Pi;`                   | greek capital letter pi                                                   |
| Ρ      | `&Rho;`                  | greek capital letter rho                                                  |
| Σ      | `&Sigma;`                | greek capital letter sigma                                                |
| Τ      | `&Tau;`                  | greek capital letter tau                                                  |
| Υ      | `&Upsilon;`              | greek capital letter upsilon                                              |
| Φ      | `&Phi;`                  | greek capital letter phi                                                  |
| Χ      | `&Chi;`                  | greek capital letter chi                                                  |
| Ψ      | `&Psi;`                  | greek capital letter psi                                                  |
| Ω      | `&Omega;`                | greek capital letter omega                                                |
| α      | `&alpha;`                | greek small letter alpha                                                  |
| β      | `&beta;`                 | greek small letter beta                                                   |
| γ      | `&gamma;`                | greek small letter gamma                                                  |
| δ      | `&delta;`                | greek small letter delta                                                  |
| ϵ      | `&epsiv;`                | greek small letter epsilon                                                |
| ζ      | `&zeta;`                 | greek small letter zeta                                                   |
| η      | `&eta;`                  | greek small letter eta                                                    |
| θ      | `&theta;`                | greek small letter theta                                                  |
| ι      | `&iota;`                 | greek small letter iota                                                   |
| κ      | `&kappa;`                | greek small letter kappa                                                  |
| λ      | `&lambda;`               | greek small letter lamda                                                  |
| μ      | `&mu;`                   | greek small letter mu                                                     |
| ν      | `&nu;`                   | greek small letter nu                                                     |
| ξ      | `&xi;`                   | greek small letter xi                                                     |
| ο      | `&omicron;`              | greek small letter omicron                                                |
| π      | `&pi;`                   | greek small letter pi                                                     |
| ρ      | `&rho;`                  | greek small letter rho                                                    |
| ς      | `&sigmav;`               | greek small letter final sigma                                            |
| σ      | `&sigma;`                | greek small letter sigma                                                  |
| τ      | `&tau;`                  | greek small letter tau                                                    |
| υ      | `&upsi;`                 | greek small letter upsilon                                                |
| φ      | `&phi;`                  | greek small letter phi                                                    |
| χ      | `&chi;`                  | greek small letter chi                                                    |
| ψ      | `&psi;`                  | greek small letter psi                                                    |
| ω      | `&omega;`                | greek small letter omega                                                  |
| ϑ      | `&thetav;`               | greek theta symbol                                                        |
| ϒ      | `&Upsi;`                 | greek upsilon with hook symbol                                            |
| ϕ      | `&straightphi;`          | greek phi symbol                                                          |
| ϖ      | `&piv;`                  | greek pi symbol                                                           |
| Ϝ      | `&Gammad;`               | greek letter digamma                                                      |
| ϝ      | `&gammad;`               | greek small letter digamma                                                |
| ϰ      | `&kappav;`               | greek kappa symbol                                                        |
| ϱ      | `&rhov;`                 | greek rho symbol                                                          |
| ε      | `&epsi;`                 | greek lunate epsilon symbol                                               |
| ϶      | `&bepsi;`                | greek reversed lunate epsilon symbol                                      |
| Ё      | `&IOcy;`                 | cyrillic capital letter io                                                |
| Ђ      | `&DJcy;`                 | cyrillic capital letter dje                                               |
| Ѓ      | `&GJcy;`                 | cyrillic capital letter gje                                               |
| Є      | `&Jukcy;`                | cyrillic capital letter ukrainian ie                                      |
| Ѕ      | `&DScy;`                 | cyrillic capital letter dze                                               |
| І      | `&Iukcy;`                | cyrillic capital letter byelorussian-ukrainian i                          |
| Ї      | `&YIcy;`                 | cyrillic capital letter yi                                                |
| Ј      | `&Jsercy;`               | cyrillic capital letter je                                                |
| Љ      | `&LJcy;`                 | cyrillic capital letter lje                                               |
| Њ      | `&NJcy;`                 | cyrillic capital letter nje                                               |
| Ћ      | `&TSHcy;`                | cyrillic capital letter tshe                                              |
| Ќ      | `&KJcy;`                 | cyrillic capital letter kje                                               |
| Ў      | `&Ubrcy;`                | cyrillic capital letter short u                                           |
| Џ      | `&DZcy;`                 | cyrillic capital letter dzhe                                              |
| А      | `&Acy;`                  | cyrillic capital letter a                                                 |
| Б      | `&Bcy;`                  | cyrillic capital letter be                                                |
| В      | `&Vcy;`                  | cyrillic capital letter ve                                                |
| Г      | `&Gcy;`                  | cyrillic capital letter ghe                                               |
| Д      | `&Dcy;`                  | cyrillic capital letter de                                                |
| Е      | `&IEcy;`                 | cyrillic capital letter ie                                                |
| Ж      | `&ZHcy;`                 | cyrillic capital letter zhe                                               |
| З      | `&Zcy;`                  | cyrillic capital letter ze                                                |
| И      | `&Icy;`                  | cyrillic capital letter i                                                 |
| Й      | `&Jcy;`                  | cyrillic capital letter short i                                           |
| К      | `&Kcy;`                  | cyrillic capital letter ka                                                |
| Л      | `&Lcy;`                  | cyrillic capital letter el                                                |
| М      | `&Mcy;`                  | cyrillic capital letter em                                                |
| Н      | `&Ncy;`                  | cyrillic capital letter en                                                |
| О      | `&Ocy;`                  | cyrillic capital letter o                                                 |
| П      | `&Pcy;`                  | cyrillic capital letter pe                                                |
| Р      | `&Rcy;`                  | cyrillic capital letter er                                                |
| С      | `&Scy;`                  | cyrillic capital letter es                                                |
| Т      | `&Tcy;`                  | cyrillic capital letter te                                                |
| У      | `&Ucy;`                  | cyrillic capital letter u                                                 |
| Ф      | `&Fcy;`                  | cyrillic capital letter ef                                                |
| Х      | `&KHcy;`                 | cyrillic capital letter ha                                                |
| Ц      | `&TScy;`                 | cyrillic capital letter tse                                               |
| Ч      | `&CHcy;`                 | cyrillic capital letter che                                               |
| Ш      | `&SHcy;`                 | cyrillic capital letter sha                                               |
| Щ      | `&SHCHcy;`               | cyrillic capital letter shcha                                             |
| Ъ      | `&HARDcy;`               | cyrillic capital letter hard sign                                         |
| Ы      | `&Ycy;`                  | cyrillic capital letter yeru                                              |
| Ь      | `&SOFTcy;`               | cyrillic capital letter soft sign                                         |
| Э      | `&Ecy;`                  | cyrillic capital letter e                                                 |
| Ю      | `&YUcy;`                 | cyrillic capital letter yu                                                |
| Я      | `&YAcy;`                 | cyrillic capital letter ya                                                |
| а      | `&acy;`                  | cyrillic small letter a                                                   |
| б      | `&bcy;`                  | cyrillic small letter be                                                  |
| в      | `&vcy;`                  | cyrillic small letter ve                                                  |
| г      | `&gcy;`                  | cyrillic small letter ghe                                                 |
| д      | `&dcy;`                  | cyrillic small letter de                                                  |
| е      | `&iecy;`                 | cyrillic small letter ie                                                  |
| ж      | `&zhcy;`                 | cyrillic small letter zhe                                                 |
| з      | `&zcy;`                  | cyrillic small letter ze                                                  |
| и      | `&icy;`                  | cyrillic small letter i                                                   |
| й      | `&jcy;`                  | cyrillic small letter short i                                             |
| к      | `&kcy;`                  | cyrillic small letter ka                                                  |
| л      | `&lcy;`                  | cyrillic small letter el                                                  |
| м      | `&mcy;`                  | cyrillic small letter em                                                  |
| н      | `&ncy;`                  | cyrillic small letter en                                                  |
| о      | `&ocy;`                  | cyrillic small letter o                                                   |
| п      | `&pcy;`                  | cyrillic small letter pe                                                  |
| р      | `&rcy;`                  | cyrillic small letter er                                                  |
| с      | `&scy;`                  | cyrillic small letter es                                                  |
| т      | `&tcy;`                  | cyrillic small letter te                                                  |
| у      | `&ucy;`                  | cyrillic small letter u                                                   |
| ф      | `&fcy;`                  | cyrillic small letter ef                                                  |
| х      | `&khcy;`                 | cyrillic small letter ha                                                  |
| ц      | `&tscy;`                 | cyrillic small letter tse                                                 |
| ч      | `&chcy;`                 | cyrillic small letter che                                                 |
| ш      | `&shcy;`                 | cyrillic small letter sha                                                 |
| щ      | `&shchcy;`               | cyrillic small letter shcha                                               |
| ъ      | `&hardcy;`               | cyrillic small letter hard sign                                           |
| ы      | `&ycy;`                  | cyrillic small letter yeru                                                |
| ь      | `&softcy;`               | cyrillic small letter soft sign                                           |
| э      | `&ecy;`                  | cyrillic small letter e                                                   |
| ю      | `&yucy;`                 | cyrillic small letter yu                                                  |
| я      | `&yacy;`                 | cyrillic small letter ya                                                  |
| ё      | `&iocy;`                 | cyrillic small letter io                                                  |
| ђ      | `&djcy;`                 | cyrillic small letter dje                                                 |
| ѓ      | `&gjcy;`                 | cyrillic small letter gje                                                 |
| є      | `&jukcy;`                | cyrillic small letter ukrainian ie                                        |
| ѕ      | `&dscy;`                 | cyrillic small letter dze                                                 |
| і      | `&iukcy;`                | cyrillic small letter byelorussian-ukrainian i                            |
| ї      | `&yicy;`                 | cyrillic small letter yi                                                  |
| ј      | `&jsercy;`               | cyrillic small letter je                                                  |
| љ      | `&ljcy;`                 | cyrillic small letter lje                                                 |
| њ      | `&njcy;`                 | cyrillic small letter nje                                                 |
| ћ      | `&tshcy;`                | cyrillic small letter tshe                                                |
| ќ      | `&kjcy;`                 | cyrillic small letter kje                                                 |
| ў      | `&ubrcy;`                | cyrillic small letter short u                                             |
| џ      | `&dzcy;`                 | cyrillic small letter dzhe                                                |
|        | `&ensp;`                 | en space                                                                  |
|        | `&emsp;`                 | em space                                                                  |
|        | `&emsp13;`               | three-per-em space                                                        |
|        | `&emsp14;`               | four-per-em space                                                         |
|        | `&numsp;`                | figure space                                                              |
|        | `&puncsp;`               | punctuation space                                                         |
|        | `&thinsp;`               | thin space                                                                |
|        | `&hairsp;`               | hair space                                                                |
| ​      | `&ZeroWidthSpace;`       | zero width space                                                          |
| ‌      | `&zwnj;`                 | zero width non-joiner                                                     |
| ‍      | `&zwj;`                  | zero width joiner                                                         |
| ‎      | `&lrm;`                  | left-to-right mark                                                        |
| ‏      | `&rlm;`                  | right-to-left mark                                                        |
| ‐      | `&hyphen;`               | hyphen                                                                    |
| –      | `&ndash;`                | en dash                                                                   |
| —      | `&mdash;`                | em dash                                                                   |
| ―      | `&horbar;`               | horizontal bar                                                            |
| ‖      | `&Verbar;`               | double vertical line                                                      |
| ‘      | `&lsquo;`                | left single quotation mark                                                |
| ’      | `&rsquo;`                | right single quotation mark                                               |
| ‚      | `&lsquor;`               | single low-9 quotation mark                                               |
| “      | `&ldquo;`                | left double quotation mark                                                |
| ”      | `&rdquo;`                | right double quotation mark                                               |
| „      | `&ldquor;`               | double low-9 quotation mark                                               |
| †      | `&dagger;`               | dagger                                                                    |
| ‡      | `&Dagger;`               | double dagger                                                             |
| •      | `&bull;`                 | bullet                                                                    |
| ‥      | `&nldr;`                 | two dot leader                                                            |
| …      | `&hellip;`               | horizontal ellipsis                                                       |
| ‰      | `&permil;`               | per mille sign                                                            |
| ‱      | `&pertenk;`              | per ten thousand sign                                                     |
| ′      | `&prime;`                | prime                                                                     |
| ″      | `&Prime;`                | double prime                                                              |
| ‴      | `&tprime;`               | triple prime                                                              |
| ‵      | `&bprime;`               | reversed prime                                                            |
| ‹      | `&lsaquo;`               | single left-pointing angle quotation mark                                 |
| ›      | `&rsaquo;`               | single right-pointing angle quotation mark                                |
| ‾      | `&oline;`                | overline                                                                  |
| ⁁      | `&caret;`                | caret insertion point                                                     |
| ⁃      | `&hybull;`               | hyphen bullet                                                             |
| ⁄      | `&frasl;`                | fraction slash                                                            |
| ⁏      | `&bsemi;`                | reversed semicolon                                                        |
| ⁗      | `&qprime;`               | quadruple prime                                                           |
|        | `&MediumSpace;`          | medium mathematical space                                                 |
| ⁠      | `&NoBreak;`              | word joiner                                                               |
| ⁡      | `&ApplyFunction;`        | function application                                                      |
| ⁢      | `&InvisibleTimes;`       | invisible times                                                           |
| ⁣      | `&InvisibleComma;`       | invisible separator                                                       |
| €      | `&euro;`                 | euro sign                                                                 |
| ⃛      | `&tdot;`                 | combining three dots above                                                |
| ⃜      | `&DotDot;`               | combining four dots above                                                 |
| ℂ      | `&Copf;`                 | double-struck capital c                                                   |
| ℅      | `&incare;`               | care of                                                                   |
| ℊ      | `&gscr;`                 | script small g                                                            |
| ℋ      | `&hamilt;`               | script capital h                                                          |
| ℌ      | `&Hfr;`                  | black-letter capital h                                                    |
| ℍ      | `&quaternions;`          | double-struck capital h                                                   |
| ℎ      | `&planckh;`              | planck constant                                                           |
| ℏ      | `&planck;`               | planck constant over two pi                                               |
| ℐ      | `&Iscr;`                 | script capital i                                                          |
| ℑ      | `&image;`                | black-letter capital i                                                    |
| ℒ      | `&Lscr;`                 | script capital l                                                          |
| ℓ      | `&ell;`                  | script small l                                                            |
| ℕ      | `&Nopf;`                 | double-struck capital n                                                   |
| №      | `&numero;`               | numero sign                                                               |
| ℗      | `&copysr;`               | sound recording copyright                                                 |
| ℘      | `&weierp;`               | script capital p                                                          |
| ℙ      | `&Popf;`                 | double-struck capital p                                                   |
| ℚ      | `&rationals;`            | double-struck capital q                                                   |
| ℛ      | `&Rscr;`                 | script capital r                                                          |
| ℜ      | `&real;`                 | black-letter capital r                                                    |
| ℝ      | `&reals;`                | double-struck capital r                                                   |
| ℞      | `&rx;`                   | prescription take                                                         |
| ™      | `&trade;`                | trade mark sign                                                           |
| ℤ      | `&integers;`             | double-struck capital z                                                   |
| Ω      | `&ohm;`                  | ohm sign                                                                  |
| ℧      | `&mho;`                  | inverted ohm sign                                                         |
| ℨ      | `&Zfr;`                  | black-letter capital z                                                    |
| ℩      | `&iiota;`                | turned greek small letter iota                                            |
| Å      | `&angst;`                | angstrom sign                                                             |
| ℬ      | `&bernou;`               | script capital b                                                          |
| ℭ      | `&Cfr;`                  | black-letter capital c                                                    |
| ℯ      | `&escr;`                 | script small e                                                            |
| ℰ      | `&Escr;`                 | script capital e                                                          |
| ℱ      | `&Fscr;`                 | script capital f                                                          |
| ℳ      | `&phmmat;`               | script capital m                                                          |
| ℴ      | `&order;`                | script small o                                                            |
| ℵ      | `&alefsym;`              | alef symbol                                                               |
| ℶ      | `&beth;`                 | bet symbol                                                                |
| ℷ      | `&gimel;`                | gimel symbol                                                              |
| ℸ      | `&daleth;`               | dalet symbol                                                              |
| ⅅ      | `&CapitalDifferentialD;` | double-struck italic capital d                                            |
| ⅆ      | `&DifferentialD;`        | double-struck italic small d                                              |
| ⅇ      | `&ExponentialE;`         | double-struck italic small e                                              |
| ⅈ      | `&ImaginaryI;`           | double-struck italic small i                                              |
| ⅓      | `&frac13;`               | vulgar fraction one third                                                 |
| ⅔      | `&frac23;`               | vulgar fraction two thirds                                                |
| ⅕      | `&frac15;`               | vulgar fraction one fifth                                                 |
| ⅖      | `&frac25;`               | vulgar fraction two fifths                                                |
| ⅗      | `&frac35;`               | vulgar fraction three fifths                                              |
| ⅘      | `&frac45;`               | vulgar fraction four fifths                                               |
| ⅙      | `&frac16;`               | vulgar fraction one sixth                                                 |
| ⅚      | `&frac56;`               | vulgar fraction five sixths                                               |
| ⅛      | `&frac18;`               | vulgar fraction one eighth                                                |
| ⅜      | `&frac38;`               | vulgar fraction three eighths                                             |
| ⅝      | `&frac58;`               | vulgar fraction five eighths                                              |
| ⅞      | `&frac78;`               | vulgar fraction seven eighths                                             |
| ←      | `&larr;`                 | leftwards arrow                                                           |
| ↑      | `&uarr;`                 | upwards arrow                                                             |
| →      | `&rarr;`                 | rightwards arrow                                                          |
| ↓      | `&darr;`                 | downwards arrow                                                           |
| ↔      | `&harr;`                 | left right arrow                                                          |
| ↕      | `&varr;`                 | up down arrow                                                             |
| ↖      | `&nwarr;`                | north west arrow                                                          |
| ↗      | `&nearr;`                | north east arrow                                                          |
| ↘      | `&searr;`                | south east arrow                                                          |
| ↙      | `&swarr;`                | south west arrow                                                          |
| ↚      | `&nlarr;`                | leftwards arrow with stroke                                               |
| ↛      | `&nrarr;`                | rightwards arrow with stroke                                              |
| ↝      | `&rarrw;`                | rightwards wave arrow                                                     |
| ↞      | `&Larr;`                 | leftwards two headed arrow                                                |
| ↟      | `&Uarr;`                 | upwards two headed arrow                                                  |
| ↠      | `&Rarr;`                 | rightwards two headed arrow                                               |
| ↡      | `&Darr;`                 | downwards two headed arrow                                                |
| ↢      | `&larrtl;`               | leftwards arrow with tail                                                 |
| ↣      | `&rarrtl;`               | rightwards arrow with tail                                                |
| ↤      | `&LeftTeeArrow;`         | leftwards arrow from bar                                                  |
| ↥      | `&UpTeeArrow;`           | upwards arrow from bar                                                    |
| ↦      | `&map;`                  | rightwards arrow from bar                                                 |
| ↧      | `&DownTeeArrow;`         | downwards arrow from bar                                                  |
| ↩      | `&larrhk;`               | leftwards arrow with hook                                                 |
| ↪      | `&rarrhk;`               | rightwards arrow with hook                                                |
| ↫      | `&larrlp;`               | leftwards arrow with loop                                                 |
| ↬      | `&rarrlp;`               | rightwards arrow with loop                                                |
| ↭      | `&harrw;`                | left right wave arrow                                                     |
| ↮      | `&nharr;`                | left right arrow with stroke                                              |
| ↰      | `&lsh;`                  | upwards arrow with tip leftwards                                          |
| ↱      | `&rsh;`                  | upwards arrow with tip rightwards                                         |
| ↲      | `&ldsh;`                 | downwards arrow with tip leftwards                                        |
| ↳      | `&rdsh;`                 | downwards arrow with tip rightwards                                       |
| ↵      | `&crarr;`                | downwards arrow with corner leftwards                                     |
| ↶      | `&cularr;`               | anticlockwise top semicircle arrow                                        |
| ↷      | `&curarr;`               | clockwise top semicircle arrow                                            |
| ↺      | `&olarr;`                | anticlockwise open circle arrow                                           |
| ↻      | `&orarr;`                | clockwise open circle arrow                                               |
| ↼      | `&lharu;`                | leftwards harpoon with barb upwards                                       |
| ↽      | `&lhard;`                | leftwards harpoon with barb downwards                                     |
| ↾      | `&uharr;`                | upwards harpoon with barb rightwards                                      |
| ↿      | `&uharl;`                | upwards harpoon with barb leftwards                                       |
| ⇀      | `&rharu;`                | rightwards harpoon with barb upwards                                      |
| ⇁      | `&rhard;`                | rightwards harpoon with barb downwards                                    |
| ⇂      | `&dharr;`                | downwards harpoon with barb rightwards                                    |
| ⇃      | `&dharl;`                | downwards harpoon with barb leftwards                                     |
| ⇄      | `&rlarr;`                | rightwards arrow over leftwards arrow                                     |
| ⇅      | `&udarr;`                | upwards arrow leftwards of downwards arrow                                |
| ⇆      | `&lrarr;`                | leftwards arrow over rightwards arrow                                     |
| ⇇      | `&llarr;`                | leftwards paired arrows                                                   |
| ⇈      | `&uuarr;`                | upwards paired arrows                                                     |
| ⇉      | `&rrarr;`                | rightwards paired arrows                                                  |
| ⇊      | `&ddarr;`                | downwards paired arrows                                                   |
| ⇋      | `&lrhar;`                | leftwards harpoon over rightwards harpoon                                 |
| ⇌      | `&rlhar;`                | rightwards harpoon over leftwards harpoon                                 |
| ⇍      | `&nlArr;`                | leftwards double arrow with stroke                                        |
| ⇎      | `&nhArr;`                | left right double arrow with stroke                                       |
| ⇏      | `&nrArr;`                | rightwards double arrow with stroke                                       |
| ⇐      | `&lArr;`                 | leftwards double arrow                                                    |
| ⇑      | `&uArr;`                 | upwards double arrow                                                      |
| ⇒      | `&rArr;`                 | rightwards double arrow                                                   |
| ⇓      | `&dArr;`                 | downwards double arrow                                                    |
| ⇔      | `&hArr;`                 | left right double arrow                                                   |
| ⇕      | `&vArr;`                 | up down double arrow                                                      |
| ⇖      | `&nwArr;`                | north west double arrow                                                   |
| ⇗      | `&neArr;`                | north east double arrow                                                   |
| ⇘      | `&seArr;`                | south east double arrow                                                   |
| ⇙      | `&swArr;`                | south west double arrow                                                   |
| ⇚      | `&lAarr;`                | leftwards triple arrow                                                    |
| ⇛      | `&rAarr;`                | rightwards triple arrow                                                   |
| ⇝      | `&zigrarr;`              | rightwards squiggle arrow                                                 |
| ⇤      | `&larrb;`                | leftwards arrow to bar                                                    |
| ⇥      | `&rarrb;`                | rightwards arrow to bar                                                   |
| ⇵      | `&duarr;`                | downwards arrow leftwards of upwards arrow                                |
| ⇽      | `&loarr;`                | leftwards open-headed arrow                                               |
| ⇾      | `&roarr;`                | rightwards open-headed arrow                                              |
| ⇿      | `&hoarr;`                | left right open-headed arrow                                              |
| ∀      | `&forall;`               | for all                                                                   |
| ∁      | `&comp;`                 | complement                                                                |
| ∂      | `&part;`                 | partial differential                                                      |
| ∃      | `&exist;`                | there exists                                                              |
| ∄      | `&nexist;`               | there does not exist                                                      |
| ∅      | `&empty;`                | empty set                                                                 |
| ∇      | `&nabla;`                | nabla                                                                     |
| ∈      | `&isin;`                 | element of                                                                |
| ∉      | `&notin;`                | not an element of                                                         |
| ∋      | `&niv;`                  | contains as member                                                        |
| ∌      | `&notni;`                | does not contain as member                                                |
| ∏      | `&prod;`                 | n-ary product                                                             |
| ∐      | `&coprod;`               | n-ary coproduct                                                           |
| ∑      | `&sum;`                  | n-ary summation                                                           |
| −      | `&minus;`                | minus sign                                                                |
| ∓      | `&mnplus;`               | minus-or-plus sign                                                        |
| ∔      | `&plusdo;`               | dot plus                                                                  |
| ∖      | `&setmn;`                | set minus                                                                 |
| ∗      | `&lowast;`               | asterisk operator                                                         |
| ∘      | `&compfn;`               | ring operator                                                             |
| √      | `&radic;`                | square root                                                               |
| ∝      | `&prop;`                 | proportional to                                                           |
| ∞      | `&infin;`                | infinity                                                                  |
| ∟      | `&angrt;`                | right angle                                                               |
| ∠      | `&ang;`                  | angle                                                                     |
| ∡      | `&angmsd;`               | measured angle                                                            |
| ∢      | `&angsph;`               | spherical angle                                                           |
| ∣      | `&mid;`                  | divides                                                                   |
| ∤      | `&nmid;`                 | does not divide                                                           |
| ∥      | `&par;`                  | parallel to                                                               |
| ∦      | `&npar;`                 | not parallel to                                                           |
| ∧      | `&and;`                  | logical and                                                               |
| ∨      | `&or;`                   | logical or                                                                |
| ∩      | `&cap;`                  | intersection                                                              |
| ∪      | `&cup;`                  | union                                                                     |
| ∫      | `&int;`                  | integral                                                                  |
| ∬      | `&Int;`                  | double integral                                                           |
| ∭      | `&tint;`                 | triple integral                                                           |
| ∮      | `&conint;`               | contour integral                                                          |
| ∯      | `&Conint;`               | surface integral                                                          |
| ∰      | `&Cconint;`              | volume integral                                                           |
| ∱      | `&cwint;`                | clockwise integral                                                        |
| ∲      | `&cwconint;`             | clockwise contour integral                                                |
| ∳      | `&awconint;`             | anticlockwise contour integral                                            |
| ∴      | `&there4;`               | therefore                                                                 |
| ∵      | `&becaus;`               | because                                                                   |
| ∶      | `&ratio;`                | ratio                                                                     |
| ∷      | `&Colon;`                | proportion                                                                |
| ∸      | `&minusd;`               | dot minus                                                                 |
| ∺      | `&mDDot;`                | geometric proportion                                                      |
| ∻      | `&homtht;`               | homothetic                                                                |
| ∼      | `&sim;`                  | tilde operator                                                            |
| ∽      | `&bsim;`                 | reversed tilde                                                            |
| ∾      | `&ac;`                   | inverted lazy s                                                           |
| ∿      | `&acd;`                  | sine wave                                                                 |
| ≀      | `&wreath;`               | wreath product                                                            |
| ≁      | `&nsim;`                 | not tilde                                                                 |
| ≂      | `&esim;`                 | minus tilde                                                               |
| ≃      | `&sime;`                 | asymptotically equal to                                                   |
| ≄      | `&nsime;`                | not asymptotically equal to                                               |
| ≅      | `&cong;`                 | approximately equal to                                                    |
| ≆      | `&simne;`                | approximately but not actually equal to                                   |
| ≇      | `&ncong;`                | neither approximately nor actually equal to                               |
| ≈      | `&asymp;`                | almost equal to                                                           |
| ≉      | `&nap;`                  | not almost equal to                                                       |
| ≊      | `&ape;`                  | almost equal or equal to                                                  |
| ≋      | `&apid;`                 | triple tilde                                                              |
| ≌      | `&bcong;`                | all equal to                                                              |
| ≍      | `&asympeq;`              | equivalent to                                                             |
| ≎      | `&bump;`                 | geometrically equivalent to                                               |
| ≏      | `&bumpe;`                | difference between                                                        |
| ≐      | `&esdot;`                | approaches the limit                                                      |
| ≑      | `&eDot;`                 | geometrically equal to                                                    |
| ≒      | `&efDot;`                | approximately equal to or the image of                                    |
| ≓      | `&erDot;`                | image of or approximately equal to                                        |
| ≔      | `&colone;`               | colon equals                                                              |
| ≕      | `&ecolon;`               | equals colon                                                              |
| ≖      | `&ecir;`                 | ring in equal to                                                          |
| ≗      | `&cire;`                 | ring equal to                                                             |
| ≙      | `&wedgeq;`               | estimates                                                                 |
| ≚      | `&veeeq;`                | equiangular to                                                            |
| ≜      | `&trie;`                 | delta equal to                                                            |
| ≟      | `&equest;`               | questioned equal to                                                       |
| ≠      | `&ne;`                   | not equal to                                                              |
| ≡      | `&equiv;`                | identical to                                                              |
| ≢      | `&nequiv;`               | not identical to                                                          |
| ≤      | `&le;`                   | less-than or equal to                                                     |
| ≥      | `&ge;`                   | greater-than or equal to                                                  |
| ≦      | `&lE;`                   | less-than over equal to                                                   |
| ≧      | `&gE;`                   | greater-than over equal to                                                |
| ≨      | `&lnE;`                  | less-than but not equal to                                                |
| ≩      | `&gnE;`                  | greater-than but not equal to                                             |
| ≪      | `&Lt;`                   | much less-than                                                            |
| ≫      | `&Gt;`                   | much greater-than                                                         |
| ≬      | `&twixt;`                | between                                                                   |
| ≭      | `&NotCupCap;`            | not equivalent to                                                         |
| ≮      | `&nlt;`                  | not less-than                                                             |
| ≯      | `&ngt;`                  | not greater-than                                                          |
| ≰      | `&nle;`                  | neither less-than nor equal to                                            |
| ≱      | `&nge;`                  | neither greater-than nor equal to                                         |
| ≲      | `&lsim;`                 | less-than or equivalent to                                                |
| ≳      | `&gsim;`                 | greater-than or equivalent to                                             |
| ≴      | `&nlsim;`                | neither less-than nor equivalent to                                       |
| ≵      | `&ngsim;`                | neither greater-than nor equivalent to                                    |
| ≶      | `&lg;`                   | less-than or greater-than                                                 |
| ≷      | `&gl;`                   | greater-than or less-than                                                 |
| ≸      | `&ntlg;`                 | neither less-than nor greater-than                                        |
| ≹      | `&ntgl;`                 | neither greater-than nor less-than                                        |
| ≺      | `&pr;`                   | precedes                                                                  |
| ≻      | `&sc;`                   | succeeds                                                                  |
| ≼      | `&prcue;`                | precedes or equal to                                                      |
| ≽      | `&sccue;`                | succeeds or equal to                                                      |
| ≾      | `&prsim;`                | precedes or equivalent to                                                 |
| ≿      | `&scsim;`                | succeeds or equivalent to                                                 |
| ⊀      | `&npr;`                  | does not precede                                                          |
| ⊁      | `&nsc;`                  | does not succeed                                                          |
| ⊂      | `&sub;`                  | subset of                                                                 |
| ⊃      | `&sup;`                  | superset of                                                               |
| ⊄      | `&nsub;`                 | not a subset of                                                           |
| ⊅      | `&nsup;`                 | not a superset of                                                         |
| ⊆      | `&sube;`                 | subset of or equal to                                                     |
| ⊇      | `&supe;`                 | superset of or equal to                                                   |
| ⊈      | `&nsube;`                | neither a subset of nor equal to                                          |
| ⊉      | `&nsupe;`                | neither a superset of nor equal to                                        |
| ⊊      | `&subne;`                | subset of with not equal to                                               |
| ⊋      | `&supne;`                | superset of with not equal to                                             |
| ⊍      | `&cupdot;`               | multiset multiplication                                                   |
| ⊎      | `&uplus;`                | multiset union                                                            |
| ⊏      | `&sqsub;`                | square image of                                                           |
| ⊐      | `&sqsup;`                | square original of                                                        |
| ⊑      | `&sqsube;`               | square image of or equal to                                               |
| ⊒      | `&sqsupe;`               | square original of or equal to                                            |
| ⊓      | `&sqcap;`                | square cap                                                                |
| ⊔      | `&sqcup;`                | square cup                                                                |
| ⊕      | `&oplus;`                | circled plus                                                              |
| ⊖      | `&ominus;`               | circled minus                                                             |
| ⊗      | `&otimes;`               | circled times                                                             |
| ⊘      | `&osol;`                 | circled division slash                                                    |
| ⊙      | `&odot;`                 | circled dot operator                                                      |
| ⊚      | `&ocir;`                 | circled ring operator                                                     |
| ⊛      | `&oast;`                 | circled asterisk operator                                                 |
| ⊝      | `&odash;`                | circled dash                                                              |
| ⊞      | `&plusb;`                | squared plus                                                              |
| ⊟      | `&minusb;`               | squared minus                                                             |
| ⊠      | `&timesb;`               | squared times                                                             |
| ⊡      | `&sdotb;`                | squared dot operator                                                      |
| ⊢      | `&vdash;`                | right tack                                                                |
| ⊣      | `&dashv;`                | left tack                                                                 |
| ⊤      | `&top;`                  | down tack                                                                 |
| ⊥      | `&bottom;`               | up tack                                                                   |
| ⊧      | `&models;`               | models                                                                    |
| ⊨      | `&vDash;`                | true                                                                      |
| ⊩      | `&Vdash;`                | forces                                                                    |
| ⊪      | `&Vvdash;`               | triple vertical bar right turnstile                                       |
| ⊫      | `&VDash;`                | double vertical bar double right turnstile                                |
| ⊬      | `&nvdash;`               | does not prove                                                            |
| ⊭      | `&nvDash;`               | not true                                                                  |
| ⊮      | `&nVdash;`               | does not force                                                            |
| ⊯      | `&nVDash;`               | negated double vertical bar double right turnstile                        |
| ⊰      | `&prurel;`               | precedes under relation                                                   |
| ⊲      | `&vltri;`                | normal subgroup of                                                        |
| ⊳      | `&vrtri;`                | contains as normal subgroup                                               |
| ⊴      | `&ltrie;`                | normal subgroup of or equal to                                            |
| ⊵      | `&rtrie;`                | contains as normal subgroup or equal to                                   |
| ⊶      | `&origof;`               | original of                                                               |
| ⊷      | `&imof;`                 | image of                                                                  |
| ⊸      | `&mumap;`                | multimap                                                                  |
| ⊹      | `&hercon;`               | hermitian conjugate matrix                                                |
| ⊺      | `&intcal;`               | intercalate                                                               |
| ⊻      | `&veebar;`               | xor                                                                       |
| ⊽      | `&barvee;`               | nor                                                                       |
| ⊾      | `&angrtvb;`              | right angle with arc                                                      |
| ⊿      | `&lrtri;`                | right triangle                                                            |
| ⋀      | `&xwedge;`               | n-ary logical and                                                         |
| ⋁      | `&xvee;`                 | n-ary logical or                                                          |
| ⋂      | `&xcap;`                 | n-ary intersection                                                        |
| ⋃      | `&xcup;`                 | n-ary union                                                               |
| ⋄      | `&diam;`                 | diamond operator                                                          |
| ⋅      | `&sdot;`                 | dot operator                                                              |
| ⋆      | `&sstarf;`               | star operator                                                             |
| ⋇      | `&divonx;`               | division times                                                            |
| ⋈      | `&bowtie;`               | bowtie                                                                    |
| ⋉      | `&ltimes;`               | left normal factor semidirect product                                     |
| ⋊      | `&rtimes;`               | right normal factor semidirect product                                    |
| ⋋      | `&lthree;`               | left semidirect product                                                   |
| ⋌      | `&rthree;`               | right semidirect product                                                  |
| ⋍      | `&bsime;`                | reversed tilde equals                                                     |
| ⋎      | `&cuvee;`                | curly logical or                                                          |
| ⋏      | `&cuwed;`                | curly logical and                                                         |
| ⋐      | `&Sub;`                  | double subset                                                             |
| ⋑      | `&Sup;`                  | double superset                                                           |
| ⋒      | `&Cap;`                  | double intersection                                                       |
| ⋓      | `&Cup;`                  | double union                                                              |
| ⋔      | `&fork;`                 | pitchfork                                                                 |
| ⋕      | `&epar;`                 | equal and parallel to                                                     |
| ⋖      | `&ltdot;`                | less-than with dot                                                        |
| ⋗      | `&gtdot;`                | greater-than with dot                                                     |
| ⋘      | `&Ll;`                   | very much less-than                                                       |
| ⋙      | `&Gg;`                   | very much greater-than                                                    |
| ⋚      | `&leg;`                  | less-than equal to or greater-than                                        |
| ⋛      | `&gel;`                  | greater-than equal to or less-than                                        |
| ⋞      | `&cuepr;`                | equal to or precedes                                                      |
| ⋟      | `&cuesc;`                | equal to or succeeds                                                      |
| ⋠      | `&nprcue;`               | does not precede or equal                                                 |
| ⋡      | `&nsccue;`               | does not succeed or equal                                                 |
| ⋢      | `&nsqsube;`              | not square image of or equal to                                           |
| ⋣      | `&nsqsupe;`              | not square original of or equal to                                        |
| ⋦      | `&lnsim;`                | less-than but not equivalent to                                           |
| ⋧      | `&gnsim;`                | greater-than but not equivalent to                                        |
| ⋨      | `&prnsim;`               | precedes but not equivalent to                                            |
| ⋩      | `&scnsim;`               | succeeds but not equivalent to                                            |
| ⋪      | `&nltri;`                | not normal subgroup of                                                    |
| ⋫      | `&nrtri;`                | does not contain as normal subgroup                                       |
| ⋬      | `&nltrie;`               | not normal subgroup of or equal to                                        |
| ⋭      | `&nrtrie;`               | does not contain as normal subgroup or equal                              |
| ⋮      | `&vellip;`               | vertical ellipsis                                                         |
| ⋯      | `&ctdot;`                | midline horizontal ellipsis                                               |
| ⋰      | `&utdot;`                | up right diagonal ellipsis                                                |
| ⋱      | `&dtdot;`                | down right diagonal ellipsis                                              |
| ⋲      | `&disin;`                | element of with long horizontal stroke                                    |
| ⋳      | `&isinsv;`               | element of with vertical bar at end of horizontal stroke                  |
| ⋴      | `&isins;`                | small element of with vertical bar at end of horizontal stroke            |
| ⋵      | `&isindot;`              | element of with dot above                                                 |
| ⋶      | `&notinvc;`              | element of with overbar                                                   |
| ⋷      | `&notinvb;`              | small element of with overbar                                             |
| ⋹      | `&isinE;`                | element of with two horizontal strokes                                    |
| ⋺      | `&nisd;`                 | contains with long horizontal stroke                                      |
| ⋻      | `&xnis;`                 | contains with vertical bar at end of horizontal stroke                    |
| ⋼      | `&nis;`                  | small contains with vertical bar at end of horizontal stroke              |
| ⋽      | `&notnivc;`              | contains with overbar                                                     |
| ⋾      | `&notnivb;`              | small contains with overbar                                               |
| ⌅      | `&barwed;`               | projective                                                                |
| ⌆      | `&Barwed;`               | perspective                                                               |
| ⌈      | `&lceil;`                | left ceiling                                                              |
| ⌉      | `&rceil;`                | right ceiling                                                             |
| ⌊      | `&lfloor;`               | left floor                                                                |
| ⌋      | `&rfloor;`               | right floor                                                               |
| ⌌      | `&drcrop;`               | bottom right crop                                                         |
| ⌍      | `&dlcrop;`               | bottom left crop                                                          |
| ⌎      | `&urcrop;`               | top right crop                                                            |
| ⌏      | `&ulcrop;`               | top left crop                                                             |
| ⌐      | `&bnot;`                 | reversed not sign                                                         |
| ⌒      | `&profline;`             | arc                                                                       |
| ⌓      | `&profsurf;`             | segment                                                                   |
| ⌕      | `&telrec;`               | telephone recorder                                                        |
| ⌖      | `&target;`               | position indicator                                                        |
| ⌜      | `&ulcorn;`               | top left corner                                                           |
| ⌝      | `&urcorn;`               | top right corner                                                          |
| ⌞      | `&dlcorn;`               | bottom left corner                                                        |
| ⌟      | `&drcorn;`               | bottom right corner                                                       |
| ⌢      | `&frown;`                | frown                                                                     |
| ⌣      | `&smile;`                | smile                                                                     |
| ⌭      | `&cylcty;`               | cylindricity                                                              |
| ⌮      | `&profalar;`             | all around-profile                                                        |
| ⌶      | `&topbot;`               | apl functional symbol i-beam                                              |
| ⌽      | `&ovbar;`                | apl functional symbol circle stile                                        |
| ⌿      | `&solbar;`               | apl functional symbol slash bar                                           |
| ⍼      | `&angzarr;`              | right angle with downwards zigzag arrow                                   |
| ⎰      | `&lmoust;`               | upper left or lower right curly bracket section                           |
| ⎱      | `&rmoust;`               | upper right or lower left curly bracket section                           |
| ⎴      | `&tbrk;`                 | top square bracket                                                        |
| ⎵      | `&bbrk;`                 | bottom square bracket                                                     |
| ⎶      | `&bbrktbrk;`             | bottom square bracket over top square bracket                             |
| ⏜      | `&OverParenthesis;`      | top parenthesis                                                           |
| ⏝      | `&UnderParenthesis;`     | bottom parenthesis                                                        |
| ⏞      | `&OverBrace;`            | top curly bracket                                                         |
| ⏟      | `&UnderBrace;`           | bottom curly bracket                                                      |
| ⏢      | `&trpezium;`             | white trapezium                                                           |
| ⏧      | `&elinters;`             | electrical intersection                                                   |
| ␣      | `&blank;`                | open box                                                                  |
| Ⓢ      | `&oS;`                   | circled latin capital letter s                                            |
| ─      | `&boxh;`                 | box drawings light horizontal                                             |
| │      | `&boxv;`                 | box drawings light vertical                                               |
| ┌      | `&boxdr;`                | box drawings light down and right                                         |
| ┐      | `&boxdl;`                | box drawings light down and left                                          |
| └      | `&boxur;`                | box drawings light up and right                                           |
| ┘      | `&boxul;`                | box drawings light up and left                                            |
| ├      | `&boxvr;`                | box drawings light vertical and right                                     |
| ┤      | `&boxvl;`                | box drawings light vertical and left                                      |
| ┬      | `&boxhd;`                | box drawings light down and horizontal                                    |
| ┴      | `&boxhu;`                | box drawings light up and horizontal                                      |
| ┼      | `&boxvh;`                | box drawings light vertical and horizontal                                |
| ═      | `&boxH;`                 | box drawings double horizontal                                            |
| ║      | `&boxV;`                 | box drawings double vertical                                              |
| ╒      | `&boxdR;`                | box drawings down single and right double                                 |
| ╓      | `&boxDr;`                | box drawings down double and right single                                 |
| ╔      | `&boxDR;`                | box drawings double down and right                                        |
| ╕      | `&boxdL;`                | box drawings down single and left double                                  |
| ╖      | `&boxDl;`                | box drawings down double and left single                                  |
| ╗      | `&boxDL;`                | box drawings double down and left                                         |
| ╘      | `&boxuR;`                | box drawings up single and right double                                   |
| ╙      | `&boxUr;`                | box drawings up double and right single                                   |
| ╚      | `&boxUR;`                | box drawings double up and right                                          |
| ╛      | `&boxuL;`                | box drawings up single and left double                                    |
| ╜      | `&boxUl;`                | box drawings up double and left single                                    |
| ╝      | `&boxUL;`                | box drawings double up and left                                           |
| ╞      | `&boxvR;`                | box drawings vertical single and right double                             |
| ╟      | `&boxVr;`                | box drawings vertical double and right single                             |
| ╠      | `&boxVR;`                | box drawings double vertical and right                                    |
| ╡      | `&boxvL;`                | box drawings vertical single and left double                              |
| ╢      | `&boxVl;`                | box drawings vertical double and left single                              |
| ╣      | `&boxVL;`                | box drawings double vertical and left                                     |
| ╤      | `&boxHd;`                | box drawings down single and horizontal double                            |
| ╥      | `&boxhD;`                | box drawings down double and horizontal single                            |
| ╦      | `&boxHD;`                | box drawings double down and horizontal                                   |
| ╧      | `&boxHu;`                | box drawings up single and horizontal double                              |
| ╨      | `&boxhU;`                | box drawings up double and horizontal single                              |
| ╩      | `&boxHU;`                | box drawings double up and horizontal                                     |
| ╪      | `&boxvH;`                | box drawings vertical single and horizontal double                        |
| ╫      | `&boxVh;`                | box drawings vertical double and horizontal single                        |
| ╬      | `&boxVH;`                | box drawings double vertical and horizontal                               |
| ▀      | `&uhblk;`                | upper half block                                                          |
| ▄      | `&lhblk;`                | lower half block                                                          |
| █      | `&block;`                | full block                                                                |
| ░      | `&blk14;`                | light shade                                                               |
| ▒      | `&blk12;`                | medium shade                                                              |
| ▓      | `&blk34;`                | dark shade                                                                |
| □      | `&squ;`                  | white square                                                              |
| ▪      | `&squf;`                 | black small square                                                        |
| ▫      | `&EmptyVerySmallSquare;` | white small square                                                        |
| ▭      | `&rect;`                 | white rectangle                                                           |
| ▮      | `&marker;`               | black vertical rectangle                                                  |
| ▱      | `&fltns;`                | white parallelogram                                                       |
| △      | `&xutri;`                | white up-pointing triangle                                                |
| ▴      | `&utrif;`                | black up-pointing small triangle                                          |
| ▵      | `&utri;`                 | white up-pointing small triangle                                          |
| ▸      | `&rtrif;`                | black right-pointing small triangle                                       |
| ▹      | `&rtri;`                 | white right-pointing small triangle                                       |
| ▽      | `&xdtri;`                | white down-pointing triangle                                              |
| ▾      | `&dtrif;`                | black down-pointing small triangle                                        |
| ▿      | `&dtri;`                 | white down-pointing small triangle                                        |
| ◂      | `&ltrif;`                | black left-pointing small triangle                                        |
| ◃      | `&ltri;`                 | white left-pointing small triangle                                        |
| ◊      | `&loz;`                  | lozenge                                                                   |
| ○      | `&cir;`                  | white circle                                                              |
| ◬      | `&tridot;`               | white up-pointing triangle with dot                                       |
| ◯      | `&xcirc;`                | large circle                                                              |
| ◸      | `&ultri;`                | upper left triangle                                                       |
| ◹      | `&urtri;`                | upper right triangle                                                      |
| ◺      | `&lltri;`                | lower left triangle                                                       |
| ◻      | `&EmptySmallSquare;`     | white medium square                                                       |
| ◼      | `&FilledSmallSquare;`    | black medium square                                                       |
| ★      | `&starf;`                | black star                                                                |
| ☆      | `&star;`                 | white star                                                                |
| ☎      | `&phone;`                | black telephone                                                           |
| ♀      | `&female;`               | female sign                                                               |
| ♂      | `&male;`                 | male sign                                                                 |
| ♠      | `&spades;`               | black spade suit                                                          |
| ♣      | `&clubs;`                | black club suit                                                           |
| ♥      | `&hearts;`               | black heart suit                                                          |
| ♦      | `&diams;`                | black diamond suit                                                        |
| ♪      | `&sung;`                 | eighth note                                                               |
| ♭      | `&flat;`                 | music flat sign                                                           |
| ♮      | `&natur;`                | music natural sign                                                        |
| ♯      | `&sharp;`                | music sharp sign                                                          |
| ✓      | `&check;`                | check mark                                                                |
| ✗      | `&cross;`                | ballot x                                                                  |
| ✠      | `&malt;`                 | maltese cross                                                             |
| ✶      | `&sext;`                 | six pointed black star                                                    |
| ❘      | `&VerticalSeparator;`    | light vertical bar                                                        |
| ❲      | `&lbbrk;`                | light left tortoise shell bracket ornament                                |
| ❳      | `&rbbrk;`                | light right tortoise shell bracket ornament                               |
| ⟦      | `&lobrk;`                | mathematical left white square bracket                                    |
| ⟧      | `&robrk;`                | mathematical right white square bracket                                   |
| ⟨      | `&lang;`                 | mathematical left angle bracket                                           |
| ⟩      | `&rang;`                 | mathematical right angle bracket                                          |
| ⟪      | `&Lang;`                 | mathematical left double angle bracket                                    |
| ⟫      | `&Rang;`                 | mathematical right double angle bracket                                   |
| ⟬      | `&loang;`                | mathematical left white tortoise shell bracket                            |
| ⟭      | `&roang;`                | mathematical right white tortoise shell bracket                           |
| ⟵      | `&xlarr;`                | long leftwards arrow                                                      |
| ⟶      | `&xrarr;`                | long rightwards arrow                                                     |
| ⟷      | `&xharr;`                | long left right arrow                                                     |
| ⟸      | `&xlArr;`                | long leftwards double arrow                                               |
| ⟹      | `&xrArr;`                | long rightwards double arrow                                              |
| ⟺      | `&xhArr;`                | long left right double arrow                                              |
| ⟼      | `&xmap;`                 | long rightwards arrow from bar                                            |
| ⟿      | `&dzigrarr;`             | long rightwards squiggle arrow                                            |
| ⤂      | `&nvlArr;`               | leftwards double arrow with vertical stroke                               |
| ⤃      | `&nvrArr;`               | rightwards double arrow with vertical stroke                              |
| ⤄      | `&nvHarr;`               | left right double arrow with vertical stroke                              |
| ⤅      | `&Map;`                  | rightwards two-headed arrow from bar                                      |
| ⤌      | `&lbarr;`                | leftwards double dash arrow                                               |
| ⤍      | `&rbarr;`                | rightwards double dash arrow                                              |
| ⤎      | `&lBarr;`                | leftwards triple dash arrow                                               |
| ⤏      | `&rBarr;`                | rightwards triple dash arrow                                              |
| ⤐      | `&RBarr;`                | rightwards two-headed triple dash arrow                                   |
| ⤑      | `&DDotrahd;`             | rightwards arrow with dotted stem                                         |
| ⤒      | `&UpArrowBar;`           | upwards arrow to bar                                                      |
| ⤓      | `&DownArrowBar;`         | downwards arrow to bar                                                    |
| ⤖      | `&Rarrtl;`               | rightwards two-headed arrow with tail                                     |
| ⤙      | `&latail;`               | leftwards arrow-tail                                                      |
| ⤚      | `&ratail;`               | rightwards arrow-tail                                                     |
| ⤛      | `&lAtail;`               | leftwards double arrow-tail                                               |
| ⤜      | `&rAtail;`               | rightwards double arrow-tail                                              |
| ⤝      | `&larrfs;`               | leftwards arrow to black diamond                                          |
| ⤞      | `&rarrfs;`               | rightwards arrow to black diamond                                         |
| ⤟      | `&larrbfs;`              | leftwards arrow from bar to black diamond                                 |
| ⤠      | `&rarrbfs;`              | rightwards arrow from bar to black diamond                                |
| ⤣      | `&nwarhk;`               | north west arrow with hook                                                |
| ⤤      | `&nearhk;`               | north east arrow with hook                                                |
| ⤥      | `&searhk;`               | south east arrow with hook                                                |
| ⤦      | `&swarhk;`               | south west arrow with hook                                                |
| ⤧      | `&nwnear;`               | north west arrow and north east arrow                                     |
| ⤨      | `&nesear;`               | north east arrow and south east arrow                                     |
| ⤩      | `&seswar;`               | south east arrow and south west arrow                                     |
| ⤪      | `&swnwar;`               | south west arrow and north west arrow                                     |
| ⤳      | `&rarrc;`                | wave arrow pointing directly right                                        |
| ⤵      | `&cudarrr;`              | arrow pointing rightwards then curving downwards                          |
| ⤶      | `&ldca;`                 | arrow pointing downwards then curving leftwards                           |
| ⤷      | `&rdca;`                 | arrow pointing downwards then curving rightwards                          |
| ⤸      | `&cudarrl;`              | right-side arc clockwise arrow                                            |
| ⤹      | `&larrpl;`               | left-side arc anticlockwise arrow                                         |
| ⤼      | `&curarrm;`              | top arc clockwise arrow with minus                                        |
| ⤽      | `&cularrp;`              | top arc anticlockwise arrow with plus                                     |
| ⥅      | `&rarrpl;`               | rightwards arrow with plus below                                          |
| ⥈      | `&harrcir;`              | left right arrow through small circle                                     |
| ⥉      | `&Uarrocir;`             | upwards two-headed arrow from small circle                                |
| ⥊      | `&lurdshar;`             | left barb up right barb down harpoon                                      |
| ⥋      | `&ldrushar;`             | left barb down right barb up harpoon                                      |
| ⥎      | `&LeftRightVector;`      | left barb up right barb up harpoon                                        |
| ⥏      | `&RightUpDownVector;`    | up barb right down barb right harpoon                                     |
| ⥐      | `&DownLeftRightVector;`  | left barb down right barb down harpoon                                    |
| ⥑      | `&LeftUpDownVector;`     | up barb left down barb left harpoon                                       |
| ⥒      | `&LeftVectorBar;`        | leftwards harpoon with barb up to bar                                     |
| ⥓      | `&RightVectorBar;`       | rightwards harpoon with barb up to bar                                    |
| ⥔      | `&RightUpVectorBar;`     | upwards harpoon with barb right to bar                                    |
| ⥕      | `&RightDownVectorBar;`   | downwards harpoon with barb right to bar                                  |
| ⥖      | `&DownLeftVectorBar;`    | leftwards harpoon with barb down to bar                                   |
| ⥗      | `&DownRightVectorBar;`   | rightwards harpoon with barb down to bar                                  |
| ⥘      | `&LeftUpVectorBar;`      | upwards harpoon with barb left to bar                                     |
| ⥙      | `&LeftDownVectorBar;`    | downwards harpoon with barb left to bar                                   |
| ⥚      | `&LeftTeeVector;`        | leftwards harpoon with barb up from bar                                   |
| ⥛      | `&RightTeeVector;`       | rightwards harpoon with barb up from bar                                  |
| ⥜      | `&RightUpTeeVector;`     | upwards harpoon with barb right from bar                                  |
| ⥝      | `&RightDownTeeVector;`   | downwards harpoon with barb right from bar                                |
| ⥞      | `&DownLeftTeeVector;`    | leftwards harpoon with barb down from bar                                 |
| ⥟      | `&DownRightTeeVector;`   | rightwards harpoon with barb down from bar                                |
| ⥠      | `&LeftUpTeeVector;`      | upwards harpoon with barb left from bar                                   |
| ⥡      | `&LeftDownTeeVector;`    | downwards harpoon with barb left from bar                                 |
| ⥢      | `&lHar;`                 | leftwards harpoon with barb up above leftwards harpoon with barb down     |
| ⥣      | `&uHar;`                 | upwards harpoon with barb left beside upwards harpoon with barb right     |
| ⥤      | `&rHar;`                 | rightwards harpoon with barb up above rightwards harpoon with barb down   |
| ⥥      | `&dHar;`                 | downwards harpoon with barb left beside downwards harpoon with barb right |
| ⥦      | `&luruhar;`              | leftwards harpoon with barb up above rightwards harpoon with barb up      |
| ⥧      | `&ldrdhar;`              | leftwards harpoon with barb down above rightwards harpoon with barb down  |
| ⥨      | `&ruluhar;`              | rightwards harpoon with barb up above leftwards harpoon with barb up      |
| ⥩      | `&rdldhar;`              | rightwards harpoon with barb down above leftwards harpoon with barb down  |
| ⥪      | `&lharul;`               | leftwards harpoon with barb up above long dash                            |
| ⥫      | `&llhard;`               | leftwards harpoon with barb down below long dash                          |
| ⥬      | `&rharul;`               | rightwards harpoon with barb up above long dash                           |
| ⥭      | `&lrhard;`               | rightwards harpoon with barb down below long dash                         |
| ⥮      | `&udhar;`                | upwards harpoon with barb left beside downwards harpoon with barb right   |
| ⥯      | `&duhar;`                | downwards harpoon with barb left beside upwards harpoon with barb right   |
| ⥰      | `&RoundImplies;`         | right double arrow with rounded head                                      |
| ⥱      | `&erarr;`                | equals sign above rightwards arrow                                        |
| ⥲      | `&simrarr;`              | tilde operator above rightwards arrow                                     |
| ⥳      | `&larrsim;`              | leftwards arrow above tilde operator                                      |
| ⥴      | `&rarrsim;`              | rightwards arrow above tilde operator                                     |
| ⥵      | `&rarrap;`               | rightwards arrow above almost equal to                                    |
| ⥶      | `&ltlarr;`               | less-than above leftwards arrow                                           |
| ⥸      | `&gtrarr;`               | greater-than above rightwards arrow                                       |
| ⥹      | `&subrarr;`              | subset above rightwards arrow                                             |
| ⥻      | `&suplarr;`              | superset above leftwards arrow                                            |
| ⥼      | `&lfisht;`               | left fish tail                                                            |
| ⥽      | `&rfisht;`               | right fish tail                                                           |
| ⥾      | `&ufisht;`               | up fish tail                                                              |
| ⥿      | `&dfisht;`               | down fish tail                                                            |
| ⦅      | `&lopar;`                | left white parenthesis                                                    |
| ⦆      | `&ropar;`                | right white parenthesis                                                   |
| ⦋      | `&lbrke;`                | left square bracket with underbar                                         |
| ⦌      | `&rbrke;`                | right square bracket with underbar                                        |
| ⦍      | `&lbrkslu;`              | left square bracket with tick in top corner                               |
| ⦎      | `&rbrksld;`              | right square bracket with tick in bottom corner                           |
| ⦏      | `&lbrksld;`              | left square bracket with tick in bottom corner                            |
| ⦐      | `&rbrkslu;`              | right square bracket with tick in top corner                              |
| ⦑      | `&langd;`                | left angle bracket with dot                                               |
| ⦒      | `&rangd;`                | right angle bracket with dot                                              |
| ⦓      | `&lparlt;`               | left arc less-than bracket                                                |
| ⦔      | `&rpargt;`               | right arc greater-than bracket                                            |
| ⦕      | `&gtlPar;`               | double left arc greater-than bracket                                      |
| ⦖      | `&ltrPar;`               | double right arc less-than bracket                                        |
| ⦚      | `&vzigzag;`              | vertical zigzag line                                                      |
| ⦜      | `&vangrt;`               | right angle variant with square                                           |
| ⦝      | `&angrtvbd;`             | measured right angle with dot                                             |
| ⦤      | `&ange;`                 | angle with underbar                                                       |
| ⦥      | `&range;`                | reversed angle with underbar                                              |
| ⦦      | `&dwangle;`              | oblique angle opening up                                                  |
| ⦧      | `&uwangle;`              | oblique angle opening down                                                |
| ⦨      | `&angmsdaa;`             | measured angle with open arm ending in arrow pointing up and right        |
| ⦩      | `&angmsdab;`             | measured angle with open arm ending in arrow pointing up and left         |
| ⦪      | `&angmsdac;`             | measured angle with open arm ending in arrow pointing down and right      |
| ⦫      | `&angmsdad;`             | measured angle with open arm ending in arrow pointing down and left       |
| ⦬      | `&angmsdae;`             | measured angle with open arm ending in arrow pointing right and up        |
| ⦭      | `&angmsdaf;`             | measured angle with open arm ending in arrow pointing left and up         |
| ⦮      | `&angmsdag;`             | measured angle with open arm ending in arrow pointing right and down      |
| ⦯      | `&angmsdah;`             | measured angle with open arm ending in arrow pointing left and down       |
| ⦰      | `&bemptyv;`              | reversed empty set                                                        |
| ⦱      | `&demptyv;`              | empty set with overbar                                                    |
| ⦲      | `&cemptyv;`              | empty set with small circle above                                         |
| ⦳      | `&raemptyv;`             | empty set with right arrow above                                          |
| ⦴      | `&laemptyv;`             | empty set with left arrow above                                           |
| ⦵      | `&ohbar;`                | circle with horizontal bar                                                |
| ⦶      | `&omid;`                 | circled vertical bar                                                      |
| ⦷      | `&opar;`                 | circled parallel                                                          |
| ⦹      | `&operp;`                | circled perpendicular                                                     |
| ⦻      | `&olcross;`              | circle with superimposed x                                                |
| ⦼      | `&odsold;`               | circled anticlockwise-rotated division sign                               |
| ⦾      | `&olcir;`                | circled white bullet                                                      |
| ⦿      | `&ofcir;`                | circled bullet                                                            |
| ⧀      | `&olt;`                  | circled less-than                                                         |
| ⧁      | `&ogt;`                  | circled greater-than                                                      |
| ⧂      | `&cirscir;`              | circle with small circle to the right                                     |
| ⧃      | `&cirE;`                 | circle with two horizontal strokes to the right                           |
| ⧄      | `&solb;`                 | squared rising diagonal slash                                             |
| ⧅      | `&bsolb;`                | squared falling diagonal slash                                            |
| ⧉      | `&boxbox;`               | two joined squares                                                        |
| ⧍      | `&trisb;`                | triangle with serifs at bottom                                            |
| ⧎      | `&rtriltri;`             | right triangle above left triangle                                        |
| ⧏      | `&LeftTriangleBar;`      | left triangle beside vertical bar                                         |
| ⧐      | `&RightTriangleBar;`     | vertical bar beside right triangle                                        |
| ∽      | `&race;`                 | left double wiggly fence                                                  |
| ⧜      | `&iinfin;`               | incomplete infinity                                                       |
| ⧝      | `&infintie;`             | tie over infinity                                                         |
| ⧞      | `&nvinfin;`              | infinity negated with vertical bar                                        |
| ⧣      | `&eparsl;`               | equals sign and slanted parallel                                          |
| ⧤      | `&smeparsl;`             | equals sign and slanted parallel with tilde above                         |
| ⧥      | `&eqvparsl;`             | identical to and slanted parallel                                         |
| ⧫      | `&lozf;`                 | black lozenge                                                             |
| ⧴      | `&RuleDelayed;`          | rule-delayed                                                              |
| ⧶      | `&dsol;`                 | solidus with overbar                                                      |
| ⨀      | `&xodot;`                | n-ary circled dot operator                                                |
| ⨁      | `&xoplus;`               | n-ary circled plus operator                                               |
| ⨂      | `&xotime;`               | n-ary circled times operator                                              |
| ⨄      | `&xuplus;`               | n-ary union operator with plus                                            |
| ⨆      | `&xsqcup;`               | n-ary square union operator                                               |
| ⨌      | `&qint;`                 | quadruple integral operator                                               |
| ⨍      | `&fpartint;`             | finite part integral                                                      |
| ⨐      | `&cirfnint;`             | circulation function                                                      |
| ⨑      | `&awint;`                | anticlockwise integration                                                 |
| ⨒      | `&rppolint;`             | line integration with rectangular path around pole                        |
| ⨓      | `&scpolint;`             | line integration with semicircular path around pole                       |
| ⨔      | `&npolint;`              | line integration not including the pole                                   |
| ⨕      | `&pointint;`             | integral around a point operator                                          |
| ⨖      | `&quatint;`              | quaternion integral operator                                              |
| ⨗      | `&intlarhk;`             | integral with leftwards arrow with hook                                   |
| ⨢      | `&pluscir;`              | plus sign with small circle above                                         |
| ⨣      | `&plusacir;`             | plus sign with circumflex accent above                                    |
| ⨤      | `&simplus;`              | plus sign with tilde above                                                |
| ⨥      | `&plusdu;`               | plus sign with dot below                                                  |
| ⨦      | `&plussim;`              | plus sign with tilde below                                                |
| ⨧      | `&plustwo;`              | plus sign with subscript two                                              |
| ⨩      | `&mcomma;`               | minus sign with comma above                                               |
| ⨪      | `&minusdu;`              | minus sign with dot below                                                 |
| ⨭      | `&loplus;`               | plus sign in left half circle                                             |
| ⨮      | `&roplus;`               | plus sign in right half circle                                            |
| ⨯      | `&Cross;`                | vector or cross product                                                   |
| ⨰      | `&timesd;`               | multiplication sign with dot above                                        |
| ⨱      | `&timesbar;`             | multiplication sign with underbar                                         |
| ⨳      | `&smashp;`               | smash product                                                             |
| ⨴      | `&lotimes;`              | multiplication sign in left half circle                                   |
| ⨵      | `&rotimes;`              | multiplication sign in right half circle                                  |
| ⨶      | `&otimesas;`             | circled multiplication sign with circumflex accent                        |
| ⨷      | `&Otimes;`               | multiplication sign in double circle                                      |
| ⨸      | `&odiv;`                 | circled division sign                                                     |
| ⨹      | `&triplus;`              | plus sign in triangle                                                     |
| ⨺      | `&triminus;`             | minus sign in triangle                                                    |
| ⨻      | `&tritime;`              | multiplication sign in triangle                                           |
| ⨼      | `&iprod;`                | interior product                                                          |
| ⨿      | `&amalg;`                | amalgamation or coproduct                                                 |
| ⩀      | `&capdot;`               | intersection with dot                                                     |
| ⩂      | `&ncup;`                 | union with overbar                                                        |
| ⩃      | `&ncap;`                 | intersection with overbar                                                 |
| ⩄      | `&capand;`               | intersection with logical and                                             |
| ⩅      | `&cupor;`                | union with logical or                                                     |
| ⩆      | `&cupcap;`               | union above intersection                                                  |
| ⩇      | `&capcup;`               | intersection above union                                                  |
| ⩈      | `&cupbrcap;`             | union above bar above intersection                                        |
| ⩉      | `&capbrcup;`             | intersection above bar above union                                        |
| ⩊      | `&cupcup;`               | union beside and joined with union                                        |
| ⩋      | `&capcap;`               | intersection beside and joined with intersection                          |
| ⩌      | `&ccups;`                | closed union with serifs                                                  |
| ⩍      | `&ccaps;`                | closed intersection with serifs                                           |
| ⩐      | `&ccupssm;`              | closed union with serifs and smash product                                |
| ⩓      | `&And;`                  | double logical and                                                        |
| ⩔      | `&Or;`                   | double logical or                                                         |
| ⩕      | `&andand;`               | two intersecting logical and                                              |
| ⩖      | `&oror;`                 | two intersecting logical or                                               |
| ⩗      | `&orslope;`              | sloping large or                                                          |
| ⩘      | `&andslope;`             | sloping large and                                                         |
| ⩚      | `&andv;`                 | logical and with middle stem                                              |
| ⩛      | `&orv;`                  | logical or with middle stem                                               |
| ⩜      | `&andd;`                 | logical and with horizontal dash                                          |
| ⩝      | `&ord;`                  | logical or with horizontal dash                                           |
| ⩟      | `&wedbar;`               | logical and with underbar                                                 |
| ⩦      | `&sdote;`                | equals sign with dot below                                                |
| ⩪      | `&simdot;`               | tilde operator with dot above                                             |
| ⩭      | `&congdot;`              | congruent with dot above                                                  |
| ⩮      | `&easter;`               | equals with asterisk                                                      |
| ⩯      | `&apacir;`               | almost equal to with circumflex accent                                    |
| ⩰      | `&apE;`                  | approximately equal or equal to                                           |
| ⩱      | `&eplus;`                | equals sign above plus sign                                               |
| ⩲      | `&pluse;`                | plus sign above equals sign                                               |
| ⩳      | `&Esim;`                 | equals sign above tilde operator                                          |
| ⩴      | `&Colone;`               | double colon equal                                                        |
| ⩵      | `&Equal;`                | two consecutive equals signs                                              |
| ⩷      | `&eDDot;`                | equals sign with two dots above and two dots below                        |
| ⩸      | `&equivDD;`              | equivalent with four dots above                                           |
| ⩹      | `&ltcir;`                | less-than with circle inside                                              |
| ⩺      | `&gtcir;`                | greater-than with circle inside                                           |
| ⩻      | `&ltquest;`              | less-than with question mark above                                        |
| ⩼      | `&gtquest;`              | greater-than with question mark above                                     |
| ⩽      | `&les;`                  | less-than or slanted equal to                                             |
| ⩾      | `&ges;`                  | greater-than or slanted equal to                                          |
| ⩿      | `&lesdot;`               | less-than or slanted equal to with dot inside                             |
| ⪀      | `&gesdot;`               | greater-than or slanted equal to with dot inside                          |
| ⪁      | `&lesdoto;`              | less-than or slanted equal to with dot above                              |
| ⪂      | `&gesdoto;`              | greater-than or slanted equal to with dot above                           |
| ⪃      | `&lesdotor;`             | less-than or slanted equal to with dot above right                        |
| ⪄      | `&gesdotol;`             | greater-than or slanted equal to with dot above left                      |
| ⪅      | `&lap;`                  | less-than or approximate                                                  |
| ⪆      | `&gap;`                  | greater-than or approximate                                               |
| ⪇      | `&lne;`                  | less-than and single-line not equal to                                    |
| ⪈      | `&gne;`                  | greater-than and single-line not equal to                                 |
| ⪉      | `&lnap;`                 | less-than and not approximate                                             |
| ⪊      | `&gnap;`                 | greater-than and not approximate                                          |
| ⪋      | `&lEg;`                  | less-than above double-line equal above greater-than                      |
| ⪌      | `&gEl;`                  | greater-than above double-line equal above less-than                      |
| ⪍      | `&lsime;`                | less-than above similar or equal                                          |
| ⪎      | `&gsime;`                | greater-than above similar or equal                                       |
| ⪏      | `&lsimg;`                | less-than above similar above greater-than                                |
| ⪐      | `&gsiml;`                | greater-than above similar above less-than                                |
| ⪑      | `&lgE;`                  | less-than above greater-than above double-line equal                      |
| ⪒      | `&glE;`                  | greater-than above less-than above double-line equal                      |
| ⪓      | `&lesges;`               | less-than above slanted equal above greater-than above slanted equal      |
| ⪔      | `&gesles;`               | greater-than above slanted equal above less-than above slanted equal      |
| ⪕      | `&els;`                  | slanted equal to or less-than                                             |
| ⪖      | `&egs;`                  | slanted equal to or greater-than                                          |
| ⪗      | `&elsdot;`               | slanted equal to or less-than with dot inside                             |
| ⪘      | `&egsdot;`               | slanted equal to or greater-than with dot inside                          |
| ⪙      | `&el;`                   | double-line equal to or less-than                                         |
| ⪚      | `&eg;`                   | double-line equal to or greater-than                                      |
| ⪝      | `&siml;`                 | similar or less-than                                                      |
| ⪞      | `&simg;`                 | similar or greater-than                                                   |
| ⪟      | `&simlE;`                | similar above less-than above equals sign                                 |
| ⪠      | `&simgE;`                | similar above greater-than above equals sign                              |
| ⪡      | `&LessLess;`             | double nested less-than                                                   |
| ⪢      | `&GreaterGreater;`       | double nested greater-than                                                |
| ⪤      | `&glj;`                  | greater-than overlapping less-than                                        |
| ⪥      | `&gla;`                  | greater-than beside less-than                                             |
| ⪦      | `&ltcc;`                 | less-than closed by curve                                                 |
| ⪧      | `&gtcc;`                 | greater-than closed by curve                                              |
| ⪨      | `&lescc;`                | less-than closed by curve above slanted equal                             |
| ⪩      | `&gescc;`                | greater-than closed by curve above slanted equal                          |
| ⪪      | `&smt;`                  | smaller than                                                              |
| ⪫      | `&lat;`                  | larger than                                                               |
| ⪬      | `&smte;`                 | smaller than or equal to                                                  |
| ⪭      | `&late;`                 | larger than or equal to                                                   |
| ⪮      | `&bumpE;`                | equals sign with bumpy above                                              |
| ⪯      | `&pre;`                  | precedes above single-line equals sign                                    |
| ⪰      | `&sce;`                  | succeeds above single-line equals sign                                    |
| ⪳      | `&prE;`                  | precedes above equals sign                                                |
| ⪴      | `&scE;`                  | succeeds above equals sign                                                |
| ⪵      | `&prnE;`                 | precedes above not equal to                                               |
| ⪶      | `&scnE;`                 | succeeds above not equal to                                               |
| ⪷      | `&prap;`                 | precedes above almost equal to                                            |
| ⪸      | `&scap;`                 | succeeds above almost equal to                                            |
| ⪹      | `&prnap;`                | precedes above not almost equal to                                        |
| ⪺      | `&scnap;`                | succeeds above not almost equal to                                        |
| ⪻      | `&Pr;`                   | double precedes                                                           |
| ⪼      | `&Sc;`                   | double succeeds                                                           |
| ⪽      | `&subdot;`               | subset with dot                                                           |
| ⪾      | `&supdot;`               | superset with dot                                                         |
| ⪿      | `&subplus;`              | subset with plus sign below                                               |
| ⫀      | `&supplus;`              | superset with plus sign below                                             |
| ⫁      | `&submult;`              | subset with multiplication sign below                                     |
| ⫂      | `&supmult;`              | superset with multiplication sign below                                   |
| ⫃      | `&subedot;`              | subset of or equal to with dot above                                      |
| ⫄      | `&supedot;`              | superset of or equal to with dot above                                    |
| ⫅      | `&subE;`                 | subset of above equals sign                                               |
| ⫆      | `&supE;`                 | superset of above equals sign                                             |
| ⫇      | `&subsim;`               | subset of above tilde operator                                            |
| ⫈      | `&supsim;`               | superset of above tilde operator                                          |
| ⫋      | `&subnE;`                | subset of above not equal to                                              |
| ⫌      | `&supnE;`                | superset of above not equal to                                            |
| ⫏      | `&csub;`                 | closed subset                                                             |
| ⫐      | `&csup;`                 | closed superset                                                           |
| ⫑      | `&csube;`                | closed subset or equal to                                                 |
| ⫒      | `&csupe;`                | closed superset or equal to                                               |
| ⫓      | `&subsup;`               | subset above superset                                                     |
| ⫔      | `&supsub;`               | superset above subset                                                     |
| ⫕      | `&subsub;`               | subset above subset                                                       |
| ⫖      | `&supsup;`               | superset above superset                                                   |
| ⫗      | `&suphsub;`              | superset beside subset                                                    |
| ⫘      | `&supdsub;`              | superset beside and joined by dash with subset                            |
| ⫙      | `&forkv;`                | element of opening downwards                                              |
| ⫚      | `&topfork;`              | pitchfork with tee top                                                    |
| ⫛      | `&mlcp;`                 | transversal intersection                                                  |
| ⫤      | `&Dashv;`                | vertical bar double left turnstile                                        |
| ⫦      | `&Vdashl;`               | long dash from left member of double vertical                             |
| ⫧      | `&Barv;`                 | short down tack with overbar                                              |
| ⫨      | `&vBar;`                 | short up tack with underbar                                               |
| ⫩      | `&vBarv;`                | short up tack above short down tack                                       |
| ⫫      | `&Vbar;`                 | double up tack                                                            |
| ⫬      | `&Not;`                  | double stroke not sign                                                    |
| ⫭      | `&bNot;`                 | reversed double stroke not sign                                           |
| ⫮      | `&rnmid;`                | does not divide with reversed negation slash                              |
| ⫯      | `&cirmid;`               | vertical line with circle above                                           |
| ⫰      | `&midcir;`               | vertical line with circle below                                           |
| ⫱      | `&topcir;`               | down tack with circle below                                               |
| ⫲      | `&nhpar;`                | parallel with horizontal stroke                                           |
| ⫳      | `&parsim;`               | parallel with tilde operator                                              |
| ⫽      | `&parsl;`                | double solidus operator                                                   |
| ﬀ      | `&fflig;`                | latin small ligature ff                                                   |
| ﬁ      | `&filig;`                | latin small ligature fi                                                   |
| ﬂ      | `&fllig;`                | latin small ligature fl                                                   |
| ﬃ      | `&ffilig;`               | latin small ligature ffi                                                  |
| ﬄ      | `&ffllig;`               | latin small ligature ffl                                                  |
| 𝒜      | `&Ascr;`                 | mathematical script capital a                                             |
| 𝒞      | `&Cscr;`                 | mathematical script capital c                                             |
| 𝒟      | `&Dscr;`                 | mathematical script capital d                                             |
| 𝒢      | `&Gscr;`                 | mathematical script capital g                                             |
| 𝒥      | `&Jscr;`                 | mathematical script capital j                                             |
| 𝒦      | `&Kscr;`                 | mathematical script capital k                                             |
| 𝒩      | `&Nscr;`                 | mathematical script capital n                                             |
| 𝒪      | `&Oscr;`                 | mathematical script capital o                                             |
| 𝒫      | `&Pscr;`                 | mathematical script capital p                                             |
| 𝒬      | `&Qscr;`                 | mathematical script capital q                                             |
| 𝒮      | `&Sscr;`                 | mathematical script capital s                                             |
| 𝒯      | `&Tscr;`                 | mathematical script capital t                                             |
| 𝒰      | `&Uscr;`                 | mathematical script capital u                                             |
| 𝒱      | `&Vscr;`                 | mathematical script capital v                                             |
| 𝒲      | `&Wscr;`                 | mathematical script capital w                                             |
| 𝒳      | `&Xscr;`                 | mathematical script capital x                                             |
| 𝒴      | `&Yscr;`                 | mathematical script capital y                                             |
| 𝒵      | `&Zscr;`                 | mathematical script capital z                                             |
| 𝒶      | `&ascr;`                 | mathematical script small a                                               |
| 𝒷      | `&bscr;`                 | mathematical script small b                                               |
| 𝒸      | `&cscr;`                 | mathematical script small c                                               |
| 𝒹      | `&dscr;`                 | mathematical script small d                                               |
| 𝒻      | `&fscr;`                 | mathematical script small f                                               |
| 𝒽      | `&hscr;`                 | mathematical script small h                                               |
| 𝒾      | `&iscr;`                 | mathematical script small i                                               |
| 𝒿      | `&jscr;`                 | mathematical script small j                                               |
| 𝓀      | `&kscr;`                 | mathematical script small k                                               |
| 𝓁      | `&lscr;`                 | mathematical script small l                                               |
| 𝓂      | `&mscr;`                 | mathematical script small m                                               |
| 𝓃      | `&nscr;`                 | mathematical script small n                                               |
| 𝓅      | `&pscr;`                 | mathematical script small p                                               |
| 𝓆      | `&qscr;`                 | mathematical script small q                                               |
| 𝓇      | `&rscr;`                 | mathematical script small r                                               |
| 𝓈      | `&sscr;`                 | mathematical script small s                                               |
| 𝓉      | `&tscr;`                 | mathematical script small t                                               |
| 𝓊      | `&uscr;`                 | mathematical script small u                                               |
| 𝓋      | `&vscr;`                 | mathematical script small v                                               |
| 𝓌      | `&wscr;`                 | mathematical script small w                                               |
| 𝓍      | `&xscr;`                 | mathematical script small x                                               |
| 𝓎      | `&yscr;`                 | mathematical script small y                                               |
| 𝓏      | `&zscr;`                 | mathematical script small z                                               |
| 𝔄      | `&Afr;`                  | mathematical fraktur capital a                                            |
| 𝔅      | `&Bfr;`                  | mathematical fraktur capital b                                            |
| 𝔇      | `&Dfr;`                  | mathematical fraktur capital d                                            |
| 𝔈      | `&Efr;`                  | mathematical fraktur capital e                                            |
| 𝔉      | `&Ffr;`                  | mathematical fraktur capital f                                            |
| 𝔊      | `&Gfr;`                  | mathematical fraktur capital g                                            |
| 𝔍      | `&Jfr;`                  | mathematical fraktur capital j                                            |
| 𝔎      | `&Kfr;`                  | mathematical fraktur capital k                                            |
| 𝔏      | `&Lfr;`                  | mathematical fraktur capital l                                            |
| 𝔐      | `&Mfr;`                  | mathematical fraktur capital m                                            |
| 𝔑      | `&Nfr;`                  | mathematical fraktur capital n                                            |
| 𝔒      | `&Ofr;`                  | mathematical fraktur capital o                                            |
| 𝔓      | `&Pfr;`                  | mathematical fraktur capital p                                            |
| 𝔔      | `&Qfr;`                  | mathematical fraktur capital q                                            |
| 𝔖      | `&Sfr;`                  | mathematical fraktur capital s                                            |
| 𝔗      | `&Tfr;`                  | mathematical fraktur capital t                                            |
| 𝔘      | `&Ufr;`                  | mathematical fraktur capital u                                            |
| 𝔙      | `&Vfr;`                  | mathematical fraktur capital v                                            |
| 𝔚      | `&Wfr;`                  | mathematical fraktur capital w                                            |
| 𝔛      | `&Xfr;`                  | mathematical fraktur capital x                                            |
| 𝔜      | `&Yfr;`                  | mathematical fraktur capital y                                            |
| 𝔞      | `&afr;`                  | mathematical fraktur small a                                              |
| 𝔟      | `&bfr;`                  | mathematical fraktur small b                                              |
| 𝔠      | `&cfr;`                  | mathematical fraktur small c                                              |
| 𝔡      | `&dfr;`                  | mathematical fraktur small d                                              |
| 𝔢      | `&efr;`                  | mathematical fraktur small e                                              |
| 𝔣      | `&ffr;`                  | mathematical fraktur small f                                              |
| 𝔤      | `&gfr;`                  | mathematical fraktur small g                                              |
| 𝔥      | `&hfr;`                  | mathematical fraktur small h                                              |
| 𝔦      | `&ifr;`                  | mathematical fraktur small i                                              |
| 𝔧      | `&jfr;`                  | mathematical fraktur small j                                              |
| 𝔨      | `&kfr;`                  | mathematical fraktur small k                                              |
| 𝔩      | `&lfr;`                  | mathematical fraktur small l                                              |
| 𝔪      | `&mfr;`                  | mathematical fraktur small m                                              |
| 𝔫      | `&nfr;`                  | mathematical fraktur small n                                              |
| 𝔬      | `&ofr;`                  | mathematical fraktur small o                                              |
| 𝔭      | `&pfr;`                  | mathematical fraktur small p                                              |
| 𝔮      | `&qfr;`                  | mathematical fraktur small q                                              |
| 𝔯      | `&rfr;`                  | mathematical fraktur small r                                              |
| 𝔰      | `&sfr;`                  | mathematical fraktur small s                                              |
| 𝔱      | `&tfr;`                  | mathematical fraktur small t                                              |
| 𝔲      | `&ufr;`                  | mathematical fraktur small u                                              |
| 𝔳      | `&vfr;`                  | mathematical fraktur small v                                              |
| 𝔴      | `&wfr;`                  | mathematical fraktur small w                                              |
| 𝔵      | `&xfr;`                  | mathematical fraktur small x                                              |
| 𝔶      | `&yfr;`                  | mathematical fraktur small y                                              |
| 𝔷      | `&zfr;`                  | mathematical fraktur small z                                              |
| 𝔸      | `&Aopf;`                 | mathematical double-struck capital a                                      |
| 𝔹      | `&Bopf;`                 | mathematical double-struck capital b                                      |
| 𝔻      | `&Dopf;`                 | mathematical double-struck capital d                                      |
| 𝔼      | `&Eopf;`                 | mathematical double-struck capital e                                      |
| 𝔽      | `&Fopf;`                 | mathematical double-struck capital f                                      |
| 𝔾      | `&Gopf;`                 | mathematical double-struck capital g                                      |
| 𝕀      | `&Iopf;`                 | mathematical double-struck capital i                                      |
| 𝕁      | `&Jopf;`                 | mathematical double-struck capital j                                      |
| 𝕂      | `&Kopf;`                 | mathematical double-struck capital k                                      |
| 𝕃      | `&Lopf;`                 | mathematical double-struck capital l                                      |
| 𝕄      | `&Mopf;`                 | mathematical double-struck capital m                                      |
| 𝕆      | `&Oopf;`                 | mathematical double-struck capital o                                      |
| 𝕊      | `&Sopf;`                 | mathematical double-struck capital s                                      |
| 𝕋      | `&Topf;`                 | mathematical double-struck capital t                                      |
| 𝕌      | `&Uopf;`                 | mathematical double-struck capital u                                      |
| 𝕍      | `&Vopf;`                 | mathematical double-struck capital v                                      |
| 𝕎      | `&Wopf;`                 | mathematical double-struck capital w                                      |
| 𝕏      | `&Xopf;`                 | mathematical double-struck capital x                                      |
| 𝕐      | `&Yopf;`                 | mathematical double-struck capital y                                      |
| 𝕒      | `&aopf;`                 | mathematical double-struck small a                                        |
| 𝕓      | `&bopf;`                 | mathematical double-struck small b                                        |
| 𝕔      | `&copf;`                 | mathematical double-struck small c                                        |
| 𝕕      | `&dopf;`                 | mathematical double-struck small d                                        |
| 𝕖      | `&eopf;`                 | mathematical double-struck small e                                        |
| 𝕗      | `&fopf;`                 | mathematical double-struck small f                                        |
| 𝕘      | `&gopf;`                 | mathematical double-struck small g                                        |
| 𝕙      | `&hopf;`                 | mathematical double-struck small h                                        |
| 𝕚      | `&iopf;`                 | mathematical double-struck small i                                        |
| 𝕛      | `&jopf;`                 | mathematical double-struck small j                                        |
| 𝕜      | `&kopf;`                 | mathematical double-struck small k                                        |
| 𝕝      | `&lopf;`                 | mathematical double-struck small l                                        |
| 𝕞      | `&mopf;`                 | mathematical double-struck small m                                        |
| 𝕟      | `&nopf;`                 | mathematical double-struck small n                                        |
| 𝕠      | `&oopf;`                 | mathematical double-struck small o                                        |
| 𝕡      | `&popf;`                 | mathematical double-struck small p                                        |
| 𝕢      | `&qopf;`                 | mathematical double-struck small q                                        |
| 𝕣      | `&ropf;`                 | mathematical double-struck small r                                        |
| 𝕤      | `&sopf;`                 | mathematical double-struck small s                                        |
| 𝕥      | `&topf;`                 | mathematical double-struck small t                                        |
| 𝕦      | `&uopf;`                 | mathematical double-struck small u                                        |
| 𝕧      | `&vopf;`                 | mathematical double-struck small v                                        |
| 𝕨      | `&wopf;`                 | mathematical double-struck small w                                        |
| 𝕩      | `&xopf;`                 | mathematical double-struck small x                                        |
| 𝕪      | `&yopf;`                 | mathematical double-struck small y                                        |
| 𝕫      | `&zopf;`                 | mathematical double-struck small z                                        |
