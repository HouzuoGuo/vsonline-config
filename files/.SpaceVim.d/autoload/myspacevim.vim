func! myspacevim#before() abort
  set shell=/bin/bash
endf

func! myspacevim#after() abort
  set shell=/bin/bash
  set mouse=

  let g:go_test_show_name = 1
  let g:go_test_timeout= '120s'

  let g:go_info_mode = 'gopls'
  let g:go_def_mode = 'gopls'
  let g:go_info_mode = 'gopls'
  let g:go_referrers_mode = 'gopls'

  let g:go_auto_type_info = 1
  let g:go_auto_sameids = 1
  let g:go_updatetime = 150

  let g:go_guru_scope = ["github.com/HouzuoGuo/...", "github.com/kotarock/..."]

  let g:go_term_enabled = 1

  let g:go_gopls_enabled = 1
  let g:go_gopls_complete_unimported = 1
  let g:go_gopls_deep_completion = 1
  let g:go_gopls_fuzzy_matching = 1
  let g:go_gopls_staticcheck = 1
  let g:go_gopls_use_placeholders = 0

  let g:go_fmt_autosave = 1
  let g:go_fmt_command = "goimports"

  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1

  let g:deoplete#sources#go#unimported_packages = 1
  let g:deoplete#sources#go#fallback_to_source = 1
  call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
  set completeopt+=noselect

endf
