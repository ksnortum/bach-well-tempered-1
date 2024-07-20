# bach-well-tempered-1
[LilyPond](https://lilypond.org/) engraving source files used to create J.S. Bach's Well Tempered Clavier I, BWV 846-869.

## Requirements
LilyPond version 2.24.0 or higher. (*Note:* LilyPond is not always backwards-compatible.  If you have a later version, be sure to run `convert.ly` on all the files.  All files were compiled with version 2.24.3.)

## Creating the PDF and MIDI files
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The PDF and MIDI files can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond well-tempered-clavier-I-book.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click well-tempered-clavier-I-book.ly

Each separate prelude and fugue has its own LilyPond file that ends with `-individual.ly`.  So for instance:

        lilypond prelude-1-bwv-846-individual.ly

You may also [download the latest release](https://github.com/ksnortum/bach-well-tempered-1/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing
The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `header-paper.ily`,
find the `\paper` block (in the middle) and set `two-sided = ##f`.

## Thanks
Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org), especially [Jean Abou Samra](https://github.com/jeanas), for all the help getting LilyPond to do what I wanted.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute (at) snortum (dot) net).