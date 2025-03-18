#!/usr/bin/env bash
need_file=(
    include/uapi/linux/netfilter/xt_mark.h
    include/uapi/linux/netfilter/xt_tcpmss.h
    include/uapi/linux/netfilter/xt_dscp.h
    include/uapi/linux/netfilter_ipv6/ip6t_hl.h
    include/uapi/linux/netfilter_ipv4/ipt_ttl.h
    net/netfilter/xt_hl.c
    net/netfilter/xt_tcpmss.c
)

ROM_TEXT='ppajda/android_kernel_oneplus_sm8250'
ROM_BRANCH='oos13.1'

for i in "${need_file[@]}"; do
    curl https://raw.githubusercontent.com/$ROM_TEXT/refs/heads/$ROM_BRANCH/$i -o $i
done
