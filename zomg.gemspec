Gem::Specification.new do |s|
  s.name = "zomg"
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Patterson", "Dave Aronson"]
  s.date = "2017-09-13"
  s.default_executable = "omfg"
  s.description = <<~END_OF_TEXT
    ZOMG is an OMG IDL parser.
    ZOMG will generate a Ruby AST from an IDL AST,
    and will even generate ruby (by means of Ruby2Ruby),
    or a hash.

    == FEATURES/PROBLEMS:

    * Parses IDL, generates Ruby or a hash
    * Ships with OMFG the Object Management File Generator
    * Ignores nested structs/unions
    * Treats out/inout parameters are DIY

    == SYNOPSIS:

    In code:

        ZOMG::IDL.parse(File.read(ARGV[0])).to_ruby

    or

        ZOMG::IDL.parse(File.read(ARGV[0])).to_hash

    Command line:

        $ omfg lol.idl > roflmao.rb

    (Sorry, no command-line yet for hashes.)
  END_OF_TEXT
  s.email = ["tenderlove@ruby-lang.org"]
  s.executables = ["omfg"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.md"]
  s.files = ["History.txt",
             "Manifest.txt",
             "README.md",
             "Rakefile",
             "bin/omfg",
             "lib/scanner.rex",
             "lib/yacc.y",
             "lib/zomg.rb",
             "lib/zomg/idl.rb",
             "lib/zomg/idl/lexer.rb",
             "lib/zomg/idl/nodes/attribute.rb",
             "lib/zomg/idl/nodes/binary.rb",
             "lib/zomg/idl/nodes/constant.rb",
             "lib/zomg/idl/nodes/interface.rb",
             "lib/zomg/idl/nodes/interface_header.rb",
             "lib/zomg/idl/nodes/member.rb",
             "lib/zomg/idl/nodes/node.rb",
             "lib/zomg/idl/nodes/operation.rb",
             "lib/zomg/idl/nodes/parameter.rb",
             "lib/zomg/idl/nodes/typedef.rb",
             "lib/zomg/idl/nodes/union.rb",
             "lib/zomg/idl/parser.rb",
             "lib/zomg/idl/scanner.rb",
             "lib/zomg/idl/visitable.rb",
             "lib/zomg/idl/visitors/duhr.rb",
             "lib/zomg/idl/visitors/ruby_sexp.rb",
             "lib/zomg/idl/visitors/sexp.rb",
             "lib/zomg/idl/visitors/hash_maker.rb",
             "lib/zomg/version.rb",
             "test/assets/array/array1.idl",
             "test/assets/array/array2.idl",
             "test/assets/array/array3.idl",
             "test/assets/array/array4.idl",
             "test/assets/array/array5.idl",
             "test/assets/attribute/grid_0attribs_2methods.idl",
             "test/assets/attribute/grid_1ROattribs_1attribs_0methods.idl",
             "test/assets/attribute/grid_1ROattribs_1attribs_1methods.idl",
             "test/assets/attribute/grid_1ROattribs_1attribs_2methods.idl",
             "test/assets/attribute/grid_1ROattribs_1methods.idl",
             "test/assets/attribute/grid_1ROattribs_2methods.idl",
             "test/assets/attribute/grid_1attribs_1methods.idl",
             "test/assets/attribute/grid_1attribs_2methods.idl",
             "test/assets/attribute/grid_2ROattribs_0methods.idl",
             "test/assets/attribute/grid_2ROattribs_1methods.idl",
             "test/assets/attribute/grid_2ROattribs_2methods.idl",
             "test/assets/attribute/grid_2attribs_0methods.idl",
             "test/assets/attribute/grid_2attribs_1methods.idl",
             "test/assets/attribute/grid_2attribs_2methods.idl",
             "test/assets/comment/c_style_comments.idl",
             "test/assets/comment/comment1.idl",
             "test/assets/comment/cpp_style_comments.idl",
             "test/assets/comment/shortform.idl",
             "test/assets/complex/TestCodeSets.idl",
             "test/assets/complex/TestIntfContext.idl",
             "test/assets/complex/TestIntfLongLong.idl",
             "test/assets/complex/TestIntfWChar.idl",
             "test/assets/complex/any1.idl",
             "test/assets/complex/complex1.idl",
             "test/assets/complex/complex2.idl",
             "test/assets/complex/complex3.idl",
             "test/assets/complex/complex4.idl",
             "test/assets/complex/interop_wchar.idl",
             "test/assets/constant/constant1.idl",
             "test/assets/constant/constant2.idl",
             "test/assets/constant/constant3.idl",
             "test/assets/constant/constant4.idl",
             "test/assets/constant/constant5.idl",
             "test/assets/constant/constant6.idl",
             "test/assets/constant/constant7.idl",
             "test/assets/enum/enum1.idl",
             "test/assets/exception/TestIntfExceptions.idl",
             "test/assets/exception/TestIntfExceptionsExt_2_0.idl",
             "test/assets/exception/TestIntfExceptionsExt_2_3.idl",
             "test/assets/exception/ex1.idl",
             "test/assets/exception/ex2.idl",
             "test/assets/exception/ex3.idl",
             "test/assets/exception/ex4.idl",
             "test/assets/exception/sc.idl",
             "test/assets/exception/simple1.idl",
             "test/assets/exception/simple2.idl",
             "test/assets/factory/factory1.idl",
             "test/assets/factory/objref.idl",
             "test/assets/forward/forward.idl",
             "test/assets/forward/forward1.idl",
             "test/assets/forward/fwd_incl1.idl",
             "test/assets/forward/fwd_incl2.idl",
             "test/assets/include/a.idl",
             "test/assets/include/b.idl",
             "test/assets/include/employee.idl",
             "test/assets/include/include1.idl",
             "test/assets/include/include2.idl",
             "test/assets/include/manager.idl",
             "test/assets/include/pragma.idl",
             "test/assets/include/rookie.idl",
             "test/assets/include/rookiemanager.idl",
             "test/assets/include/sample.idl",
             "test/assets/include/sample_incl.idl",
             "test/assets/inherit/IDL1.idl",
             "test/assets/inherit/IDL2.idl",
             "test/assets/inherit/IDL3.idl",
             "test/assets/inherit/IDL4.idl",
             "test/assets/inherit/diamond_inheritance.idl",
             "test/assets/inherit/inherit.idl",
             "test/assets/limit/longidentifiers.idl",
             "test/assets/limit/namelens.idl",
             "test/assets/limit/tpztest.idl",
             "test/assets/module/module1.idl",
             "test/assets/module/module2.idl",
             "test/assets/module/module3.idl",
             "test/assets/module/module4.idl",
             "test/assets/nested/nested1.idl",
             "test/assets/nested/nested2.idl",
             "test/assets/operations/Benchmark.idl",
             "test/assets/operations/CCS.idl",
             "test/assets/operations/TestIntf.idl",
             "test/assets/operations/TestIntfBasic.idl",
             "test/assets/operations/atomic.idl",
             "test/assets/operations/dif2.idl",
             "test/assets/operations/interface1.idl",
             "test/assets/operations/parameters.idl",
             "test/assets/operations/perf.idl",
             "test/assets/operations/timer.idl",
             "test/assets/preprocess/base_for_diamond_inheritance_with_macros.idl",
             "test/assets/preprocess/basic_macro_marshalling.idl",
             "test/assets/preprocess/diamond_inheritance_with_macros.idl",
             "test/assets/preprocess/macro1.idl",
             "test/assets/preprocess/preprocess1.idl",
             "test/assets/preprocess/preprocess2.idl",
             "test/assets/recursion/loop.idl",
             "test/assets/recursion/recursion1.idl",
             "test/assets/recursion/recursion2.idl",
             "test/assets/scenarios/filestat.idl",
             "test/assets/scenarios/gateway.idl",
             "test/assets/scenarios/library.idl",
             "test/assets/scenarios/phone.idl",
             "test/assets/scenarios/ticketservice.idl",
             "test/assets/scope/scope01.idl",
             "test/assets/scope/scope02.idl",
             "test/assets/scope/scope03.idl",
             "test/assets/scope/scope04.idl",
             "test/assets/scope/scope05.idl",
             "test/assets/scope/scope06.idl",
             "test/assets/scope/scope07.idl",
             "test/assets/scope/scope08.idl",
             "test/assets/scope/scope09.idl",
             "test/assets/scope/scope10.idl",
             "test/assets/scope/scope11.idl",
             "test/assets/scope/scope12.idl",
             "test/assets/scope/scope13.idl",
             "test/assets/scope/scope14.idl",
             "test/assets/scope/scope15.idl",
             "test/assets/scope/scope16.idl",
             "test/assets/scope/scope17.idl",
             "test/assets/scope/scope18.idl",
             "test/assets/scope/scope19.idl",
             "test/assets/scope/scope20.idl",
             "test/assets/scope/scope21.idl",
             "test/assets/scope/scope22.idl",
             "test/assets/scope/scope23.idl",
             "test/assets/scope/scope24.idl",
             "test/assets/scope/scope25.idl",
             "test/assets/scope/scope26.idl",
             "test/assets/scope/scope27.idl",
             "test/assets/scope/scope28.idl",
             "test/assets/scope/scope29.idl",
             "test/assets/scope/scope30.idl",
             "test/assets/scope/scope31.idl",
             "test/assets/scope/scope32.idl",
             "test/assets/scope/scope33.idl",
             "test/assets/scope/scope34.idl",
             "test/assets/scope/scope35.idl",
             "test/assets/scope/scope36.idl",
             "test/assets/scope/scope37.idl",
             "test/assets/scope/scope38.idl",
             "test/assets/scope/scope39.idl",
             "test/assets/scope/scope40.idl",
             "test/assets/scope/scope41.idl",
             "test/assets/scope/scope42.idl",
             "test/assets/scope/scope43.idl",
             "test/assets/scope/scope44.idl",
             "test/assets/sequence/sequence1.idl",
             "test/assets/sequence/sequence2.idl",
             "test/assets/simple/basictypes1.idl",
             "test/assets/simple/basictypes2.idl",
             "test/assets/simple/basictypes3.idl",
             "test/assets/simple/basictypes4.idl",
             "test/assets/simple/basictypes5.idl",
             "test/assets/simple/basictypes6.idl",
             "test/assets/simple/simple1.idl",
             "test/assets/simple/simple2.idl",
             "test/assets/simple/simple3.idl",
             "test/assets/string/string1.idl",
             "test/assets/string/string2.idl",
             "test/assets/struct/struct1.idl",
             "test/assets/struct/struct2.idl",
             "test/assets/struct/struct3.idl",
             "test/assets/struct/struct4.idl",
             "test/assets/struct/struct5.idl",
             "test/assets/typecode/orb.idl",
             "test/assets/typecode/pseudo.idl",
             "test/assets/typedef/shorthand_typedef_struct_insideIF.idl",
             "test/assets/typedef/shorthand_typedef_struct_insideIF_noMO.idl",
             "test/assets/typedef/shorthand_typedef_struct_insideMO.idl",
             "test/assets/typedef/shorthand_typedef_struct_outsideMO.idl",
             "test/assets/typedef/typedef1.idl",
             "test/assets/typedef/typedef2.idl",
             "test/assets/typedef/typedef_struct_insideIF.idl",
             "test/assets/typedef/typedef_struct_insideMO.idl",
             "test/assets/typedef/typedef_struct_outsideMO.idl",
             "test/assets/union/union1.idl",
             "test/assets/union/union2.idl",
             "test/assets/union/union3.idl",
             "test/conversions/test_attribute.rb",
             "test/conversions/test_enum.rb",
             "test/conversions/test_exception.rb",
             "test/conversions/test_forward_declaration.rb",
             "test/conversions/test_interface.rb",
             "test/conversions/test_module.rb",
             "test/conversions/test_struct.rb",
             "test/conversions/test_typedef.rb",
             "test/conversions/test_union.rb",
             "test/conversions/test_value_box_dcl.rb",
             "test/helper.rb",
             "test/simple/test_basictypes1.rb",
             "test/simple/test_basictypes2.rb",
             "test/simple/test_basictypes3.rb",
             "test/simple/test_basictypes4.rb",
             "test/simple/test_basictypes5.rb",
             "test/simple/test_basictypes6.rb",
             "test/simple/test_simple1.rb",
             "test/simple/test_simple2.rb",
             "test/simple/test_simple3.rb",
             "test/test_array.rb",
             "test/test_assets.rb",
             "test/test_complex.rb",
             "test/test_node.rb",
             "test/test_parser.rb",
             "test/test_scanner.rb",
             "zomg.gemspec"]
  s.has_rdoc = true
  s.homepage = "https://github.com/tenderlove/zomg"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "zomg"
  s.rubygems_version = "1.2.0"
  s.summary = "ZOMG is an OMG IDL parser"
  s.test_files = ["test/conversions/test_attribute.rb",
                  "test/conversions/test_enum.rb",
                  "test/conversions/test_exception.rb",
                  "test/conversions/test_forward_declaration.rb",
                  "test/conversions/test_interface.rb",
                  "test/conversions/test_module.rb",
                  "test/conversions/test_struct.rb",
                  "test/conversions/test_typedef.rb",
                  "test/conversions/test_union.rb",
                  "test/conversions/test_value_box_dcl.rb",
                  "test/simple/test_basictypes1.rb",
                  "test/simple/test_basictypes2.rb",
                  "test/simple/test_basictypes3.rb",
                  "test/simple/test_basictypes4.rb",
                  "test/simple/test_basictypes5.rb",
                  "test/simple/test_basictypes6.rb",
                  "test/simple/test_simple1.rb",
                  "test/simple/test_simple2.rb",
                  "test/simple/test_simple3.rb",
                  "test/test_array.rb",
                  "test/test_assets.rb",
                  "test/test_complex.rb",
                  "test/test_node.rb",
                  "test/test_parser.rb",
                  "test/test_scanner.rb"]

  s.add_development_dependency("hoe", ["~> 3.16"])
  s.add_development_dependency("pry", ["> 0"])
  s.add_development_dependency("minitest", ["~> 5.10"])
  s.add_development_dependency("test-unit", ["~> 3.2"])
  s.add_runtime_dependency("racc", ["~> 1.4"])
  s.add_runtime_dependency("ruby2ruby", ["~> 2.4"])
  s.add_runtime_dependency("tenderlove-frex", ["~> 1.0"])
end
