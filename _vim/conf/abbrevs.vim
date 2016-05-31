"
" author   : Xu Xiaodong <xxdlhy@gmail.com>
" modified : 2016 May 31
"

"-- abbrevs --"

iab _au author   : Xu Xiaodong <xxdlhy@gmail.com>
iab _mo <c-r>="modified : " . strftime("%Y %b %d")<cr>

iab _na Xu Xiaodong 
iab _ma xxdlhy@gmail.com
iab _da <c-r>=strftime("%Y-%m-%d %T")<cr>

iab _fn <c-r>=bufname("%")<cr>
iab _pl #!/usr/bin/env perl
iab _rb #!/usr/bin/env ruby

iab _xt http://linuxtoy.org
iab _xm <!--more-->

iab _hlb {% highlight bash %}
iab _hlr {% highlight ruby %}
iab _ehl {% endhighlight %}

iab ,, =>

iab _ps <!-- PELICAN_END_SUMMARY -->
iab _pi ![]({filename}/images/)
iab _pil [![]({filename}/images/)]({filename}/images/)
