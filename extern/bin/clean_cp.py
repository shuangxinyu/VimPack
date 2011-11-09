#!/usr/bin/env python

import shutil

def cal_ignore(src, names):
    return [name for name in names if name.startswith('.')]

def print_usage():
    print ("""
    usage: vim_conf_pack src des
    src: source path
    des: destination path
    """)

if __name__ == '__main__':
    import sys
    if len(sys.argv)!=3:
        print_usage()
    src = str(sys.argv[1])
    des = str(sys.argv[2])
    try:
        shutil.copytree(src,des,ignore=cal_ignore)
    except:
        raise
