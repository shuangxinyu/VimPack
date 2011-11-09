"completion"
"add tags"
set tags+=~/.vim/tags/cpp/stl
set tags+=~/.vim/tags/cpp/glut
set tags+=~/.vim/tags/cpp/opengl
set tags+=~/.vim/tags/cpp/qt
" build tags of your own project with CTRL+F12"
nmap <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1 
let OmniCpp_GlobalScopeSearch = 1 
let OmniCpp_ShowAccess = 1 
let OmniCpp_MayCompleteDot = 1 
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" OmniCppComplete initialization
call omni#cpp#complete#Init()
