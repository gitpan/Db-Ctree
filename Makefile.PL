use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Db::Ctree',
    'VERSION_FROM' => 'Ctree.pm', 
    'INC'	=> '-I/usr/faircom/ctree/include -I/usr/faircom/ctree/custom ',
    'LDFROM'	=> '$(OBJECT) /usr/faircom/lib.cli/tcp.libctclient.a',
    'PM'        =>  {'Ctree.pm'  => '$(INST_LIBDIR)/Ctree.pm',
                     'Ctport.ph' => '$(INST_LIB)/Ctport.ph',
                     'Cterrc.ph' => '$(INST_LIB)/Cterrc.ph'}
);
