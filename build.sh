#!/bin/sh
# يعيد تجميع التطبيق من مصادر src/
#   mijhar-mlt.html : صيغة الـArtifact (بلا doctype/head — المنصّة تضيفها)
#   index.html      : صفحة قائمة بذاتها للاستضافة، بترميز UTF-8 معلن
cd "$(dirname "$0")"
cat src/01-head.html src/bank/b1_cc.js src/bank/b2_hem.js src/bank/b3_bb.js \
    src/bank/b4_mic.js src/bank/b5_par.js src/bank/b6_imm.js src/bank/b7_his.js \
    src/bank/b8_mgt.js src/bank/b9_extra.js src/99-app.js.html > mijhar-mlt.html

{
  printf '%s\n' '<!doctype html>'
  printf '%s\n' '<html lang="ar" dir="rtl">'
  printf '%s\n' '<head>'
  printf '%s\n' '<meta charset="utf-8">'
  printf '%s\n' '<meta name="viewport" content="width=device-width,initial-scale=1">'
  printf '%s\n' '<style>body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '</head>'
  printf '%s\n' '<body>'
  cat mijhar-mlt.html
  printf '%s\n' '</body>'
  printf '%s\n' '</html>'
} > index.html

echo "built: $(grep -c '^Q(' mijhar-mlt.html) questions"
echo "  mijhar-mlt.html $(wc -c < mijhar-mlt.html)b (artifact form)"
echo "  index.html      $(wc -c < index.html)b (standalone, UTF-8 declared)"
