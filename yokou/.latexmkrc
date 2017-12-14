#!/usr/bin/env perl
$latex          = 'platex %O %S';
$bibtex         = 'pbibtex %O %S';
$dvipdf         = 'dvipdfmx %O %S';
$pdf_mode       = 3; # generates pdf via dvipdf
$pvc_view_file_via_temporary = 0;
$pdf_previewer  = 'start evince';
