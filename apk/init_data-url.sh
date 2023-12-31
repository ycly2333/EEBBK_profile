Configuration=2022012700
Magisk_Warehouse_version=2021101100
App_Store_version=2021100100
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.topjohnwu.magisk)
apk='com.topjohnwu.magisk'
name='Magisk'
version='26.1'
versionCode=26100
author='John Wu'
description='Magisk Manager'
time='2023年4月11号'
    [[ $Choice = 1 ]] && Download -lz 'iGboN0xh8r7i' "$1.apk" '11399404' '6794a570b8ebfbaa5f596eda3639ef56' "$1.apk"
;;

moe.shizuku.privileged.api)
apk='moe.shizuku.privileged.api'
name='Shizuku'
version='13.3.0.r1003.d4b24b0'
versionCode=1003
author='Rikka'
description='系统API授权'
time='2023年5月26号'
    [[ $Choice = 1 ]] && Download -lz 'iFOsS0xh8psh' "$1.apk" '3432498' 'fab9958cabe9944d720e4f7455f48131' "$1.apk"
;;

com.modosa.apkinstaller)
apk='com.modosa.apkinstaller'
name='安装狮'
version='3.7.5'
versionCode=42
author='dadaewq'
description='安装第三方软件'
time='2020年7月7号'
    [[ $Choice = 1 ]] && Download -url 'iUH1e0xh969a' "$1.apk" '1869340' '665dfcc366eb8a6c42fb442c39fcc388' "$1.apk"
;;

com.yxer.packageinstalles)
apk='com.yxer.packageinstalles'
name='R-安装组件'
version='2.6.9-beta'
versionCode=330
author='L'
description='安装第三方软件'
time='2023年5月10号'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
    fi
    [[ $Choice = 1 ]] && Download -lz 'iCIia0xh8qqb' "$1.apk" '2932665' 'b7a0583ab10ca1862e6215c8d4d90a0d' "$1.apk"
;;

com.aistra.hail)
apk='com.aistra.hail'
name='雹'
version='1.3.0'
versionCode=26
author='艾星Aistra'
description='冻结软件'
time='2023年5月1号'
    [[ $Choice = 1 ]] && Download -lz 'iE7LW0xh9fuf' "$1.apk" '2779715' 'afe2405bc8cb454c107e3ae03115bdac' "$1.apk"
;;

me.zhanghai.android.files)
apk='me.zhanghai.android.files'
name='质感文件'
version='1.5.2'
versionCode=31
author='张海'
description='管理Android设备文件'
time='2022年5月16号'
    [[ $Choice = 1 ]] && Download -lz 'iWa1U0xh95vg' "$1.apk" '8525057' '0060ab65dfaa426977715e42aada1cc7' "$1.apk"
;;

com.x7890.shortcutcreator)
apk='com.x7890.shortcutcreator'
name='创建快捷方式'
version='1.17'
versionCode=117
author='x7890'
description='快捷打开系统隐藏的活动/系统设置选项'
time='2019年2月2号'
    [[ $Choice = 1 ]] && Download -lz 'i8Thw0xh95bg' "$1.apk" '1329110' '91603438038865745cfd3301debca1d3' "$1.apk"
;;

mark.via)
apk='mark.via'
name='Via'
version='4.7.0'
versionCode=20230508
author='various'
description='浏览器'
time='2023年5月8号'
    [[ $Choice = 1 ]] && Download -lz 'ir1Nt0xh8qbg' "$1.apk" '1837400' 'c45abe93ce1c0bfd14681c5b77a93d70' "$1.apk"
;;

com.mmbox.xbrowser)
apk='com.mmbox.xbrowser'
name='X浏览器'
version='4.1.0'
versionCode=742
author='chengkai'
description='浏览器'
time='2023年6月14号'
    [[ $Choice = 1 ]] && Download -lz 'i9MQK0zarhkf' "$1.apk" '1132591' 'd78d5d9761c2f60a7385d8a8ae6ffaea' "$1.apk"
;;

exit_sideload)
    Download_File="$PeiZhi_File/$1.zip"
;;

Card_Brush_Bag)
    Download_File="$PeiZhi_File/Card_Brush_Bag/$3.zip"
;;

Install_Applet)
    name=Applet
    versionCode=73
    Download_File=$Other/$name.zip
    Install_Applet2
;;

*)
    abort "！未找到$1服务"
;;
esac
true
