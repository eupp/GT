#!/usr/bin/env sh

set  +x
camlp5o `ocamlfind query ocamlgraph`/graph.cma \
    camlp5/pp5gt.cma \
    	plugins/gmap.cmo plugins/show.cmo \
	plugins/compare.cmo plugins/eq.cmo \
	plugins/foldl.cmo plugins/foldr.cmo \
	plugins/stateful.cmo plugins/eval.cmo \
	plugins/html.cmo \
	plugins/gfmt.cmo \
    $@
exit $?

# camlp5o -I `ocamlfind query base` \
#         -I `ocamlfind query base`/caml \
#         -I `ocamlfind query base`/shadow_stdlib \
#         -I `ocamlfind query sexplib0` \
#         -I `ocamlfind query result` \
#         -I `ocamlfind query compiler-libs.common` \
#         -I `ocamlfind query ocaml-compiler-libs`/shadow \
#         -I `ocamlfind query ocaml-migrate-parsetree` \
#         -I `ocamlfind query stdio` \
#         -I `ocamlfind query ppx_derivers` \
#         -I `ocamlfind query ppxlib` \
#         -I `ocamlfind query ppxlib`/ast \
#         -I `ocamlfind query ppxlib`/traverse_builtins \
#         -I `ocamlfind query ppxlib`/print_diff \
#         sexplib0.cma caml.cma shadow_stdlib.cma base.cma \
#         ocamlcommon.cma stdio.cma \
#         migrate_parsetree.cma ppx_derivers.cma \
#         ppxlib_ast.cma ppxlib_traverse_builtins.cma ppxlib_print_diff.cma ocaml_shadow.cma \
#         ppxlib.cma  camlp5/pa_gt.cmo pr_o.cmo $@

#camlp5o -I `ocamlfind query base` -I `ocamlfind query base`/shadow_stdlib -I `ocamlfind query ppxlib` -I `ocamlfind query ppxlib`/ast -I `ocamlfind query base`/caml -I `ocamlfind query sexplib0` -I `ocamlfind query stdio`         sexplib0.cma caml.cma shadow_stdlib.cma base.cma stdio.cma ppxlib_ast.cma ppxlib.cma camlp5/pa_gt.cmo
