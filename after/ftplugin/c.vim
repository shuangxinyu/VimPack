"completion"
"basic config for use of omnicppcomplete
setlocal nocp
"add tags"
setlocal tags+=~/.vim/tags/cpp/glut
setlocal tags+=~/.vim/tags/cpp/opengl
" build tags of your own project with CTRL+F12"
nmap <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1 
let OmniCpp_GlobalScopeSearch = 1 
let OmniCpp_ShowAccess = 1 
let OmniCpp_MayCompleteDot = 1 
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = []

" OmniCppComplete initialization
call omni#cpp#complete#Init()
