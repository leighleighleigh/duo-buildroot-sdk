default:
  #!/usr/bin/env bash
  export MILKV_BOARD=milkv-duo
  source milkv/boardconfig-milkv-duo.sh
  source build/milkvsetup.sh
  # get the toolchain
  source build_milkv.sh
  prepare_env

  defconfig cv1800b_milkv_duo_sd
  clean_all
  menuconfig_rootfs
  menuconfig_kernel
  build_all

pack:
  #!/usr/bin/env bash
  export MILKV_BOARD=milkv-duo
  source milkv/boardconfig-milkv-duo.sh
  source build/milkvsetup.sh
  pack_sd_image

clean:
  #!/usr/bin/env bash
  export MILKV_BOARD=milkv-duo
  source milkv/boardconfig-milkv-duo.sh
  source build/milkvsetup.sh
  clean_all
