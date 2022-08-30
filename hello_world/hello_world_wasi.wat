(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i64 i32) (result i64)))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (param i32 i64 i32 i32) (result i32)))
  (type $t5 (func (param i32 i32 i32 i32) (result i32)))
  (type $t6 (func (param i32)))
  (type $t7 (func))
  (type $t8 (func (result i32)))
  (type $t9 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32)))
  (type $t11 (func (param i32 i32 i32 i32 i32)))
  (type $t12 (func (param f64 i32) (result f64)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type $t2)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type $t3)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type $t4)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type $t5)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type $t6)))
  (func $_start (type $t7)
    (local $l0 i32)
    block $B0
      call $__original_main
      local.tee $l0
      i32.eqz
      br_if $B0
      local.get $l0
      call $exit
      unreachable
    end)
  (func $__original_main (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    local.set $l0
    i32.const 16
    local.set $l1
    local.get $l0
    local.get $l1
    i32.sub
    local.set $l2
    local.get $l2
    global.set $g0
    i32.const 0
    local.set $l3
    local.get $l2
    local.get $l3
    i32.store offset=12
    i32.const 1078
    local.set $l4
    i32.const 0
    local.set $l5
    local.get $l4
    local.get $l5
    call $printf
    drop
    i32.const 0
    local.set $l6
    i32.const 16
    local.set $l7
    local.get $l2
    local.get $l7
    i32.add
    local.set $l8
    local.get $l8
    global.set $g0
    local.get $l6
    return)
  (func $__wasi_fd_close (type $t2) (param $p0 i32) (result i32)
    local.get $p0
    call $__imported_wasi_snapshot_preview1_fd_close
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_get (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_seek (type $t4) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $__imported_wasi_snapshot_preview1_fd_seek
    i32.const 65535
    i32.and)
  (func $__wasi_fd_write (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $__imported_wasi_snapshot_preview1_fd_write
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type $t6) (param $p0 i32)
    local.get $p0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $_Exit (type $t6) (param $p0 i32)
    local.get $p0
    call $__wasi_proc_exit
    unreachable)
  (func $dummy (type $t7))
  (func $__wasm_call_dtors (type $t7)
    call $dummy
    call $__stdio_exit)
  (func $exit (type $t6) (param $p0 i32)
    call $dummy
    call $__stdio_exit
    local.get $p0
    call $_Exit
    unreachable)
  (func $close (type $t2) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      call $__wasi_fd_close
      local.tee $p0
      br_if $B0
      i32.const 0
      return
    end
    i32.const 0
    local.get $p0
    i32.store offset=3664
    i32.const -1)
  (func $__stdio_close (type $t2) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=56
    call $close)
  (func $printf (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    i32.const 3424
    local.get $p0
    local.get $p1
    call $vfprintf
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $__lseek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        local.get $p1
        local.get $p2
        i32.const 255
        i32.and
        local.get $l3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee $p0
        i32.eqz
        br_if $B1
        i32.const 0
        i32.const 70
        local.get $p0
        local.get $p0
        i32.const 76
        i32.eq
        select
        i32.store offset=3664
        i64.const -1
        local.set $p1
        br $B0
      end
      local.get $l3
      i64.load offset=8
      local.set $p1
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $__stdio_seek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    local.get $p0
    i32.load offset=56
    local.get $p1
    local.get $p2
    call $__lseek)
  (func $__ofl_lock (type $t8) (result i32)
    i32.const 4712)
  (func $__stdio_exit (type $t7)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    block $B0
      call $__ofl_lock
      i32.load
      local.tee $l0
      i32.eqz
      br_if $B0
      loop $L1
        block $B2
          local.get $l0
          i32.load offset=20
          local.get $l0
          i32.load offset=24
          i32.eq
          br_if $B2
          local.get $l0
          i32.const 0
          i32.const 0
          local.get $l0
          i32.load offset=32
          call_indirect (type $t0) $T0
          drop
        end
        block $B3
          local.get $l0
          i32.load offset=4
          local.tee $l1
          local.get $l0
          i32.load offset=8
          local.tee $l2
          i32.eq
          br_if $B3
          local.get $l0
          local.get $l1
          local.get $l2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get $l0
          i32.load offset=36
          call_indirect (type $t1) $T0
          drop
        end
        local.get $l0
        i32.load offset=52
        local.tee $l0
        br_if $L1
      end
    end
    block $B4
      i32.const 0
      i32.load offset=4716
      local.tee $l0
      i32.eqz
      br_if $B4
      block $B5
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B5
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B4
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end
    block $B6
      i32.const 0
      i32.load offset=3536
      local.tee $l0
      i32.eqz
      br_if $B6
      block $B7
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B7
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B6
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end
    block $B8
      i32.const 0
      i32.load offset=3656
      local.tee $l0
      i32.eqz
      br_if $B8
      block $B9
        local.get $l0
        i32.load offset=20
        local.get $l0
        i32.load offset=24
        i32.eq
        br_if $B9
        local.get $l0
        i32.const 0
        i32.const 0
        local.get $l0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
      end
      local.get $l0
      i32.load offset=4
      local.tee $l1
      local.get $l0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B8
      local.get $l0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $l0
      i32.load offset=36
      call_indirect (type $t1) $T0
      drop
    end)
  (func $__towrite (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=60
    local.tee $l1
    i32.const -1
    i32.add
    local.get $l1
    i32.or
    i32.store offset=60
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.const 8
      i32.and
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $l1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get $p0
    i64.const 0
    i64.store offset=4 align=4
    local.get $p0
    local.get $p0
    i32.load offset=40
    local.tee $l1
    i32.store offset=24
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__fwritex (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    block $B0
      block $B1
        local.get $p2
        i32.load offset=16
        local.tee $l3
        br_if $B1
        i32.const 0
        local.set $l4
        local.get $p2
        call $__towrite
        br_if $B0
        local.get $p2
        i32.load offset=16
        local.set $l3
      end
      block $B2
        local.get $l3
        local.get $p2
        i32.load offset=20
        local.tee $l5
        i32.sub
        local.get $p1
        i32.ge_u
        br_if $B2
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $p2
        i32.load offset=32
        call_indirect (type $t0) $T0
        return
      end
      i32.const 0
      local.set $l6
      block $B3
        block $B4
          local.get $p2
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if $B4
          local.get $p1
          local.set $l3
          br $B3
        end
        i32.const 0
        local.set $l6
        local.get $p0
        local.set $l4
        i32.const 0
        local.set $l3
        loop $L5
          block $B6
            local.get $p1
            local.get $l3
            i32.ne
            br_if $B6
            local.get $p1
            local.set $l3
            br $B3
          end
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l4
          local.get $p1
          i32.add
          local.set $l7
          local.get $l4
          i32.const -1
          i32.add
          local.tee $l8
          local.set $l4
          local.get $l7
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L5
        end
        local.get $p2
        local.get $p0
        local.get $p1
        local.get $l3
        i32.sub
        i32.const 1
        i32.add
        local.tee $l6
        local.get $p2
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.tee $l4
        local.get $l6
        i32.lt_u
        br_if $B0
        local.get $l3
        i32.const -1
        i32.add
        local.set $l3
        local.get $l8
        local.get $p1
        i32.add
        i32.const 1
        i32.add
        local.set $p0
        local.get $p2
        i32.load offset=20
        local.set $l5
      end
      local.get $l5
      local.get $p0
      local.get $l3
      call $memcpy
      drop
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $l3
      i32.add
      i32.store offset=20
      local.get $l6
      local.get $l3
      i32.add
      local.set $l4
    end
    local.get $l4)
  (func $fwrite (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    local.get $p2
    local.get $p1
    i32.mul
    local.set $l4
    block $B0
      block $B1
        local.get $p3
        i32.load offset=16
        local.tee $l5
        br_if $B1
        i32.const 0
        local.set $l5
        local.get $p3
        call $__towrite
        br_if $B0
        local.get $p3
        i32.load offset=16
        local.set $l5
      end
      block $B2
        local.get $l5
        local.get $p3
        i32.load offset=20
        local.tee $l6
        i32.sub
        local.get $l4
        i32.ge_u
        br_if $B2
        local.get $p3
        local.get $p0
        local.get $l4
        local.get $p3
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.set $l5
        br $B0
      end
      i32.const 0
      local.set $l7
      block $B3
        block $B4
          local.get $p3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if $B4
          local.get $l4
          local.set $l5
          br $B3
        end
        local.get $p0
        local.get $l4
        i32.add
        local.set $l8
        i32.const 0
        local.set $l7
        i32.const 0
        local.set $l5
        loop $L5
          block $B6
            local.get $l4
            local.get $l5
            i32.add
            br_if $B6
            local.get $l4
            local.set $l5
            br $B3
          end
          local.get $l8
          local.get $l5
          i32.add
          local.set $l9
          local.get $l5
          i32.const -1
          i32.add
          local.tee $l10
          local.set $l5
          local.get $l9
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L5
        end
        local.get $p3
        local.get $p0
        local.get $l4
        local.get $l10
        i32.add
        i32.const 1
        i32.add
        local.tee $l7
        local.get $p3
        i32.load offset=32
        call_indirect (type $t0) $T0
        local.tee $l5
        local.get $l7
        i32.lt_u
        br_if $B0
        local.get $l10
        i32.const -1
        i32.xor
        local.set $l5
        local.get $l8
        local.get $l10
        i32.add
        i32.const 1
        i32.add
        local.set $p0
        local.get $p3
        i32.load offset=20
        local.set $l6
      end
      local.get $l6
      local.get $p0
      local.get $l5
      call $memcpy
      drop
      local.get $p3
      local.get $p3
      i32.load offset=20
      local.get $l5
      i32.add
      i32.store offset=20
      local.get $l7
      local.get $l5
      i32.add
      local.set $l5
    end
    block $B7
      local.get $l5
      local.get $l4
      i32.ne
      br_if $B7
      local.get $p2
      i32.const 0
      local.get $p1
      select
      return
    end
    local.get $l5
    local.get $p1
    i32.div_u)
  (func $strerror (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    block $B0
      i32.const 0
      i32.load offset=4744
      local.tee $l1
      br_if $B0
      i32.const 4720
      local.set $l1
      i32.const 0
      i32.const 4720
      i32.store offset=4744
    end
    i32.const 0
    local.get $p0
    local.get $p0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 2784
    i32.add
    i32.load16_u
    i32.const 1222
    i32.add
    local.get $l1
    i32.load offset=20
    call $__lctrans)
  (func $writev (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const -1
    local.set $l4
    block $B0
      block $B1
        local.get $p2
        i32.const -1
        i32.gt_s
        br_if $B1
        i32.const 0
        i32.const 28
        i32.store offset=3664
        br $B0
      end
      block $B2
        local.get $p0
        local.get $p1
        local.get $p2
        local.get $l3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee $p2
        i32.eqz
        br_if $B2
        i32.const 0
        local.get $p2
        i32.store offset=3664
        i32.const -1
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.load offset=12
      local.set $l4
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $l4)
  (func $__stdio_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=12
    local.get $l3
    local.get $p1
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.load offset=24
    local.tee $p1
    i32.store
    local.get $l3
    local.get $p0
    i32.load offset=20
    local.get $p1
    i32.sub
    local.tee $p1
    i32.store offset=4
    i32.const 2
    local.set $l4
    block $B0
      block $B1
        local.get $p1
        local.get $p2
        i32.add
        local.tee $l5
        local.get $p0
        i32.load offset=56
        local.get $l3
        i32.const 2
        call $writev
        local.tee $l6
        i32.eq
        br_if $B1
        local.get $l3
        local.set $p1
        loop $L2
          block $B3
            local.get $l6
            i32.const -1
            i32.gt_s
            br_if $B3
            i32.const 0
            local.set $l6
            local.get $p0
            i32.const 0
            i32.store offset=24
            local.get $p0
            i64.const 0
            i64.store offset=16
            local.get $p0
            local.get $p0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get $l4
            i32.const 2
            i32.eq
            br_if $B0
            local.get $p2
            local.get $p1
            i32.load offset=4
            i32.sub
            local.set $l6
            br $B0
          end
          local.get $p1
          local.get $l6
          local.get $p1
          i32.load offset=4
          local.tee $l7
          i32.gt_u
          local.tee $l8
          i32.const 3
          i32.shl
          i32.add
          local.tee $l9
          local.get $l9
          i32.load
          local.get $l6
          local.get $l7
          i32.const 0
          local.get $l8
          select
          i32.sub
          local.tee $l7
          i32.add
          i32.store
          local.get $p1
          i32.const 12
          i32.const 4
          local.get $l8
          select
          i32.add
          local.tee $l9
          local.get $l9
          i32.load
          local.get $l7
          i32.sub
          i32.store
          local.get $l5
          local.get $l6
          i32.sub
          local.tee $l5
          local.get $p0
          i32.load offset=56
          local.get $p1
          i32.const 8
          i32.add
          local.get $p1
          local.get $l8
          select
          local.tee $p1
          local.get $l4
          local.get $l8
          i32.sub
          local.tee $l4
          call $writev
          local.tee $l6
          i32.ne
          br_if $L2
        end
      end
      local.get $p0
      local.get $p0
      i32.load offset=40
      local.tee $p1
      i32.store offset=24
      local.get $p0
      local.get $p1
      i32.store offset=20
      local.get $p0
      local.get $p1
      local.get $p0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get $p2
      local.set $l6
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    local.get $l6)
  (func $fputs (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    call $strlen
    local.set $l2
    i32.const -1
    i32.const 0
    local.get $l2
    local.get $p0
    i32.const 1
    local.get $l2
    local.get $p1
    call $fwrite
    i32.ne
    select)
  (func $abort (type $t7)
    unreachable
    unreachable)
  (func $vfprintf (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 208
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    i32.store offset=204
    local.get $l3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i64.const 0
    i64.store offset=168
    local.get $l3
    i64.const 0
    i64.store offset=160
    local.get $l3
    local.get $p2
    i32.store offset=200
    block $B0
      block $B1
        i32.const 0
        local.get $p1
        local.get $l3
        i32.const 200
        i32.add
        local.get $l3
        i32.const 80
        i32.add
        local.get $l3
        i32.const 160
        i32.add
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if $B1
        i32.const -1
        local.set $p0
        br $B0
      end
      local.get $p0
      i32.load
      local.set $l4
      block $B2
        local.get $p0
        i32.load offset=60
        i32.const 0
        i32.gt_s
        br_if $B2
        local.get $p0
        local.get $l4
        i32.const -33
        i32.and
        i32.store
      end
      block $B3
        block $B4
          block $B5
            block $B6
              local.get $p0
              i32.load offset=44
              br_if $B6
              local.get $p0
              i32.const 80
              i32.store offset=44
              local.get $p0
              i32.const 0
              i32.store offset=24
              local.get $p0
              i64.const 0
              i64.store offset=16
              local.get $p0
              i32.load offset=40
              local.set $l5
              local.get $p0
              local.get $l3
              i32.store offset=40
              br $B5
            end
            i32.const 0
            local.set $l5
            local.get $p0
            i32.load offset=16
            br_if $B4
          end
          i32.const -1
          local.set $p2
          local.get $p0
          call $__towrite
          br_if $B3
        end
        local.get $p0
        local.get $p1
        local.get $l3
        i32.const 200
        i32.add
        local.get $l3
        i32.const 80
        i32.add
        local.get $l3
        i32.const 160
        i32.add
        call $printf_core
        local.set $p2
      end
      local.get $l4
      i32.const 32
      i32.and
      local.set $p1
      block $B7
        local.get $l5
        i32.eqz
        br_if $B7
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=32
        call_indirect (type $t0) $T0
        drop
        local.get $p0
        i32.const 0
        i32.store offset=44
        local.get $p0
        local.get $l5
        i32.store offset=40
        local.get $p0
        i32.const 0
        i32.store offset=24
        local.get $p0
        i32.load offset=20
        local.set $l5
        local.get $p0
        i64.const 0
        i64.store offset=16
        local.get $p2
        i32.const -1
        local.get $l5
        select
        local.set $p2
      end
      local.get $p0
      local.get $p0
      i32.load
      local.tee $l5
      local.get $p1
      i32.or
      i32.store
      i32.const -1
      local.get $p2
      local.get $l5
      i32.const 32
      i32.and
      select
      local.set $p0
    end
    local.get $l3
    i32.const 208
    i32.add
    global.set $g0
    local.get $p0)
  (func $printf_core (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i64) (local $l34 i64) (local $l35 f64) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 i32) (local $l41 i32) (local $l42 f64)
    global.get $g0
    i32.const 880
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    i32.const 68
    i32.add
    i32.const 12
    i32.add
    local.set $l6
    local.get $l5
    i32.const 55
    i32.add
    local.set $l7
    i32.const -2
    local.get $l5
    i32.const 80
    i32.add
    i32.sub
    local.set $l8
    local.get $l5
    i32.const 68
    i32.add
    i32.const 11
    i32.add
    local.set $l9
    local.get $l5
    i32.const 80
    i32.add
    i32.const 8
    i32.or
    local.set $l10
    local.get $l5
    i32.const 80
    i32.add
    i32.const 9
    i32.or
    local.set $l11
    i32.const -10
    local.get $l5
    i32.const 68
    i32.add
    i32.sub
    local.set $l12
    local.get $l5
    i32.const 68
    i32.add
    i32.const 10
    i32.add
    local.set $l13
    local.get $l5
    i32.const 404
    i32.add
    local.set $l14
    local.get $l5
    i32.const 112
    i32.add
    i32.const 4
    i32.or
    local.set $l15
    local.get $l5
    i32.const 400
    i32.add
    local.set $l16
    local.get $l5
    i32.const 56
    i32.add
    local.set $l17
    i32.const 0
    local.set $l18
    i32.const 0
    local.set $l19
    i32.const 0
    local.set $l20
    block $B0
      block $B1
        block $B2
          loop $L3
            local.get $p1
            local.set $l21
            local.get $l20
            i32.const 2147483647
            local.get $l19
            i32.sub
            i32.gt_s
            br_if $B2
            local.get $l20
            local.get $l19
            i32.add
            local.set $l19
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $l21
                      i32.load8_u
                      local.tee $l20
                      i32.eqz
                      br_if $B8
                      local.get $l21
                      local.set $p1
                      loop $L9
                        block $B10
                          block $B11
                            block $B12
                              local.get $l20
                              i32.const 255
                              i32.and
                              local.tee $l20
                              i32.eqz
                              br_if $B12
                              local.get $l20
                              i32.const 37
                              i32.ne
                              br_if $B10
                              local.get $p1
                              local.set $l20
                              loop $L13
                                local.get $p1
                                i32.const 1
                                i32.add
                                i32.load8_u
                                i32.const 37
                                i32.ne
                                br_if $B11
                                local.get $l20
                                i32.const 1
                                i32.add
                                local.set $l20
                                local.get $p1
                                i32.const 2
                                i32.add
                                local.tee $p1
                                i32.load8_u
                                i32.const 37
                                i32.eq
                                br_if $L13
                                br $B11
                              end
                            end
                            local.get $p1
                            local.set $l20
                          end
                          local.get $l20
                          local.get $l21
                          i32.sub
                          local.tee $l20
                          i32.const 2147483647
                          local.get $l19
                          i32.sub
                          local.tee $l22
                          i32.gt_s
                          br_if $B2
                          block $B14
                            local.get $p0
                            i32.eqz
                            br_if $B14
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if $B14
                            local.get $l21
                            local.get $l20
                            local.get $p0
                            call $__fwritex
                            drop
                          end
                          local.get $l20
                          br_if $L3
                          local.get $p1
                          i32.const 1
                          i32.add
                          local.set $l20
                          i32.const -1
                          local.set $l23
                          block $B15
                            local.get $p1
                            i32.load8_s offset=1
                            local.tee $l24
                            i32.const -48
                            i32.add
                            local.tee $l25
                            i32.const 9
                            i32.gt_u
                            br_if $B15
                            local.get $p1
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if $B15
                            local.get $p1
                            i32.const 3
                            i32.add
                            local.set $l20
                            local.get $p1
                            i32.load8_s offset=3
                            local.set $l24
                            i32.const 1
                            local.set $l18
                            local.get $l25
                            local.set $l23
                          end
                          i32.const 0
                          local.set $l26
                          block $B16
                            local.get $l24
                            i32.const -32
                            i32.add
                            local.tee $p1
                            i32.const 31
                            i32.gt_u
                            br_if $B16
                            i32.const 1
                            local.get $p1
                            i32.shl
                            local.tee $p1
                            i32.const 75913
                            i32.and
                            i32.eqz
                            br_if $B16
                            local.get $l20
                            i32.const 1
                            i32.add
                            local.set $l25
                            i32.const 0
                            local.set $l26
                            loop $L17
                              local.get $p1
                              local.get $l26
                              i32.or
                              local.set $l26
                              local.get $l25
                              local.tee $l20
                              i32.load8_s
                              local.tee $l24
                              i32.const -32
                              i32.add
                              local.tee $p1
                              i32.const 32
                              i32.ge_u
                              br_if $B16
                              local.get $l20
                              i32.const 1
                              i32.add
                              local.set $l25
                              i32.const 1
                              local.get $p1
                              i32.shl
                              local.tee $p1
                              i32.const 75913
                              i32.and
                              br_if $L17
                            end
                          end
                          block $B18
                            local.get $l24
                            i32.const 42
                            i32.ne
                            br_if $B18
                            block $B19
                              block $B20
                                local.get $l20
                                i32.load8_s offset=1
                                i32.const -48
                                i32.add
                                local.tee $p1
                                i32.const 9
                                i32.gt_u
                                br_if $B20
                                local.get $l20
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if $B20
                                local.get $p4
                                local.get $p1
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 10
                                i32.store
                                local.get $l20
                                i32.const 3
                                i32.add
                                local.set $l25
                                local.get $l20
                                i32.load8_s offset=1
                                i32.const 3
                                i32.shl
                                local.get $p3
                                i32.add
                                i32.const -384
                                i32.add
                                i32.load
                                local.set $l27
                                i32.const 1
                                local.set $l18
                                br $B19
                              end
                              local.get $l18
                              br_if $B6
                              local.get $l20
                              i32.const 1
                              i32.add
                              local.set $l25
                              block $B21
                                local.get $p0
                                br_if $B21
                                i32.const 0
                                local.set $l18
                                i32.const 0
                                local.set $l27
                                br $B7
                              end
                              local.get $p2
                              local.get $p2
                              i32.load
                              local.tee $p1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get $p1
                              i32.load
                              local.set $l27
                              i32.const 0
                              local.set $l18
                            end
                            local.get $l27
                            i32.const -1
                            i32.gt_s
                            br_if $B7
                            i32.const 0
                            local.get $l27
                            i32.sub
                            local.set $l27
                            local.get $l26
                            i32.const 8192
                            i32.or
                            local.set $l26
                            br $B7
                          end
                          i32.const 0
                          local.set $l27
                          block $B22
                            local.get $l24
                            i32.const -48
                            i32.add
                            local.tee $p1
                            i32.const 9
                            i32.le_u
                            br_if $B22
                            local.get $l20
                            local.set $l25
                            br $B7
                          end
                          i32.const 0
                          local.set $l27
                          loop $L23
                            block $B24
                              local.get $l27
                              i32.const 214748364
                              i32.gt_u
                              br_if $B24
                              i32.const -1
                              local.get $l27
                              i32.const 10
                              i32.mul
                              local.tee $l25
                              local.get $p1
                              i32.add
                              local.get $p1
                              i32.const 2147483647
                              local.get $l25
                              i32.sub
                              i32.gt_u
                              select
                              local.set $l27
                              local.get $l20
                              i32.load8_s offset=1
                              local.set $p1
                              local.get $l20
                              i32.const 1
                              i32.add
                              local.tee $l25
                              local.set $l20
                              local.get $p1
                              i32.const -48
                              i32.add
                              local.tee $p1
                              i32.const 10
                              i32.lt_u
                              br_if $L23
                              local.get $l27
                              i32.const 0
                              i32.lt_s
                              br_if $B2
                              br $B7
                            end
                            local.get $l20
                            i32.load8_s offset=1
                            local.set $p1
                            i32.const -1
                            local.set $l27
                            local.get $l20
                            i32.const 1
                            i32.add
                            local.set $l20
                            local.get $p1
                            i32.const -48
                            i32.add
                            local.tee $p1
                            i32.const 10
                            i32.lt_u
                            br_if $L23
                            br $B2
                          end
                        end
                        local.get $p1
                        i32.const 1
                        i32.add
                        local.tee $p1
                        i32.load8_u
                        local.set $l20
                        br $L9
                      end
                    end
                    local.get $p0
                    br_if $B0
                    block $B25
                      local.get $l18
                      br_if $B25
                      i32.const 0
                      local.set $l19
                      br $B0
                    end
                    block $B26
                      block $B27
                        local.get $p4
                        i32.load offset=4
                        local.tee $p1
                        br_if $B27
                        i32.const 1
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 8
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B28
                        local.get $p4
                        i32.load offset=8
                        local.tee $p1
                        br_if $B28
                        i32.const 2
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 16
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B29
                        local.get $p4
                        i32.load offset=12
                        local.tee $p1
                        br_if $B29
                        i32.const 3
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 24
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B30
                        local.get $p4
                        i32.load offset=16
                        local.tee $p1
                        br_if $B30
                        i32.const 4
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 32
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B31
                        local.get $p4
                        i32.load offset=20
                        local.tee $p1
                        br_if $B31
                        i32.const 5
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 40
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B32
                        local.get $p4
                        i32.load offset=24
                        local.tee $p1
                        br_if $B32
                        i32.const 6
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 48
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B33
                        local.get $p4
                        i32.load offset=28
                        local.tee $p1
                        br_if $B33
                        i32.const 7
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 56
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B34
                        local.get $p4
                        i32.load offset=32
                        local.tee $p1
                        br_if $B34
                        i32.const 8
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 64
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      block $B35
                        local.get $p4
                        i32.load offset=36
                        local.tee $p1
                        br_if $B35
                        i32.const 9
                        local.set $p1
                        br $B26
                      end
                      local.get $p3
                      i32.const 72
                      i32.add
                      local.get $p1
                      local.get $p2
                      call $pop_arg
                      i32.const 1
                      local.set $l19
                      br $B0
                    end
                    local.get $p1
                    i32.const 2
                    i32.shl
                    local.set $p1
                    loop $L36
                      local.get $p4
                      local.get $p1
                      i32.add
                      i32.load
                      br_if $B6
                      local.get $p1
                      i32.const 4
                      i32.add
                      local.tee $p1
                      i32.const 40
                      i32.ne
                      br_if $L36
                    end
                    i32.const 1
                    local.set $l19
                    br $B0
                  end
                  i32.const 0
                  local.set $l20
                  i32.const -1
                  local.set $l24
                  block $B37
                    block $B38
                      local.get $l25
                      i32.load8_u
                      i32.const 46
                      i32.eq
                      br_if $B38
                      local.get $l25
                      local.set $p1
                      i32.const 0
                      local.set $l28
                      br $B37
                    end
                    block $B39
                      local.get $l25
                      i32.load8_s offset=1
                      local.tee $l24
                      i32.const 42
                      i32.ne
                      br_if $B39
                      block $B40
                        block $B41
                          local.get $l25
                          i32.load8_s offset=2
                          i32.const -48
                          i32.add
                          local.tee $p1
                          i32.const 9
                          i32.gt_u
                          br_if $B41
                          local.get $l25
                          i32.load8_u offset=3
                          i32.const 36
                          i32.ne
                          br_if $B41
                          local.get $p4
                          local.get $p1
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.const 10
                          i32.store
                          local.get $l25
                          i32.const 4
                          i32.add
                          local.set $p1
                          local.get $l25
                          i32.load8_s offset=2
                          i32.const 3
                          i32.shl
                          local.get $p3
                          i32.add
                          i32.const -384
                          i32.add
                          i32.load
                          local.set $l24
                          br $B40
                        end
                        local.get $l18
                        br_if $B6
                        local.get $l25
                        i32.const 2
                        i32.add
                        local.set $p1
                        block $B42
                          local.get $p0
                          br_if $B42
                          i32.const 0
                          local.set $l24
                          br $B40
                        end
                        local.get $p2
                        local.get $p2
                        i32.load
                        local.tee $l25
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $l25
                        i32.load
                        local.set $l24
                      end
                      local.get $l24
                      i32.const -1
                      i32.xor
                      i32.const 31
                      i32.shr_u
                      local.set $l28
                      br $B37
                    end
                    local.get $l25
                    i32.const 1
                    i32.add
                    local.set $p1
                    block $B43
                      local.get $l24
                      i32.const -48
                      i32.add
                      local.tee $l29
                      i32.const 9
                      i32.le_u
                      br_if $B43
                      i32.const 1
                      local.set $l28
                      i32.const 0
                      local.set $l24
                      br $B37
                    end
                    i32.const 0
                    local.set $l25
                    loop $L44
                      i32.const -1
                      local.set $l24
                      block $B45
                        local.get $l25
                        i32.const 214748364
                        i32.gt_u
                        br_if $B45
                        i32.const -1
                        local.get $l25
                        i32.const 10
                        i32.mul
                        local.tee $l25
                        local.get $l29
                        i32.add
                        local.get $l29
                        i32.const 2147483647
                        local.get $l25
                        i32.sub
                        i32.gt_u
                        select
                        local.set $l24
                      end
                      i32.const 1
                      local.set $l28
                      local.get $l24
                      local.set $l25
                      local.get $p1
                      i32.const 1
                      i32.add
                      local.tee $p1
                      i32.load8_s
                      i32.const -48
                      i32.add
                      local.tee $l29
                      i32.const 10
                      i32.lt_u
                      br_if $L44
                    end
                  end
                  loop $L46
                    local.get $l20
                    local.set $l25
                    local.get $p1
                    i32.load8_s
                    local.tee $l20
                    i32.const -123
                    i32.add
                    i32.const -58
                    i32.lt_u
                    br_if $B6
                    local.get $p1
                    i32.const 1
                    i32.add
                    local.set $p1
                    local.get $l20
                    local.get $l25
                    i32.const 58
                    i32.mul
                    i32.add
                    i32.const 2879
                    i32.add
                    i32.load8_u
                    local.tee $l20
                    i32.const -1
                    i32.add
                    i32.const 8
                    i32.lt_u
                    br_if $L46
                  end
                  block $B47
                    block $B48
                      block $B49
                        local.get $l20
                        i32.const 27
                        i32.eq
                        br_if $B49
                        local.get $l20
                        i32.eqz
                        br_if $B6
                        block $B50
                          local.get $l23
                          i32.const 0
                          i32.lt_s
                          br_if $B50
                          local.get $p4
                          local.get $l23
                          i32.const 2
                          i32.shl
                          i32.add
                          local.get $l20
                          i32.store
                          local.get $l5
                          local.get $p3
                          local.get $l23
                          i32.const 3
                          i32.shl
                          i32.add
                          i64.load
                          i64.store offset=56
                          br $B48
                        end
                        block $B51
                          local.get $p0
                          br_if $B51
                          i32.const 0
                          local.set $l19
                          br $B0
                        end
                        local.get $l5
                        i32.const 56
                        i32.add
                        local.get $l20
                        local.get $p2
                        call $pop_arg
                        br $B47
                      end
                      local.get $l23
                      i32.const -1
                      i32.gt_s
                      br_if $B6
                    end
                    i32.const 0
                    local.set $l20
                    local.get $p0
                    i32.eqz
                    br_if $L3
                  end
                  local.get $l26
                  i32.const -65537
                  i32.and
                  local.tee $l29
                  local.get $l26
                  local.get $l26
                  i32.const 8192
                  i32.and
                  select
                  local.set $l30
                  block $B52
                    block $B53
                      block $B54
                        block $B55
                          block $B56
                            block $B57
                              block $B58
                                block $B59
                                  block $B60
                                    block $B61
                                      block $B62
                                        block $B63
                                          block $B64
                                            block $B65
                                              block $B66
                                                block $B67
                                                  block $B68
                                                    block $B69
                                                      block $B70
                                                        local.get $p1
                                                        i32.const -1
                                                        i32.add
                                                        i32.load8_s
                                                        local.tee $l20
                                                        i32.const -33
                                                        i32.and
                                                        local.get $l20
                                                        local.get $l20
                                                        i32.const 15
                                                        i32.and
                                                        i32.const 3
                                                        i32.eq
                                                        select
                                                        local.get $l20
                                                        local.get $l25
                                                        select
                                                        local.tee $l31
                                                        i32.const -65
                                                        i32.add
                                                        br_table $B54 $B53 $B57 $B53 $B54 $B54 $B54 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B58 $B53 $B53 $B53 $B53 $B67 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B53 $B54 $B53 $B62 $B65 $B54 $B54 $B54 $B53 $B65 $B53 $B53 $B53 $B61 $B69 $B66 $B68 $B53 $B53 $B60 $B53 $B70 $B53 $B53 $B67 $B53
                                                      end
                                                      i32.const 0
                                                      local.set $l23
                                                      i32.const 1024
                                                      local.set $l32
                                                      local.get $l5
                                                      i64.load offset=56
                                                      local.set $l33
                                                      br $B64
                                                    end
                                                    i32.const 0
                                                    local.set $l20
                                                    block $B71
                                                      block $B72
                                                        block $B73
                                                          block $B74
                                                            block $B75
                                                              block $B76
                                                                block $B77
                                                                  local.get $l25
                                                                  i32.const 255
                                                                  i32.and
                                                                  br_table $B77 $B76 $B75 $B74 $B73 $L3 $B72 $B71 $L3
                                                                end
                                                                local.get $l5
                                                                i32.load offset=56
                                                                local.get $l19
                                                                i32.store
                                                                br $L3
                                                              end
                                                              local.get $l5
                                                              i32.load offset=56
                                                              local.get $l19
                                                              i32.store
                                                              br $L3
                                                            end
                                                            local.get $l5
                                                            i32.load offset=56
                                                            local.get $l19
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br $L3
                                                          end
                                                          local.get $l5
                                                          i32.load offset=56
                                                          local.get $l19
                                                          i32.store16
                                                          br $L3
                                                        end
                                                        local.get $l5
                                                        i32.load offset=56
                                                        local.get $l19
                                                        i32.store8
                                                        br $L3
                                                      end
                                                      local.get $l5
                                                      i32.load offset=56
                                                      local.get $l19
                                                      i32.store
                                                      br $L3
                                                    end
                                                    local.get $l5
                                                    i32.load offset=56
                                                    local.get $l19
                                                    i64.extend_i32_s
                                                    i64.store
                                                    br $L3
                                                  end
                                                  local.get $l24
                                                  i32.const 8
                                                  local.get $l24
                                                  i32.const 8
                                                  i32.gt_u
                                                  select
                                                  local.set $l24
                                                  local.get $l30
                                                  i32.const 8
                                                  i32.or
                                                  local.set $l30
                                                  i32.const 120
                                                  local.set $l31
                                                end
                                                i32.const 0
                                                local.set $l23
                                                i32.const 1024
                                                local.set $l32
                                                block $B78
                                                  local.get $l5
                                                  i64.load offset=56
                                                  local.tee $l33
                                                  i64.eqz
                                                  i32.eqz
                                                  br_if $B78
                                                  local.get $l17
                                                  local.set $l21
                                                  br $B63
                                                end
                                                local.get $l31
                                                i32.const 32
                                                i32.and
                                                local.set $l25
                                                local.get $l17
                                                local.set $l21
                                                loop $L79
                                                  local.get $l21
                                                  i32.const -1
                                                  i32.add
                                                  local.tee $l21
                                                  local.get $l33
                                                  i32.wrap_i64
                                                  i32.const 15
                                                  i32.and
                                                  i32.const 3408
                                                  i32.add
                                                  i32.load8_u
                                                  local.get $l25
                                                  i32.or
                                                  i32.store8
                                                  local.get $l33
                                                  i64.const 15
                                                  i64.gt_u
                                                  local.set $l20
                                                  local.get $l33
                                                  i64.const 4
                                                  i64.shr_u
                                                  local.set $l33
                                                  local.get $l20
                                                  br_if $L79
                                                end
                                                local.get $l30
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if $B63
                                                local.get $l31
                                                i32.const 4
                                                i32.shr_s
                                                i32.const 1024
                                                i32.add
                                                local.set $l32
                                                i32.const 2
                                                local.set $l23
                                                br $B63
                                              end
                                              local.get $l17
                                              local.set $l21
                                              block $B80
                                                local.get $l5
                                                i64.load offset=56
                                                local.tee $l33
                                                i64.eqz
                                                br_if $B80
                                                local.get $l17
                                                local.set $l21
                                                loop $L81
                                                  local.get $l21
                                                  i32.const -1
                                                  i32.add
                                                  local.tee $l21
                                                  local.get $l33
                                                  i32.wrap_i64
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get $l33
                                                  i64.const 7
                                                  i64.gt_u
                                                  local.set $l20
                                                  local.get $l33
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set $l33
                                                  local.get $l20
                                                  br_if $L81
                                                end
                                              end
                                              i32.const 0
                                              local.set $l23
                                              i32.const 1024
                                              local.set $l32
                                              local.get $l30
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if $B63
                                              local.get $l24
                                              local.get $l17
                                              local.get $l21
                                              i32.sub
                                              local.tee $l20
                                              i32.const 1
                                              i32.add
                                              local.get $l24
                                              local.get $l20
                                              i32.gt_s
                                              select
                                              local.set $l24
                                              br $B63
                                            end
                                            block $B82
                                              local.get $l5
                                              i64.load offset=56
                                              local.tee $l33
                                              i64.const -1
                                              i64.gt_s
                                              br_if $B82
                                              local.get $l5
                                              i64.const 0
                                              local.get $l33
                                              i64.sub
                                              local.tee $l33
                                              i64.store offset=56
                                              i32.const 1
                                              local.set $l23
                                              i32.const 1024
                                              local.set $l32
                                              br $B64
                                            end
                                            block $B83
                                              local.get $l30
                                              i32.const 2048
                                              i32.and
                                              i32.eqz
                                              br_if $B83
                                              i32.const 1
                                              local.set $l23
                                              i32.const 1025
                                              local.set $l32
                                              br $B64
                                            end
                                            i32.const 1026
                                            i32.const 1024
                                            local.get $l30
                                            i32.const 1
                                            i32.and
                                            local.tee $l23
                                            select
                                            local.set $l32
                                          end
                                          block $B84
                                            block $B85
                                              local.get $l33
                                              i64.const 4294967296
                                              i64.ge_u
                                              br_if $B85
                                              local.get $l33
                                              local.set $l34
                                              local.get $l17
                                              local.set $l21
                                              br $B84
                                            end
                                            local.get $l17
                                            local.set $l21
                                            loop $L86
                                              local.get $l21
                                              i32.const -1
                                              i32.add
                                              local.tee $l21
                                              local.get $l33
                                              local.get $l33
                                              i64.const 10
                                              i64.div_u
                                              local.tee $l34
                                              i64.const 10
                                              i64.mul
                                              i64.sub
                                              i32.wrap_i64
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get $l33
                                              i64.const 42949672959
                                              i64.gt_u
                                              local.set $l20
                                              local.get $l34
                                              local.set $l33
                                              local.get $l20
                                              br_if $L86
                                            end
                                          end
                                          local.get $l34
                                          i32.wrap_i64
                                          local.tee $l20
                                          i32.eqz
                                          br_if $B63
                                          loop $L87
                                            local.get $l21
                                            i32.const -1
                                            i32.add
                                            local.tee $l21
                                            local.get $l20
                                            local.get $l20
                                            i32.const 10
                                            i32.div_u
                                            local.tee $l25
                                            i32.const 10
                                            i32.mul
                                            i32.sub
                                            i32.const 48
                                            i32.or
                                            i32.store8
                                            local.get $l20
                                            i32.const 9
                                            i32.gt_u
                                            local.set $l26
                                            local.get $l25
                                            local.set $l20
                                            local.get $l26
                                            br_if $L87
                                          end
                                        end
                                        block $B88
                                          local.get $l28
                                          i32.eqz
                                          br_if $B88
                                          local.get $l24
                                          i32.const 0
                                          i32.lt_s
                                          br_if $B2
                                        end
                                        local.get $l30
                                        i32.const -65537
                                        i32.and
                                        local.get $l30
                                        local.get $l28
                                        select
                                        local.set $l29
                                        block $B89
                                          local.get $l5
                                          i64.load offset=56
                                          local.tee $l33
                                          i64.const 0
                                          i64.ne
                                          br_if $B89
                                          i32.const 0
                                          local.set $l26
                                          local.get $l24
                                          br_if $B89
                                          local.get $l17
                                          local.set $l21
                                          local.get $l17
                                          local.set $l20
                                          br $B52
                                        end
                                        local.get $l24
                                        local.get $l17
                                        local.get $l21
                                        i32.sub
                                        local.get $l33
                                        i64.eqz
                                        i32.add
                                        local.tee $l20
                                        local.get $l24
                                        local.get $l20
                                        i32.gt_s
                                        select
                                        local.set $l26
                                        local.get $l17
                                        local.set $l20
                                        br $B52
                                      end
                                      local.get $l5
                                      local.get $l5
                                      i64.load offset=56
                                      i64.store8 offset=55
                                      i32.const 0
                                      local.set $l23
                                      i32.const 1024
                                      local.set $l32
                                      i32.const 1
                                      local.set $l26
                                      local.get $l7
                                      local.set $l21
                                      local.get $l17
                                      local.set $l20
                                      br $B52
                                    end
                                    i32.const 0
                                    i32.load offset=3664
                                    call $strerror
                                    local.set $l21
                                    br $B59
                                  end
                                  local.get $l5
                                  i32.load offset=56
                                  local.tee $l20
                                  i32.const 1071
                                  local.get $l20
                                  select
                                  local.set $l21
                                end
                                i32.const 0
                                local.set $l23
                                local.get $l21
                                local.get $l21
                                i32.const 2147483647
                                local.get $l24
                                local.get $l24
                                i32.const 0
                                i32.lt_s
                                select
                                call $strnlen
                                local.tee $l26
                                i32.add
                                local.set $l20
                                i32.const 1024
                                local.set $l32
                                local.get $l24
                                i32.const -1
                                i32.gt_s
                                br_if $B52
                                local.get $l20
                                i32.load8_u
                                i32.eqz
                                br_if $B52
                                br $B2
                              end
                              local.get $l5
                              i32.load offset=56
                              local.set $l25
                              local.get $l24
                              br_if $B56
                              i32.const 0
                              local.set $l20
                              br $B55
                            end
                            local.get $l5
                            i32.const 0
                            i32.store offset=12
                            local.get $l5
                            local.get $l5
                            i64.load offset=56
                            i64.store32 offset=8
                            local.get $l5
                            local.get $l5
                            i32.const 8
                            i32.add
                            i32.store offset=56
                            i32.const -1
                            local.set $l24
                            local.get $l5
                            i32.const 8
                            i32.add
                            local.set $l25
                          end
                          i32.const 0
                          local.set $l20
                          local.get $l25
                          local.set $l21
                          block $B90
                            loop $L91
                              local.get $l21
                              i32.load
                              local.tee $l22
                              i32.eqz
                              br_if $B90
                              block $B92
                                local.get $l5
                                i32.const 4
                                i32.add
                                local.get $l22
                                call $wctomb
                                local.tee $l22
                                i32.const 0
                                i32.lt_s
                                local.tee $l26
                                br_if $B92
                                local.get $l22
                                local.get $l24
                                local.get $l20
                                i32.sub
                                i32.gt_u
                                br_if $B92
                                local.get $l21
                                i32.const 4
                                i32.add
                                local.set $l21
                                local.get $l24
                                local.get $l22
                                local.get $l20
                                i32.add
                                local.tee $l20
                                i32.gt_u
                                br_if $L91
                                br $B90
                              end
                            end
                            local.get $l26
                            br_if $B1
                          end
                          local.get $l20
                          i32.const 0
                          i32.lt_s
                          br_if $B2
                        end
                        block $B93
                          local.get $l30
                          i32.const 73728
                          i32.and
                          local.tee $l26
                          br_if $B93
                          local.get $l27
                          local.get $l20
                          i32.le_s
                          br_if $B93
                          local.get $l5
                          i32.const 112
                          i32.add
                          i32.const 32
                          local.get $l27
                          local.get $l20
                          i32.sub
                          local.tee $l21
                          i32.const 256
                          local.get $l21
                          i32.const 256
                          i32.lt_u
                          local.tee $l22
                          select
                          call $memset
                          drop
                          block $B94
                            local.get $l22
                            br_if $B94
                            loop $L95
                              block $B96
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B96
                                local.get $l5
                                i32.const 112
                                i32.add
                                i32.const 256
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l21
                              i32.const -256
                              i32.add
                              local.tee $l21
                              i32.const 255
                              i32.gt_u
                              br_if $L95
                            end
                          end
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B93
                          local.get $l5
                          i32.const 112
                          i32.add
                          local.get $l21
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        block $B97
                          local.get $l20
                          i32.eqz
                          br_if $B97
                          i32.const 0
                          local.set $l21
                          loop $L98
                            local.get $l25
                            i32.load
                            local.tee $l22
                            i32.eqz
                            br_if $B97
                            local.get $l5
                            i32.const 4
                            i32.add
                            local.get $l22
                            call $wctomb
                            local.tee $l22
                            local.get $l21
                            i32.add
                            local.tee $l21
                            local.get $l20
                            i32.gt_u
                            br_if $B97
                            block $B99
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B99
                              local.get $l5
                              i32.const 4
                              i32.add
                              local.get $l22
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l25
                            i32.const 4
                            i32.add
                            local.set $l25
                            local.get $l21
                            local.get $l20
                            i32.lt_u
                            br_if $L98
                          end
                        end
                        block $B100
                          local.get $l26
                          i32.const 8192
                          i32.ne
                          br_if $B100
                          local.get $l27
                          local.get $l20
                          i32.le_s
                          br_if $B100
                          local.get $l5
                          i32.const 112
                          i32.add
                          i32.const 32
                          local.get $l27
                          local.get $l20
                          i32.sub
                          local.tee $l21
                          i32.const 256
                          local.get $l21
                          i32.const 256
                          i32.lt_u
                          local.tee $l22
                          select
                          call $memset
                          drop
                          block $B101
                            local.get $l22
                            br_if $B101
                            loop $L102
                              block $B103
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B103
                                local.get $l5
                                i32.const 112
                                i32.add
                                i32.const 256
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l21
                              i32.const -256
                              i32.add
                              local.tee $l21
                              i32.const 255
                              i32.gt_u
                              br_if $L102
                            end
                          end
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B100
                          local.get $l5
                          i32.const 112
                          i32.add
                          local.get $l21
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l27
                        local.get $l20
                        local.get $l27
                        local.get $l20
                        i32.gt_s
                        select
                        local.set $l20
                        br $L3
                      end
                      block $B104
                        local.get $l28
                        i32.eqz
                        br_if $B104
                        local.get $l24
                        i32.const 0
                        i32.lt_s
                        br_if $B2
                      end
                      local.get $l5
                      f64.load offset=56
                      local.set $l35
                      local.get $l5
                      i32.const 0
                      i32.store offset=108
                      block $B105
                        block $B106
                          local.get $l35
                          i64.reinterpret_f64
                          i64.const -1
                          i64.gt_s
                          br_if $B106
                          local.get $l35
                          f64.neg
                          local.set $l35
                          i32.const 1
                          local.set $l36
                          i32.const 0
                          local.set $l37
                          i32.const 1034
                          local.set $l38
                          br $B105
                        end
                        block $B107
                          local.get $l30
                          i32.const 2048
                          i32.and
                          i32.eqz
                          br_if $B107
                          i32.const 1
                          local.set $l36
                          i32.const 0
                          local.set $l37
                          i32.const 1037
                          local.set $l38
                          br $B105
                        end
                        i32.const 1040
                        i32.const 1035
                        local.get $l30
                        i32.const 1
                        i32.and
                        local.tee $l36
                        select
                        local.set $l38
                        local.get $l36
                        i32.eqz
                        local.set $l37
                      end
                      block $B108
                        local.get $l35
                        f64.abs
                        f64.const inf (;=inf;)
                        f64.lt
                        br_if $B108
                        local.get $l36
                        i32.const 3
                        i32.add
                        local.set $l21
                        block $B109
                          local.get $l30
                          i32.const 8192
                          i32.and
                          br_if $B109
                          local.get $l27
                          local.get $l21
                          i32.le_s
                          br_if $B109
                          local.get $l5
                          i32.const 624
                          i32.add
                          i32.const 32
                          local.get $l27
                          local.get $l21
                          i32.sub
                          local.tee $l20
                          i32.const 256
                          local.get $l20
                          i32.const 256
                          i32.lt_u
                          local.tee $l22
                          select
                          call $memset
                          drop
                          block $B110
                            local.get $l22
                            br_if $B110
                            loop $L111
                              block $B112
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B112
                                local.get $l5
                                i32.const 624
                                i32.add
                                i32.const 256
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l20
                              i32.const -256
                              i32.add
                              local.tee $l20
                              i32.const 255
                              i32.gt_u
                              br_if $L111
                            end
                          end
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B109
                          local.get $l5
                          i32.const 624
                          i32.add
                          local.get $l20
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        block $B113
                          local.get $p0
                          i32.load
                          local.tee $l20
                          i32.const 32
                          i32.and
                          br_if $B113
                          local.get $l38
                          local.get $l36
                          local.get $p0
                          call $__fwritex
                          drop
                          local.get $p0
                          i32.load
                          local.set $l20
                        end
                        block $B114
                          local.get $l20
                          i32.const 32
                          i32.and
                          br_if $B114
                          i32.const 1053
                          i32.const 1061
                          local.get $l31
                          i32.const 32
                          i32.and
                          local.tee $l20
                          select
                          i32.const 1057
                          i32.const 1065
                          local.get $l20
                          select
                          local.get $l35
                          local.get $l35
                          f64.ne
                          select
                          i32.const 3
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        block $B115
                          local.get $l30
                          i32.const 73728
                          i32.and
                          i32.const 8192
                          i32.ne
                          br_if $B115
                          local.get $l27
                          local.get $l21
                          i32.le_s
                          br_if $B115
                          local.get $l5
                          i32.const 624
                          i32.add
                          i32.const 32
                          local.get $l27
                          local.get $l21
                          i32.sub
                          local.tee $l20
                          i32.const 256
                          local.get $l20
                          i32.const 256
                          i32.lt_u
                          local.tee $l22
                          select
                          call $memset
                          drop
                          block $B116
                            local.get $l22
                            br_if $B116
                            loop $L117
                              block $B118
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B118
                                local.get $l5
                                i32.const 624
                                i32.add
                                i32.const 256
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l20
                              i32.const -256
                              i32.add
                              local.tee $l20
                              i32.const 255
                              i32.gt_u
                              br_if $L117
                            end
                          end
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B115
                          local.get $l5
                          i32.const 624
                          i32.add
                          local.get $l20
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l27
                        local.get $l21
                        local.get $l27
                        local.get $l21
                        i32.gt_s
                        select
                        local.set $l20
                        br $L3
                      end
                      block $B119
                        block $B120
                          block $B121
                            local.get $l35
                            local.get $l5
                            i32.const 108
                            i32.add
                            call $frexp
                            local.tee $l35
                            local.get $l35
                            f64.add
                            local.tee $l35
                            f64.const 0x0p+0 (;=0;)
                            f64.eq
                            br_if $B121
                            local.get $l5
                            local.get $l5
                            i32.load offset=108
                            local.tee $l20
                            i32.const -1
                            i32.add
                            i32.store offset=108
                            local.get $l31
                            i32.const 32
                            i32.or
                            local.tee $l39
                            i32.const 97
                            i32.ne
                            br_if $B120
                            br $B5
                          end
                          local.get $l31
                          i32.const 32
                          i32.or
                          local.tee $l39
                          i32.const 97
                          i32.eq
                          br_if $B5
                          i32.const 6
                          local.get $l24
                          local.get $l24
                          i32.const 0
                          i32.lt_s
                          select
                          local.set $l23
                          local.get $l5
                          i32.load offset=108
                          local.set $l25
                          br $B119
                        end
                        local.get $l5
                        local.get $l20
                        i32.const -29
                        i32.add
                        local.tee $l25
                        i32.store offset=108
                        i32.const 6
                        local.get $l24
                        local.get $l24
                        i32.const 0
                        i32.lt_s
                        select
                        local.set $l23
                        local.get $l35
                        f64.const 0x1p+28 (;=2.68435e+08;)
                        f64.mul
                        local.set $l35
                      end
                      local.get $l5
                      i32.const 112
                      i32.add
                      local.get $l16
                      local.get $l25
                      i32.const 0
                      i32.lt_s
                      local.tee $l40
                      select
                      local.tee $l32
                      local.set $l21
                      loop $L122
                        block $B123
                          block $B124
                            local.get $l35
                            f64.const 0x1p+32 (;=4.29497e+09;)
                            f64.lt
                            local.get $l35
                            f64.const 0x0p+0 (;=0;)
                            f64.ge
                            i32.and
                            i32.eqz
                            br_if $B124
                            local.get $l35
                            i32.trunc_f64_u
                            local.set $l20
                            br $B123
                          end
                          i32.const 0
                          local.set $l20
                        end
                        local.get $l21
                        local.get $l20
                        i32.store
                        local.get $l21
                        i32.const 4
                        i32.add
                        local.set $l21
                        local.get $l35
                        local.get $l20
                        f64.convert_i32_u
                        f64.sub
                        f64.const 0x1.dcd65p+29 (;=1e+09;)
                        f64.mul
                        local.tee $l35
                        f64.const 0x0p+0 (;=0;)
                        f64.ne
                        br_if $L122
                      end
                      block $B125
                        block $B126
                          local.get $l25
                          i32.const 1
                          i32.ge_s
                          br_if $B126
                          local.get $l21
                          local.set $l20
                          local.get $l32
                          local.set $l22
                          br $B125
                        end
                        local.get $l32
                        local.set $l22
                        loop $L127
                          local.get $l25
                          i32.const 29
                          local.get $l25
                          i32.const 29
                          i32.lt_u
                          select
                          local.set $l25
                          block $B128
                            local.get $l21
                            i32.const -4
                            i32.add
                            local.tee $l20
                            local.get $l22
                            i32.lt_u
                            br_if $B128
                            local.get $l25
                            i64.extend_i32_u
                            local.set $l34
                            i64.const 0
                            local.set $l33
                            loop $L129
                              local.get $l20
                              local.get $l20
                              i64.load32_u
                              local.get $l34
                              i64.shl
                              local.get $l33
                              i64.const 4294967295
                              i64.and
                              i64.add
                              local.tee $l33
                              local.get $l33
                              i64.const 1000000000
                              i64.div_u
                              local.tee $l33
                              i64.const 1000000000
                              i64.mul
                              i64.sub
                              i64.store32
                              local.get $l20
                              i32.const -4
                              i32.add
                              local.tee $l20
                              local.get $l22
                              i32.ge_u
                              br_if $L129
                            end
                            local.get $l33
                            i32.wrap_i64
                            local.tee $l20
                            i32.eqz
                            br_if $B128
                            local.get $l22
                            i32.const -4
                            i32.add
                            local.tee $l22
                            local.get $l20
                            i32.store
                          end
                          block $B130
                            loop $L131
                              local.get $l21
                              local.tee $l20
                              local.get $l22
                              i32.le_u
                              br_if $B130
                              local.get $l20
                              i32.const -4
                              i32.add
                              local.tee $l21
                              i32.load
                              i32.eqz
                              br_if $L131
                            end
                          end
                          local.get $l5
                          local.get $l5
                          i32.load offset=108
                          local.get $l25
                          i32.sub
                          local.tee $l25
                          i32.store offset=108
                          local.get $l20
                          local.set $l21
                          local.get $l25
                          i32.const 0
                          i32.gt_s
                          br_if $L127
                        end
                      end
                      block $B132
                        local.get $l25
                        i32.const -1
                        i32.gt_s
                        br_if $B132
                        local.get $l23
                        i32.const 25
                        i32.add
                        i32.const 9
                        i32.div_u
                        i32.const 1
                        i32.add
                        local.set $l41
                        loop $L133
                          i32.const 0
                          local.get $l25
                          i32.sub
                          local.tee $l21
                          i32.const 9
                          local.get $l21
                          i32.const 9
                          i32.lt_u
                          select
                          local.set $l24
                          block $B134
                            block $B135
                              local.get $l22
                              local.get $l20
                              i32.lt_u
                              br_if $B135
                              local.get $l22
                              i32.load
                              local.set $l21
                              br $B134
                            end
                            i32.const 1000000000
                            local.get $l24
                            i32.shr_u
                            local.set $l29
                            i32.const -1
                            local.get $l24
                            i32.shl
                            i32.const -1
                            i32.xor
                            local.set $l28
                            i32.const 0
                            local.set $l25
                            local.get $l22
                            local.set $l21
                            loop $L136
                              local.get $l21
                              local.get $l21
                              i32.load
                              local.tee $l26
                              local.get $l24
                              i32.shr_u
                              local.get $l25
                              i32.add
                              i32.store
                              local.get $l26
                              local.get $l28
                              i32.and
                              local.get $l29
                              i32.mul
                              local.set $l25
                              local.get $l21
                              i32.const 4
                              i32.add
                              local.tee $l21
                              local.get $l20
                              i32.lt_u
                              br_if $L136
                            end
                            local.get $l22
                            i32.load
                            local.set $l21
                            local.get $l25
                            i32.eqz
                            br_if $B134
                            local.get $l20
                            local.get $l25
                            i32.store
                            local.get $l20
                            i32.const 4
                            i32.add
                            local.set $l20
                          end
                          local.get $l5
                          local.get $l5
                          i32.load offset=108
                          local.get $l24
                          i32.add
                          local.tee $l25
                          i32.store offset=108
                          local.get $l32
                          local.get $l22
                          local.get $l21
                          i32.eqz
                          i32.const 2
                          i32.shl
                          i32.add
                          local.tee $l22
                          local.get $l39
                          i32.const 102
                          i32.eq
                          select
                          local.tee $l21
                          local.get $l41
                          i32.const 2
                          i32.shl
                          i32.add
                          local.get $l20
                          local.get $l20
                          local.get $l21
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          local.get $l41
                          i32.gt_s
                          select
                          local.set $l20
                          local.get $l25
                          i32.const 0
                          i32.lt_s
                          br_if $L133
                        end
                      end
                      i32.const 0
                      local.set $l26
                      block $B137
                        local.get $l22
                        local.get $l20
                        i32.ge_u
                        br_if $B137
                        local.get $l32
                        local.get $l22
                        i32.sub
                        i32.const 2
                        i32.shr_s
                        i32.const 9
                        i32.mul
                        local.set $l26
                        local.get $l22
                        i32.load
                        local.tee $l25
                        i32.const 10
                        i32.lt_u
                        br_if $B137
                        i32.const 10
                        local.set $l21
                        loop $L138
                          local.get $l26
                          i32.const 1
                          i32.add
                          local.set $l26
                          local.get $l25
                          local.get $l21
                          i32.const 10
                          i32.mul
                          local.tee $l21
                          i32.ge_u
                          br_if $L138
                        end
                      end
                      block $B139
                        local.get $l23
                        i32.const 0
                        local.get $l26
                        local.get $l39
                        i32.const 102
                        i32.eq
                        select
                        i32.sub
                        local.get $l23
                        i32.const 0
                        i32.ne
                        local.get $l39
                        i32.const 103
                        i32.eq
                        local.tee $l28
                        i32.and
                        i32.sub
                        local.tee $l21
                        local.get $l20
                        local.get $l32
                        i32.sub
                        i32.const 2
                        i32.shr_s
                        i32.const 9
                        i32.mul
                        i32.const -9
                        i32.add
                        i32.ge_s
                        br_if $B139
                        local.get $l21
                        i32.const 9216
                        i32.add
                        local.tee $l25
                        i32.const 9
                        i32.div_s
                        local.tee $l24
                        i32.const 2
                        i32.shl
                        local.get $l15
                        local.get $l14
                        local.get $l40
                        select
                        i32.add
                        local.tee $l40
                        i32.const -4096
                        i32.add
                        local.set $l29
                        i32.const 10
                        local.set $l21
                        block $B140
                          local.get $l25
                          local.get $l24
                          i32.const 9
                          i32.mul
                          i32.sub
                          local.tee $l24
                          i32.const 7
                          i32.gt_s
                          br_if $B140
                          i32.const 8
                          local.get $l24
                          i32.sub
                          local.tee $l41
                          i32.const 7
                          i32.and
                          local.set $l25
                          i32.const 10
                          local.set $l21
                          block $B141
                            local.get $l24
                            i32.const -1
                            i32.add
                            i32.const 7
                            i32.lt_u
                            br_if $B141
                            local.get $l41
                            i32.const -8
                            i32.and
                            local.set $l24
                            i32.const 10
                            local.set $l21
                            loop $L142
                              local.get $l21
                              i32.const 100000000
                              i32.mul
                              local.set $l21
                              local.get $l24
                              i32.const -8
                              i32.add
                              local.tee $l24
                              br_if $L142
                            end
                          end
                          local.get $l25
                          i32.eqz
                          br_if $B140
                          loop $L143
                            local.get $l21
                            i32.const 10
                            i32.mul
                            local.set $l21
                            local.get $l25
                            i32.const -1
                            i32.add
                            local.tee $l25
                            br_if $L143
                          end
                        end
                        local.get $l29
                        i32.const 4
                        i32.add
                        local.set $l41
                        block $B144
                          block $B145
                            local.get $l29
                            i32.load
                            local.tee $l25
                            local.get $l25
                            local.get $l21
                            i32.div_u
                            local.tee $l39
                            local.get $l21
                            i32.mul
                            i32.sub
                            local.tee $l24
                            br_if $B145
                            local.get $l41
                            local.get $l20
                            i32.eq
                            br_if $B144
                          end
                          block $B146
                            block $B147
                              local.get $l39
                              i32.const 1
                              i32.and
                              br_if $B147
                              f64.const 0x1p+53 (;=9.0072e+15;)
                              local.set $l35
                              local.get $l21
                              i32.const 1000000000
                              i32.ne
                              br_if $B146
                              local.get $l29
                              local.get $l22
                              i32.le_u
                              br_if $B146
                              local.get $l29
                              i32.const -4
                              i32.add
                              i32.load8_u
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if $B146
                            end
                            f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                            local.set $l35
                          end
                          f64.const 0x1p-1 (;=0.5;)
                          f64.const 0x1p+0 (;=1;)
                          f64.const 0x1.8p+0 (;=1.5;)
                          local.get $l41
                          local.get $l20
                          i32.eq
                          select
                          f64.const 0x1.8p+0 (;=1.5;)
                          local.get $l24
                          local.get $l21
                          i32.const 1
                          i32.shr_u
                          local.tee $l41
                          i32.eq
                          select
                          local.get $l24
                          local.get $l41
                          i32.lt_u
                          select
                          local.set $l42
                          block $B148
                            local.get $l37
                            br_if $B148
                            local.get $l38
                            i32.load8_u
                            i32.const 45
                            i32.ne
                            br_if $B148
                            local.get $l42
                            f64.neg
                            local.set $l42
                            local.get $l35
                            f64.neg
                            local.set $l35
                          end
                          local.get $l29
                          local.get $l25
                          local.get $l24
                          i32.sub
                          local.tee $l25
                          i32.store
                          local.get $l35
                          local.get $l42
                          f64.add
                          local.get $l35
                          f64.eq
                          br_if $B144
                          local.get $l29
                          local.get $l25
                          local.get $l21
                          i32.add
                          local.tee $l21
                          i32.store
                          block $B149
                            local.get $l21
                            i32.const 1000000000
                            i32.lt_u
                            br_if $B149
                            local.get $l40
                            i32.const -4100
                            i32.add
                            local.set $l21
                            loop $L150
                              local.get $l21
                              i32.const 4
                              i32.add
                              i32.const 0
                              i32.store
                              block $B151
                                local.get $l21
                                local.get $l22
                                i32.ge_u
                                br_if $B151
                                local.get $l22
                                i32.const -4
                                i32.add
                                local.tee $l22
                                i32.const 0
                                i32.store
                              end
                              local.get $l21
                              local.get $l21
                              i32.load
                              i32.const 1
                              i32.add
                              local.tee $l25
                              i32.store
                              local.get $l21
                              i32.const -4
                              i32.add
                              local.set $l21
                              local.get $l25
                              i32.const 999999999
                              i32.gt_u
                              br_if $L150
                            end
                            local.get $l21
                            i32.const 4
                            i32.add
                            local.set $l29
                          end
                          local.get $l32
                          local.get $l22
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          i32.const 9
                          i32.mul
                          local.set $l26
                          local.get $l22
                          i32.load
                          local.tee $l25
                          i32.const 10
                          i32.lt_u
                          br_if $B144
                          i32.const 10
                          local.set $l21
                          loop $L152
                            local.get $l26
                            i32.const 1
                            i32.add
                            local.set $l26
                            local.get $l25
                            local.get $l21
                            i32.const 10
                            i32.mul
                            local.tee $l21
                            i32.ge_u
                            br_if $L152
                          end
                        end
                        local.get $l29
                        i32.const 4
                        i32.add
                        local.tee $l21
                        local.get $l20
                        local.get $l20
                        local.get $l21
                        i32.gt_u
                        select
                        local.set $l20
                      end
                      local.get $l20
                      local.get $l32
                      i32.sub
                      local.set $l21
                      block $B153
                        loop $L154
                          local.get $l21
                          local.set $l25
                          local.get $l20
                          local.tee $l29
                          local.get $l22
                          i32.le_u
                          local.tee $l24
                          br_if $B153
                          local.get $l25
                          i32.const -4
                          i32.add
                          local.set $l21
                          local.get $l29
                          i32.const -4
                          i32.add
                          local.tee $l20
                          i32.load
                          i32.eqz
                          br_if $L154
                        end
                      end
                      block $B155
                        block $B156
                          local.get $l28
                          br_if $B156
                          local.get $l30
                          i32.const 8
                          i32.and
                          local.set $l39
                          br $B155
                        end
                        local.get $l26
                        i32.const -1
                        i32.xor
                        i32.const -1
                        local.get $l23
                        i32.const 1
                        local.get $l23
                        select
                        local.tee $l20
                        local.get $l26
                        i32.gt_s
                        local.get $l26
                        i32.const -5
                        i32.gt_s
                        i32.and
                        local.tee $l21
                        select
                        local.get $l20
                        i32.add
                        local.set $l23
                        i32.const -1
                        i32.const -2
                        local.get $l21
                        select
                        local.get $l31
                        i32.add
                        local.set $l31
                        local.get $l30
                        i32.const 8
                        i32.and
                        local.tee $l39
                        br_if $B155
                        i32.const -9
                        local.set $l20
                        block $B157
                          local.get $l24
                          br_if $B157
                          local.get $l29
                          i32.const -4
                          i32.add
                          i32.load
                          local.tee $l24
                          i32.eqz
                          br_if $B157
                          i32.const 0
                          local.set $l20
                          local.get $l24
                          i32.const 10
                          i32.rem_u
                          br_if $B157
                          i32.const 10
                          local.set $l21
                          i32.const 0
                          local.set $l20
                          loop $L158
                            local.get $l20
                            i32.const -1
                            i32.add
                            local.set $l20
                            local.get $l24
                            local.get $l21
                            i32.const 10
                            i32.mul
                            local.tee $l21
                            i32.rem_u
                            i32.eqz
                            br_if $L158
                          end
                        end
                        local.get $l25
                        i32.const 2
                        i32.shr_s
                        i32.const 9
                        i32.mul
                        i32.const -9
                        i32.add
                        local.set $l21
                        block $B159
                          local.get $l31
                          i32.const -33
                          i32.and
                          i32.const 70
                          i32.ne
                          br_if $B159
                          i32.const 0
                          local.set $l39
                          local.get $l23
                          local.get $l21
                          local.get $l20
                          i32.add
                          local.tee $l20
                          i32.const 0
                          local.get $l20
                          i32.const 0
                          i32.gt_s
                          select
                          local.tee $l20
                          local.get $l23
                          local.get $l20
                          i32.lt_s
                          select
                          local.set $l23
                          br $B155
                        end
                        i32.const 0
                        local.set $l39
                        local.get $l23
                        local.get $l21
                        local.get $l26
                        i32.add
                        local.get $l20
                        i32.add
                        local.tee $l20
                        i32.const 0
                        local.get $l20
                        i32.const 0
                        i32.gt_s
                        select
                        local.tee $l20
                        local.get $l23
                        local.get $l20
                        i32.lt_s
                        select
                        local.set $l23
                      end
                      local.get $l23
                      i32.const 2147483645
                      i32.const 2147483646
                      local.get $l23
                      local.get $l39
                      i32.or
                      local.tee $l37
                      select
                      i32.gt_s
                      br_if $B2
                      local.get $l23
                      local.get $l37
                      i32.const 0
                      i32.ne
                      i32.add
                      i32.const 1
                      i32.add
                      local.set $l41
                      block $B160
                        block $B161
                          local.get $l31
                          i32.const -33
                          i32.and
                          i32.const 70
                          i32.ne
                          local.tee $l40
                          br_if $B161
                          local.get $l26
                          i32.const 2147483647
                          local.get $l41
                          i32.sub
                          i32.gt_s
                          br_if $B2
                          local.get $l26
                          i32.const 0
                          local.get $l26
                          i32.const 0
                          i32.gt_s
                          select
                          local.set $l20
                          br $B160
                        end
                        local.get $l6
                        local.set $l25
                        local.get $l6
                        local.set $l21
                        block $B162
                          local.get $l26
                          local.get $l26
                          i32.const 31
                          i32.shr_s
                          local.tee $l20
                          i32.add
                          local.get $l20
                          i32.xor
                          local.tee $l20
                          i32.eqz
                          br_if $B162
                          loop $L163
                            local.get $l21
                            i32.const -1
                            i32.add
                            local.tee $l21
                            local.get $l20
                            local.get $l20
                            i32.const 10
                            i32.div_u
                            local.tee $l24
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get $l25
                            i32.const -1
                            i32.add
                            local.set $l25
                            local.get $l20
                            i32.const 9
                            i32.gt_u
                            local.set $l28
                            local.get $l24
                            local.set $l20
                            local.get $l28
                            br_if $L163
                          end
                        end
                        block $B164
                          local.get $l6
                          local.get $l25
                          i32.sub
                          i32.const 1
                          i32.gt_s
                          br_if $B164
                          local.get $l21
                          local.get $l13
                          local.get $l25
                          i32.sub
                          i32.add
                          local.tee $l21
                          i32.const 48
                          local.get $l12
                          local.get $l25
                          i32.add
                          call $memset
                          drop
                        end
                        local.get $l21
                        i32.const -2
                        i32.add
                        local.tee $l28
                        local.get $l31
                        i32.store8
                        local.get $l21
                        i32.const -1
                        i32.add
                        i32.const 45
                        i32.const 43
                        local.get $l26
                        i32.const 0
                        i32.lt_s
                        select
                        i32.store8
                        local.get $l6
                        local.get $l28
                        i32.sub
                        local.tee $l20
                        i32.const 2147483647
                        local.get $l41
                        i32.sub
                        i32.gt_s
                        br_if $B2
                      end
                      local.get $l20
                      local.get $l41
                      i32.add
                      local.tee $l20
                      local.get $l36
                      i32.const 2147483647
                      i32.xor
                      i32.gt_s
                      br_if $B2
                      local.get $l20
                      local.get $l36
                      i32.add
                      local.set $l41
                      block $B165
                        local.get $l30
                        i32.const 73728
                        i32.and
                        local.tee $l30
                        br_if $B165
                        local.get $l27
                        local.get $l41
                        i32.le_s
                        br_if $B165
                        local.get $l5
                        i32.const 624
                        i32.add
                        i32.const 32
                        local.get $l27
                        local.get $l41
                        i32.sub
                        local.tee $l20
                        i32.const 256
                        local.get $l20
                        i32.const 256
                        i32.lt_u
                        local.tee $l21
                        select
                        call $memset
                        drop
                        block $B166
                          local.get $l21
                          br_if $B166
                          loop $L167
                            block $B168
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B168
                              local.get $l5
                              i32.const 624
                              i32.add
                              i32.const 256
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l20
                            i32.const -256
                            i32.add
                            local.tee $l20
                            i32.const 255
                            i32.gt_u
                            br_if $L167
                          end
                        end
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B165
                        local.get $l5
                        i32.const 624
                        i32.add
                        local.get $l20
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      block $B169
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B169
                        local.get $l38
                        local.get $l36
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      block $B170
                        local.get $l30
                        i32.const 65536
                        i32.ne
                        br_if $B170
                        local.get $l27
                        local.get $l41
                        i32.le_s
                        br_if $B170
                        local.get $l5
                        i32.const 624
                        i32.add
                        i32.const 48
                        local.get $l27
                        local.get $l41
                        i32.sub
                        local.tee $l20
                        i32.const 256
                        local.get $l20
                        i32.const 256
                        i32.lt_u
                        local.tee $l21
                        select
                        call $memset
                        drop
                        block $B171
                          local.get $l21
                          br_if $B171
                          loop $L172
                            block $B173
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B173
                              local.get $l5
                              i32.const 624
                              i32.add
                              i32.const 256
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l20
                            i32.const -256
                            i32.add
                            local.tee $l20
                            i32.const 255
                            i32.gt_u
                            br_if $L172
                          end
                        end
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B170
                        local.get $l5
                        i32.const 624
                        i32.add
                        local.get $l20
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      block $B174
                        block $B175
                          local.get $l40
                          br_if $B175
                          local.get $l32
                          local.get $l22
                          local.get $l22
                          local.get $l32
                          i32.gt_u
                          select
                          local.tee $l28
                          local.set $l24
                          loop $L176
                            block $B177
                              block $B178
                                local.get $l24
                                i32.load
                                local.tee $l20
                                br_if $B178
                                local.get $l11
                                local.set $l22
                                local.get $l11
                                local.set $l21
                                br $B177
                              end
                              local.get $l11
                              local.set $l22
                              local.get $l11
                              local.set $l21
                              loop $L179
                                local.get $l21
                                i32.const -1
                                i32.add
                                local.tee $l21
                                local.get $l20
                                local.get $l20
                                i32.const 10
                                i32.div_u
                                local.tee $l25
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get $l22
                                i32.const -1
                                i32.add
                                local.set $l22
                                local.get $l20
                                i32.const 9
                                i32.gt_u
                                local.set $l26
                                local.get $l25
                                local.set $l20
                                local.get $l26
                                br_if $L179
                              end
                            end
                            block $B180
                              block $B181
                                local.get $l24
                                local.get $l28
                                i32.eq
                                br_if $B181
                                local.get $l21
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.le_u
                                br_if $B180
                                local.get $l21
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.add
                                local.get $l22
                                i32.sub
                                local.tee $l21
                                i32.const 48
                                local.get $l22
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.sub
                                call $memset
                                drop
                                br $B180
                              end
                              local.get $l21
                              local.get $l11
                              i32.ne
                              br_if $B180
                              local.get $l5
                              i32.const 48
                              i32.store8 offset=88
                              local.get $l10
                              local.set $l21
                            end
                            block $B182
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B182
                              local.get $l21
                              local.get $l11
                              local.get $l21
                              i32.sub
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l24
                            i32.const 4
                            i32.add
                            local.tee $l24
                            local.get $l32
                            i32.le_u
                            br_if $L176
                          end
                          block $B183
                            local.get $l37
                            i32.eqz
                            br_if $B183
                            local.get $p0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if $B183
                            i32.const 1069
                            i32.const 1
                            local.get $p0
                            call $__fwritex
                            drop
                          end
                          block $B184
                            block $B185
                              local.get $l24
                              local.get $l29
                              i32.lt_u
                              br_if $B185
                              local.get $l23
                              local.set $l20
                              br $B184
                            end
                            block $B186
                              local.get $l23
                              i32.const 1
                              i32.ge_s
                              br_if $B186
                              local.get $l23
                              local.set $l20
                              br $B184
                            end
                            loop $L187
                              block $B188
                                block $B189
                                  block $B190
                                    local.get $l24
                                    i32.load
                                    local.tee $l20
                                    br_if $B190
                                    local.get $l11
                                    local.set $l21
                                    local.get $l11
                                    local.set $l22
                                    br $B189
                                  end
                                  local.get $l11
                                  local.set $l22
                                  local.get $l11
                                  local.set $l21
                                  loop $L191
                                    local.get $l21
                                    i32.const -1
                                    i32.add
                                    local.tee $l21
                                    local.get $l20
                                    local.get $l20
                                    i32.const 10
                                    i32.div_u
                                    local.tee $l25
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get $l22
                                    i32.const -1
                                    i32.add
                                    local.set $l22
                                    local.get $l20
                                    i32.const 9
                                    i32.gt_u
                                    local.set $l26
                                    local.get $l25
                                    local.set $l20
                                    local.get $l26
                                    br_if $L191
                                  end
                                  local.get $l21
                                  local.get $l5
                                  i32.const 80
                                  i32.add
                                  i32.le_u
                                  br_if $B188
                                end
                                local.get $l21
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.add
                                local.get $l22
                                i32.sub
                                local.tee $l21
                                i32.const 48
                                local.get $l22
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.sub
                                call $memset
                                drop
                              end
                              block $B192
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B192
                                local.get $l21
                                local.get $l23
                                i32.const 9
                                local.get $l23
                                i32.const 9
                                i32.lt_s
                                select
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l23
                              i32.const -9
                              i32.add
                              local.set $l20
                              local.get $l24
                              i32.const 4
                              i32.add
                              local.tee $l24
                              local.get $l29
                              i32.ge_u
                              br_if $B184
                              local.get $l23
                              i32.const 9
                              i32.gt_s
                              local.set $l21
                              local.get $l20
                              local.set $l23
                              local.get $l21
                              br_if $L187
                            end
                          end
                          local.get $p0
                          i32.const 48
                          local.get $l20
                          i32.const 9
                          i32.add
                          i32.const 9
                          i32.const 0
                          call $pad
                          br $B174
                        end
                        block $B193
                          local.get $l23
                          i32.const 0
                          i32.lt_s
                          br_if $B193
                          local.get $l29
                          local.get $l22
                          i32.const 4
                          i32.add
                          local.get $l29
                          local.get $l22
                          i32.gt_u
                          select
                          local.set $l29
                          local.get $l22
                          local.set $l24
                          loop $L194
                            block $B195
                              block $B196
                                local.get $l24
                                i32.load
                                local.tee $l20
                                i32.eqz
                                br_if $B196
                                i32.const 0
                                local.set $l21
                                loop $L197
                                  local.get $l5
                                  i32.const 80
                                  i32.add
                                  local.get $l21
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get $l20
                                  local.get $l20
                                  i32.const 10
                                  i32.div_u
                                  local.tee $l25
                                  i32.const 10
                                  i32.mul
                                  i32.sub
                                  i32.const 48
                                  i32.or
                                  i32.store8
                                  local.get $l21
                                  i32.const -1
                                  i32.add
                                  local.set $l21
                                  local.get $l20
                                  i32.const 9
                                  i32.gt_u
                                  local.set $l26
                                  local.get $l25
                                  local.set $l20
                                  local.get $l26
                                  br_if $L197
                                end
                                local.get $l21
                                i32.eqz
                                br_if $B196
                                local.get $l5
                                i32.const 80
                                i32.add
                                local.get $l21
                                i32.add
                                i32.const 9
                                i32.add
                                local.set $l20
                                br $B195
                              end
                              local.get $l5
                              i32.const 48
                              i32.store8 offset=88
                              local.get $l10
                              local.set $l20
                            end
                            block $B198
                              block $B199
                                local.get $l24
                                local.get $l22
                                i32.eq
                                br_if $B199
                                local.get $l20
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.le_u
                                br_if $B198
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.const 48
                                local.get $l20
                                local.get $l5
                                i32.const 80
                                i32.add
                                i32.sub
                                call $memset
                                drop
                                local.get $l5
                                i32.const 80
                                i32.add
                                local.set $l20
                                br $B198
                              end
                              block $B200
                                local.get $p0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if $B200
                                local.get $l20
                                i32.const 1
                                local.get $p0
                                call $__fwritex
                                drop
                              end
                              local.get $l20
                              i32.const 1
                              i32.add
                              local.set $l20
                              block $B201
                                local.get $l39
                                br_if $B201
                                local.get $l23
                                i32.const 1
                                i32.lt_s
                                br_if $B198
                              end
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B198
                              i32.const 1069
                              i32.const 1
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l11
                            local.get $l20
                            i32.sub
                            local.set $l21
                            block $B202
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B202
                              local.get $l20
                              local.get $l21
                              local.get $l23
                              local.get $l23
                              local.get $l21
                              i32.gt_s
                              select
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l23
                            local.get $l21
                            i32.sub
                            local.set $l23
                            local.get $l24
                            i32.const 4
                            i32.add
                            local.tee $l24
                            local.get $l29
                            i32.ge_u
                            br_if $B193
                            local.get $l23
                            i32.const -1
                            i32.gt_s
                            br_if $L194
                          end
                        end
                        local.get $p0
                        i32.const 48
                        local.get $l23
                        i32.const 18
                        i32.add
                        i32.const 18
                        i32.const 0
                        call $pad
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B174
                        local.get $l28
                        local.get $l6
                        local.get $l28
                        i32.sub
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      block $B203
                        local.get $l30
                        i32.const 8192
                        i32.ne
                        br_if $B203
                        local.get $l27
                        local.get $l41
                        i32.le_s
                        br_if $B203
                        local.get $l5
                        i32.const 624
                        i32.add
                        i32.const 32
                        local.get $l27
                        local.get $l41
                        i32.sub
                        local.tee $l20
                        i32.const 256
                        local.get $l20
                        i32.const 256
                        i32.lt_u
                        local.tee $l21
                        select
                        call $memset
                        drop
                        block $B204
                          local.get $l21
                          br_if $B204
                          loop $L205
                            block $B206
                              local.get $p0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if $B206
                              local.get $l5
                              i32.const 624
                              i32.add
                              i32.const 256
                              local.get $p0
                              call $__fwritex
                              drop
                            end
                            local.get $l20
                            i32.const -256
                            i32.add
                            local.tee $l20
                            i32.const 255
                            i32.gt_u
                            br_if $L205
                          end
                        end
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B203
                        local.get $l5
                        i32.const 624
                        i32.add
                        local.get $l20
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      local.get $l27
                      local.get $l41
                      local.get $l27
                      local.get $l41
                      i32.gt_s
                      select
                      local.set $l20
                      br $B4
                    end
                    i32.const 0
                    local.set $l23
                    i32.const 1024
                    local.set $l32
                    local.get $l17
                    local.set $l20
                    local.get $l30
                    local.set $l29
                    local.get $l24
                    local.set $l26
                  end
                  local.get $l20
                  local.get $l21
                  i32.sub
                  local.tee $l24
                  local.get $l26
                  local.get $l26
                  local.get $l24
                  i32.lt_s
                  select
                  local.tee $l28
                  i32.const 2147483647
                  local.get $l23
                  i32.sub
                  i32.gt_s
                  br_if $B2
                  local.get $l23
                  local.get $l28
                  i32.add
                  local.tee $l25
                  local.get $l27
                  local.get $l27
                  local.get $l25
                  i32.lt_s
                  select
                  local.tee $l20
                  local.get $l22
                  i32.gt_s
                  br_if $B2
                  block $B207
                    local.get $l29
                    i32.const 73728
                    i32.and
                    local.tee $l29
                    br_if $B207
                    local.get $l25
                    local.get $l27
                    i32.ge_s
                    br_if $B207
                    local.get $l5
                    i32.const 112
                    i32.add
                    i32.const 32
                    local.get $l20
                    local.get $l25
                    i32.sub
                    local.tee $l22
                    i32.const 256
                    local.get $l22
                    i32.const 256
                    i32.lt_u
                    local.tee $l30
                    select
                    call $memset
                    drop
                    block $B208
                      local.get $l30
                      br_if $B208
                      loop $L209
                        block $B210
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B210
                          local.get $l5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l22
                        i32.const -256
                        i32.add
                        local.tee $l22
                        i32.const 255
                        i32.gt_u
                        br_if $L209
                      end
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $B207
                    local.get $l5
                    i32.const 112
                    i32.add
                    local.get $l22
                    local.get $p0
                    call $__fwritex
                    drop
                  end
                  block $B211
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $B211
                    local.get $l32
                    local.get $l23
                    local.get $p0
                    call $__fwritex
                    drop
                  end
                  block $B212
                    local.get $l29
                    i32.const 65536
                    i32.ne
                    br_if $B212
                    local.get $l25
                    local.get $l27
                    i32.ge_s
                    br_if $B212
                    local.get $l5
                    i32.const 112
                    i32.add
                    i32.const 48
                    local.get $l20
                    local.get $l25
                    i32.sub
                    local.tee $l22
                    i32.const 256
                    local.get $l22
                    i32.const 256
                    i32.lt_u
                    local.tee $l23
                    select
                    call $memset
                    drop
                    block $B213
                      local.get $l23
                      br_if $B213
                      loop $L214
                        block $B215
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B215
                          local.get $l5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l22
                        i32.const -256
                        i32.add
                        local.tee $l22
                        i32.const 255
                        i32.gt_u
                        br_if $L214
                      end
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $B212
                    local.get $l5
                    i32.const 112
                    i32.add
                    local.get $l22
                    local.get $p0
                    call $__fwritex
                    drop
                  end
                  block $B216
                    local.get $l24
                    local.get $l26
                    i32.ge_s
                    br_if $B216
                    local.get $l5
                    i32.const 112
                    i32.add
                    i32.const 48
                    local.get $l28
                    local.get $l24
                    i32.sub
                    local.tee $l22
                    i32.const 256
                    local.get $l22
                    i32.const 256
                    i32.lt_u
                    local.tee $l26
                    select
                    call $memset
                    drop
                    block $B217
                      local.get $l26
                      br_if $B217
                      loop $L218
                        block $B219
                          local.get $p0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if $B219
                          local.get $l5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get $p0
                          call $__fwritex
                          drop
                        end
                        local.get $l22
                        i32.const -256
                        i32.add
                        local.tee $l22
                        i32.const 255
                        i32.gt_u
                        br_if $L218
                      end
                    end
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $B216
                    local.get $l5
                    i32.const 112
                    i32.add
                    local.get $l22
                    local.get $p0
                    call $__fwritex
                    drop
                  end
                  block $B220
                    local.get $p0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if $B220
                    local.get $l21
                    local.get $l24
                    local.get $p0
                    call $__fwritex
                    drop
                  end
                  local.get $l29
                  i32.const 8192
                  i32.ne
                  br_if $L3
                  local.get $l25
                  local.get $l27
                  i32.ge_s
                  br_if $L3
                  local.get $l5
                  i32.const 112
                  i32.add
                  i32.const 32
                  local.get $l20
                  local.get $l25
                  i32.sub
                  local.tee $l21
                  i32.const 256
                  local.get $l21
                  i32.const 256
                  i32.lt_u
                  local.tee $l22
                  select
                  call $memset
                  drop
                  block $B221
                    local.get $l22
                    br_if $B221
                    loop $L222
                      block $B223
                        local.get $p0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if $B223
                        local.get $l5
                        i32.const 112
                        i32.add
                        i32.const 256
                        local.get $p0
                        call $__fwritex
                        drop
                      end
                      local.get $l21
                      i32.const -256
                      i32.add
                      local.tee $l21
                      i32.const 255
                      i32.gt_u
                      br_if $L222
                    end
                  end
                  local.get $p0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if $L3
                  local.get $l5
                  i32.const 112
                  i32.add
                  local.get $l21
                  local.get $p0
                  call $__fwritex
                  drop
                  br $L3
                end
                i32.const 0
                i32.const 28
                i32.store offset=3664
                br $B1
              end
              local.get $l38
              local.get $l31
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set $l23
              block $B224
                local.get $l24
                i32.const 11
                i32.gt_u
                br_if $B224
                block $B225
                  block $B226
                    i32.const 12
                    local.get $l24
                    i32.sub
                    local.tee $l20
                    i32.const 7
                    i32.and
                    local.tee $l21
                    br_if $B226
                    f64.const 0x1p+4 (;=16;)
                    local.set $l42
                    br $B225
                  end
                  local.get $l24
                  i32.const -12
                  i32.add
                  local.set $l20
                  f64.const 0x1p+4 (;=16;)
                  local.set $l42
                  loop $L227
                    local.get $l20
                    i32.const 1
                    i32.add
                    local.set $l20
                    local.get $l42
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set $l42
                    local.get $l21
                    i32.const -1
                    i32.add
                    local.tee $l21
                    br_if $L227
                  end
                  i32.const 0
                  local.get $l20
                  i32.sub
                  local.set $l20
                end
                block $B228
                  local.get $l24
                  i32.const -5
                  i32.add
                  i32.const 7
                  i32.lt_u
                  br_if $B228
                  loop $L229
                    local.get $l42
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set $l42
                    local.get $l20
                    i32.const -8
                    i32.add
                    local.tee $l20
                    br_if $L229
                  end
                end
                block $B230
                  local.get $l23
                  i32.load8_u
                  i32.const 45
                  i32.ne
                  br_if $B230
                  local.get $l42
                  local.get $l35
                  f64.neg
                  local.get $l42
                  f64.sub
                  f64.add
                  f64.neg
                  local.set $l35
                  br $B224
                end
                local.get $l35
                local.get $l42
                f64.add
                local.get $l42
                f64.sub
                local.set $l35
              end
              block $B231
                block $B232
                  local.get $l5
                  i32.load offset=108
                  local.tee $l26
                  i32.eqz
                  br_if $B232
                  local.get $l26
                  local.get $l26
                  i32.const 31
                  i32.shr_s
                  local.tee $l20
                  i32.add
                  local.get $l20
                  i32.xor
                  local.set $l20
                  i32.const 0
                  local.set $l21
                  loop $L233
                    local.get $l5
                    i32.const 68
                    i32.add
                    local.get $l21
                    i32.add
                    i32.const 11
                    i32.add
                    local.get $l20
                    local.get $l20
                    i32.const 10
                    i32.div_u
                    local.tee $l22
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get $l21
                    i32.const -1
                    i32.add
                    local.set $l21
                    local.get $l20
                    i32.const 9
                    i32.gt_u
                    local.set $l25
                    local.get $l22
                    local.set $l20
                    local.get $l25
                    br_if $L233
                  end
                  local.get $l21
                  i32.eqz
                  br_if $B232
                  local.get $l5
                  i32.const 68
                  i32.add
                  local.get $l21
                  i32.add
                  i32.const 12
                  i32.add
                  local.set $l20
                  br $B231
                end
                local.get $l5
                i32.const 48
                i32.store8 offset=79
                local.get $l9
                local.set $l20
              end
              local.get $l36
              i32.const 2
              i32.or
              local.set $l28
              local.get $l31
              i32.const 32
              i32.and
              local.set $l22
              local.get $l20
              i32.const -2
              i32.add
              local.tee $l29
              local.get $l31
              i32.const 15
              i32.add
              i32.store8
              local.get $l20
              i32.const -1
              i32.add
              i32.const 45
              i32.const 43
              local.get $l26
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get $l30
              i32.const 8
              i32.and
              local.set $l25
              local.get $l5
              i32.const 80
              i32.add
              local.set $l21
              loop $L234
                local.get $l21
                local.set $l20
                block $B235
                  block $B236
                    local.get $l35
                    f64.abs
                    f64.const 0x1p+31 (;=2.14748e+09;)
                    f64.lt
                    i32.eqz
                    br_if $B236
                    local.get $l35
                    i32.trunc_f64_s
                    local.set $l21
                    br $B235
                  end
                  i32.const -2147483648
                  local.set $l21
                end
                local.get $l20
                local.get $l21
                i32.const 3408
                i32.add
                i32.load8_u
                local.get $l22
                i32.or
                i32.store8
                local.get $l35
                local.get $l21
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set $l35
                block $B237
                  local.get $l20
                  i32.const 1
                  i32.add
                  local.tee $l21
                  local.get $l5
                  i32.const 80
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if $B237
                  block $B238
                    local.get $l25
                    br_if $B238
                    local.get $l24
                    i32.const 0
                    i32.gt_s
                    br_if $B238
                    local.get $l35
                    f64.const 0x0p+0 (;=0;)
                    f64.eq
                    br_if $B237
                  end
                  local.get $l20
                  i32.const 46
                  i32.store8 offset=1
                  local.get $l20
                  i32.const 2
                  i32.add
                  local.set $l21
                end
                local.get $l35
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if $L234
              end
              i32.const 2147483645
              local.get $l6
              local.get $l29
              i32.sub
              local.tee $l32
              local.get $l28
              i32.add
              local.tee $l20
              i32.sub
              local.get $l24
              i32.lt_s
              br_if $B2
              local.get $l24
              i32.const 2
              i32.add
              local.get $l21
              local.get $l5
              i32.const 80
              i32.add
              i32.sub
              local.tee $l22
              local.get $l8
              local.get $l21
              i32.add
              local.get $l24
              i32.lt_s
              select
              local.get $l22
              local.get $l24
              select
              local.tee $l26
              local.get $l20
              i32.add
              local.set $l21
              block $B239
                local.get $l30
                i32.const 73728
                i32.and
                local.tee $l25
                br_if $B239
                local.get $l27
                local.get $l21
                i32.le_s
                br_if $B239
                local.get $l5
                i32.const 624
                i32.add
                i32.const 32
                local.get $l27
                local.get $l21
                i32.sub
                local.tee $l20
                i32.const 256
                local.get $l20
                i32.const 256
                i32.lt_u
                local.tee $l24
                select
                call $memset
                drop
                block $B240
                  local.get $l24
                  br_if $B240
                  loop $L241
                    block $B242
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B242
                      local.get $l5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                    end
                    local.get $l20
                    i32.const -256
                    i32.add
                    local.tee $l20
                    i32.const 255
                    i32.gt_u
                    br_if $L241
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B239
                local.get $l5
                i32.const 624
                i32.add
                local.get $l20
                local.get $p0
                call $__fwritex
                drop
              end
              block $B243
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B243
                local.get $l23
                local.get $l28
                local.get $p0
                call $__fwritex
                drop
              end
              block $B244
                local.get $l25
                i32.const 65536
                i32.ne
                br_if $B244
                local.get $l27
                local.get $l21
                i32.le_s
                br_if $B244
                local.get $l5
                i32.const 624
                i32.add
                i32.const 48
                local.get $l27
                local.get $l21
                i32.sub
                local.tee $l20
                i32.const 256
                local.get $l20
                i32.const 256
                i32.lt_u
                local.tee $l24
                select
                call $memset
                drop
                block $B245
                  local.get $l24
                  br_if $B245
                  loop $L246
                    block $B247
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B247
                      local.get $l5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                    end
                    local.get $l20
                    i32.const -256
                    i32.add
                    local.tee $l20
                    i32.const 255
                    i32.gt_u
                    br_if $L246
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B244
                local.get $l5
                i32.const 624
                i32.add
                local.get $l20
                local.get $p0
                call $__fwritex
                drop
              end
              block $B248
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B248
                local.get $l5
                i32.const 80
                i32.add
                local.get $l22
                local.get $p0
                call $__fwritex
                drop
              end
              block $B249
                local.get $l26
                local.get $l22
                i32.sub
                local.tee $l20
                i32.const 1
                i32.lt_s
                br_if $B249
                local.get $l5
                i32.const 624
                i32.add
                i32.const 48
                local.get $l20
                i32.const 256
                local.get $l20
                i32.const 256
                i32.lt_u
                local.tee $l22
                select
                call $memset
                drop
                block $B250
                  local.get $l22
                  br_if $B250
                  loop $L251
                    block $B252
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B252
                      local.get $l5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                    end
                    local.get $l20
                    i32.const -256
                    i32.add
                    local.tee $l20
                    i32.const 255
                    i32.gt_u
                    br_if $L251
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B249
                local.get $l5
                i32.const 624
                i32.add
                local.get $l20
                local.get $p0
                call $__fwritex
                drop
              end
              block $B253
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B253
                local.get $l29
                local.get $l32
                local.get $p0
                call $__fwritex
                drop
              end
              block $B254
                local.get $l25
                i32.const 8192
                i32.ne
                br_if $B254
                local.get $l27
                local.get $l21
                i32.le_s
                br_if $B254
                local.get $l5
                i32.const 624
                i32.add
                i32.const 32
                local.get $l27
                local.get $l21
                i32.sub
                local.tee $l20
                i32.const 256
                local.get $l20
                i32.const 256
                i32.lt_u
                local.tee $l22
                select
                call $memset
                drop
                block $B255
                  local.get $l22
                  br_if $B255
                  loop $L256
                    block $B257
                      local.get $p0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if $B257
                      local.get $l5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get $p0
                      call $__fwritex
                      drop
                    end
                    local.get $l20
                    i32.const -256
                    i32.add
                    local.tee $l20
                    i32.const 255
                    i32.gt_u
                    br_if $L256
                  end
                end
                local.get $p0
                i32.load8_u
                i32.const 32
                i32.and
                br_if $B254
                local.get $l5
                i32.const 624
                i32.add
                local.get $l20
                local.get $p0
                call $__fwritex
                drop
              end
              local.get $l27
              local.get $l21
              local.get $l27
              local.get $l21
              i32.gt_s
              select
              local.set $l20
            end
            local.get $l20
            i32.const 0
            i32.ge_s
            br_if $L3
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=3664
      end
      i32.const -1
      local.set $l19
    end
    local.get $l5
    i32.const 880
    i32.add
    global.set $g0
    local.get $l19)
  (func $pop_arg (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  block $B15
                                    block $B16
                                      block $B17
                                        block $B18
                                          local.get $p1
                                          i32.const -9
                                          i32.add
                                          br_table $B1 $B18 $B17 $B14 $B16 $B15 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B0
                                        end
                                        local.get $p2
                                        local.get $p2
                                        i32.load
                                        local.tee $p1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get $p0
                                        local.get $p1
                                        i64.load32_s
                                        i64.store
                                        return
                                      end
                                      local.get $p2
                                      local.get $p2
                                      i32.load
                                      local.tee $p1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get $p0
                                      local.get $p1
                                      i64.load32_u
                                      i64.store
                                      return
                                    end
                                    local.get $p2
                                    local.get $p2
                                    i32.load
                                    local.tee $p1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get $p0
                                    local.get $p1
                                    i64.load32_s
                                    i64.store
                                    return
                                  end
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $p1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $p0
                                  local.get $p1
                                  i64.load32_u
                                  i64.store
                                  return
                                end
                                local.get $p2
                                local.get $p2
                                i32.load
                                i32.const 7
                                i32.add
                                i32.const -8
                                i32.and
                                local.tee $p1
                                i32.const 8
                                i32.add
                                i32.store
                                local.get $p0
                                local.get $p1
                                i64.load
                                i64.store
                                return
                              end
                              local.get $p2
                              local.get $p2
                              i32.load
                              local.tee $p1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get $p0
                              local.get $p1
                              i64.load16_s
                              i64.store
                              return
                            end
                            local.get $p2
                            local.get $p2
                            i32.load
                            local.tee $p1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get $p0
                            local.get $p1
                            i64.load16_u
                            i64.store
                            return
                          end
                          local.get $p2
                          local.get $p2
                          i32.load
                          local.tee $p1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get $p0
                          local.get $p1
                          i64.load8_s
                          i64.store
                          return
                        end
                        local.get $p2
                        local.get $p2
                        i32.load
                        local.tee $p1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get $p0
                        local.get $p1
                        i64.load8_u
                        i64.store
                        return
                      end
                      local.get $p2
                      local.get $p2
                      i32.load
                      i32.const 7
                      i32.add
                      i32.const -8
                      i32.and
                      local.tee $p1
                      i32.const 8
                      i32.add
                      i32.store
                      local.get $p0
                      local.get $p1
                      i64.load
                      i64.store
                      return
                    end
                    local.get $p2
                    local.get $p2
                    i32.load
                    local.tee $p1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get $p0
                    local.get $p1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get $p2
                  local.get $p2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee $p1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get $p0
                  local.get $p1
                  i64.load
                  i64.store
                  return
                end
                local.get $p2
                local.get $p2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee $p1
                i32.const 8
                i32.add
                i32.store
                local.get $p0
                local.get $p1
                i64.load
                i64.store
                return
              end
              local.get $p2
              local.get $p2
              i32.load
              local.tee $p1
              i32.const 4
              i32.add
              i32.store
              local.get $p0
              local.get $p1
              i64.load32_s
              i64.store
              return
            end
            local.get $p2
            local.get $p2
            i32.load
            local.tee $p1
            i32.const 4
            i32.add
            i32.store
            local.get $p0
            local.get $p1
            i64.load32_u
            i64.store
            return
          end
          local.get $p2
          local.get $p2
          i32.load
          i32.const 7
          i32.add
          i32.const -8
          i32.and
          local.tee $p1
          i32.const 8
          i32.add
          i32.store
          local.get $p0
          local.get $p1
          f64.load
          f64.store
          return
        end
        call $long_double_not_supported
        unreachable
      end
      local.get $p2
      local.get $p2
      i32.load
      local.tee $p1
      i32.const 4
      i32.add
      i32.store
      local.get $p0
      local.get $p1
      i32.load
      i32.store
    end)
  (func $pad (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      local.get $p2
      local.get $p3
      i32.le_s
      br_if $B0
      local.get $p4
      i32.const 73728
      i32.and
      br_if $B0
      local.get $l5
      local.get $p1
      local.get $p2
      local.get $p3
      i32.sub
      local.tee $p2
      i32.const 256
      local.get $p2
      i32.const 256
      i32.lt_u
      local.tee $p4
      select
      call $memset
      local.set $p3
      block $B1
        local.get $p4
        br_if $B1
        loop $L2
          block $B3
            local.get $p0
            i32.load8_u
            i32.const 32
            i32.and
            br_if $B3
            local.get $p3
            i32.const 256
            local.get $p0
            call $__fwritex
            drop
          end
          local.get $p2
          i32.const -256
          i32.add
          local.tee $p2
          i32.const 255
          i32.gt_u
          br_if $L2
        end
      end
      local.get $p0
      i32.load8_u
      i32.const 32
      i32.and
      br_if $B0
      local.get $p3
      local.get $p2
      local.get $p0
      call $__fwritex
      drop
    end
    local.get $l5
    i32.const 256
    i32.add
    global.set $g0)
  (func $long_double_not_supported (type $t7)
    i32.const 1091
    i32.const 3544
    call $fputs
    drop
    call $abort
    unreachable)
  (func $__isatty (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        local.get $l1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee $p0
        br_if $B1
        i32.const 59
        local.set $p0
        local.get $l1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if $B1
        local.get $l1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if $B1
        i32.const 1
        local.set $l2
        br $B0
      end
      i32.const 0
      local.set $l2
      i32.const 0
      local.get $p0
      i32.store offset=3664
    end
    local.get $l1
    i32.const 32
    i32.add
    global.set $g0
    local.get $l2)
  (func $__stdout_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.const 4
    i32.store offset=32
    block $B0
      local.get $p0
      i32.load8_u
      i32.const 64
      i32.and
      br_if $B0
      local.get $p0
      i32.load offset=56
      call $__isatty
      br_if $B0
      local.get $p0
      i32.const -1
      i32.store offset=64
    end
    local.get $p0
    local.get $p1
    local.get $p2
    call $__stdio_write)
  (func $strnlen (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    i32.const 0
    local.get $p1
    call $memchr
    local.tee $l2
    local.get $p0
    i32.sub
    local.get $p1
    local.get $l2
    select)
  (func $memcpy (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      block $B1
        block $B2
          local.get $p2
          i32.const 32
          i32.gt_u
          br_if $B2
          local.get $p1
          i32.const 3
          i32.and
          i32.eqz
          br_if $B1
          local.get $p2
          i32.eqz
          br_if $B1
          local.get $p0
          local.get $p1
          i32.load8_u
          i32.store8
          local.get $p2
          i32.const -1
          i32.add
          local.set $l3
          local.get $p0
          i32.const 1
          i32.add
          local.set $l4
          local.get $p1
          i32.const 1
          i32.add
          local.tee $l5
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l3
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get $p2
          i32.const -2
          i32.add
          local.set $l3
          local.get $p0
          i32.const 2
          i32.add
          local.set $l4
          local.get $p1
          i32.const 2
          i32.add
          local.tee $l5
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l3
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=2
          i32.store8 offset=2
          local.get $p2
          i32.const -3
          i32.add
          local.set $l3
          local.get $p0
          i32.const 3
          i32.add
          local.set $l4
          local.get $p1
          i32.const 3
          i32.add
          local.tee $l5
          i32.const 3
          i32.and
          i32.eqz
          br_if $B0
          local.get $l3
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $p1
          i32.load8_u offset=3
          i32.store8 offset=3
          local.get $p2
          i32.const -4
          i32.add
          local.set $l3
          local.get $p0
          i32.const 4
          i32.add
          local.set $l4
          local.get $p1
          i32.const 4
          i32.add
          local.set $l5
          br $B0
        end
        local.get $p0
        local.get $p1
        local.get $p2
        memory.copy
        local.get $p0
        return
      end
      local.get $p2
      local.set $l3
      local.get $p0
      local.set $l4
      local.get $p1
      local.set $l5
    end
    block $B3
      block $B4
        local.get $l4
        i32.const 3
        i32.and
        local.tee $p2
        br_if $B4
        block $B5
          block $B6
            local.get $l3
            i32.const 16
            i32.lt_u
            br_if $B6
            block $B7
              local.get $l3
              i32.const -16
              i32.add
              local.tee $p2
              i32.const 16
              i32.and
              br_if $B7
              local.get $l4
              local.get $l5
              i64.load align=4
              i64.store align=4
              local.get $l4
              local.get $l5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get $l4
              i32.const 16
              i32.add
              local.set $l4
              local.get $l5
              i32.const 16
              i32.add
              local.set $l5
              local.get $p2
              local.set $l3
            end
            local.get $p2
            i32.const 16
            i32.lt_u
            br_if $B5
            loop $L8
              local.get $l4
              local.get $l5
              i64.load align=4
              i64.store align=4
              local.get $l4
              i32.const 8
              i32.add
              local.get $l5
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
              local.get $l4
              i32.const 16
              i32.add
              local.get $l5
              i32.const 16
              i32.add
              i64.load align=4
              i64.store align=4
              local.get $l4
              i32.const 24
              i32.add
              local.get $l5
              i32.const 24
              i32.add
              i64.load align=4
              i64.store align=4
              local.get $l4
              i32.const 32
              i32.add
              local.set $l4
              local.get $l5
              i32.const 32
              i32.add
              local.set $l5
              local.get $l3
              i32.const -32
              i32.add
              local.tee $l3
              i32.const 15
              i32.gt_u
              br_if $L8
            end
          end
          local.get $l3
          local.set $p2
        end
        block $B9
          local.get $p2
          i32.const 8
          i32.and
          i32.eqz
          br_if $B9
          local.get $l4
          local.get $l5
          i64.load align=4
          i64.store align=4
          local.get $l5
          i32.const 8
          i32.add
          local.set $l5
          local.get $l4
          i32.const 8
          i32.add
          local.set $l4
        end
        block $B10
          local.get $p2
          i32.const 4
          i32.and
          i32.eqz
          br_if $B10
          local.get $l4
          local.get $l5
          i32.load
          i32.store
          local.get $l5
          i32.const 4
          i32.add
          local.set $l5
          local.get $l4
          i32.const 4
          i32.add
          local.set $l4
        end
        block $B11
          local.get $p2
          i32.const 2
          i32.and
          i32.eqz
          br_if $B11
          local.get $l4
          local.get $l5
          i32.load16_u align=1
          i32.store16 align=1
          local.get $l4
          i32.const 2
          i32.add
          local.set $l4
          local.get $l5
          i32.const 2
          i32.add
          local.set $l5
        end
        local.get $p2
        i32.const 1
        i32.and
        i32.eqz
        br_if $B3
        local.get $l4
        local.get $l5
        i32.load8_u
        i32.store8
        local.get $p0
        return
      end
      block $B12
        block $B13
          block $B14
            block $B15
              block $B16
                local.get $l3
                i32.const 32
                i32.lt_u
                br_if $B16
                block $B17
                  block $B18
                    local.get $p2
                    i32.const -1
                    i32.add
                    br_table $B15 $B18 $B17 $B3
                  end
                  local.get $l4
                  local.get $l5
                  i32.load
                  i32.store16 align=1
                  local.get $l4
                  local.get $l5
                  i32.const 2
                  i32.add
                  i32.load align=2
                  i32.store offset=2
                  local.get $l4
                  local.get $l5
                  i32.const 6
                  i32.add
                  i64.load align=2
                  i64.store offset=6 align=4
                  i32.const 14
                  local.set $p1
                  local.get $l5
                  i32.const 14
                  i32.add
                  i32.load align=2
                  local.set $l6
                  i32.const 18
                  local.set $p2
                  i32.const 14
                  local.set $l3
                  br $B14
                end
                local.get $l4
                local.get $l5
                i32.load
                i32.store8
                local.get $l4
                local.get $l5
                i32.const 1
                i32.add
                i32.load align=1
                i32.store offset=1
                local.get $l4
                local.get $l5
                i32.const 5
                i32.add
                i64.load align=1
                i64.store offset=5 align=4
                i32.const 13
                local.set $p1
                local.get $l5
                i32.const 13
                i32.add
                i32.load align=1
                local.set $l6
                i32.const 15
                local.set $l3
                i32.const 17
                local.set $p2
                br $B14
              end
              block $B19
                local.get $l3
                i32.const 16
                i32.and
                i32.eqz
                br_if $B19
                local.get $l4
                local.get $l5
                i32.load8_u
                i32.store8
                local.get $l4
                local.get $l5
                i32.load offset=1 align=1
                i32.store offset=1 align=1
                local.get $l4
                local.get $l5
                i64.load offset=5 align=1
                i64.store offset=5 align=1
                local.get $l4
                local.get $l5
                i32.load16_u offset=13 align=1
                i32.store16 offset=13 align=1
                local.get $l4
                local.get $l5
                i32.load8_u offset=15
                i32.store8 offset=15
                local.get $l4
                i32.const 16
                i32.add
                local.set $l4
                local.get $l5
                i32.const 16
                i32.add
                local.set $l5
              end
              local.get $l3
              i32.const 8
              i32.and
              br_if $B13
              br $B12
            end
            local.get $l4
            local.get $l5
            i32.load
            local.tee $l3
            i32.store8
            local.get $l4
            local.get $l3
            i32.const 16
            i32.shr_u
            i32.store8 offset=2
            local.get $l4
            local.get $l3
            i32.const 8
            i32.shr_u
            i32.store8 offset=1
            local.get $l4
            local.get $l5
            i32.const 3
            i32.add
            i32.load align=1
            i32.store offset=3
            local.get $l4
            local.get $l5
            i32.const 7
            i32.add
            i64.load align=1
            i64.store offset=7 align=4
            i32.const 15
            local.set $p1
            local.get $l5
            i32.const 15
            i32.add
            i32.load align=1
            local.set $l6
            i32.const 13
            local.set $l3
            i32.const 19
            local.set $p2
          end
          local.get $l4
          local.get $p1
          i32.add
          local.get $l6
          i32.store
          local.get $l4
          local.get $p2
          i32.add
          local.set $l4
          local.get $l5
          local.get $p2
          i32.add
          local.set $l5
        end
        local.get $l4
        local.get $l5
        i64.load align=1
        i64.store align=1
        local.get $l4
        i32.const 8
        i32.add
        local.set $l4
        local.get $l5
        i32.const 8
        i32.add
        local.set $l5
      end
      block $B20
        local.get $l3
        i32.const 4
        i32.and
        i32.eqz
        br_if $B20
        local.get $l4
        local.get $l5
        i32.load align=1
        i32.store align=1
        local.get $l4
        i32.const 4
        i32.add
        local.set $l4
        local.get $l5
        i32.const 4
        i32.add
        local.set $l5
      end
      block $B21
        local.get $l3
        i32.const 2
        i32.and
        i32.eqz
        br_if $B21
        local.get $l4
        local.get $l5
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l4
        i32.const 2
        i32.add
        local.set $l4
        local.get $l5
        i32.const 2
        i32.add
        local.set $l5
      end
      local.get $l3
      i32.const 1
      i32.and
      i32.eqz
      br_if $B3
      local.get $l4
      local.get $l5
      i32.load8_u
      i32.store8
    end
    local.get $p0)
  (func $memset (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    block $B0
      local.get $p2
      i32.const 33
      i32.lt_u
      br_if $B0
      local.get $p0
      local.get $p1
      local.get $p2
      memory.fill
      local.get $p0
      return
    end
    block $B1
      local.get $p2
      i32.eqz
      br_if $B1
      local.get $p0
      local.get $p1
      i32.store8
      local.get $p2
      local.get $p0
      i32.add
      local.tee $l3
      i32.const -1
      i32.add
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 3
      i32.lt_u
      br_if $B1
      local.get $p0
      local.get $p1
      i32.store8 offset=2
      local.get $p0
      local.get $p1
      i32.store8 offset=1
      local.get $l3
      i32.const -3
      i32.add
      local.get $p1
      i32.store8
      local.get $l3
      i32.const -2
      i32.add
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 7
      i32.lt_u
      br_if $B1
      local.get $p0
      local.get $p1
      i32.store8 offset=3
      local.get $l3
      i32.const -4
      i32.add
      local.get $p1
      i32.store8
      local.get $p2
      i32.const 9
      i32.lt_u
      br_if $B1
      local.get $p0
      i32.const 0
      local.get $p0
      i32.sub
      i32.const 3
      i32.and
      local.tee $l4
      i32.add
      local.tee $l5
      local.get $p1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $l3
      i32.store
      local.get $l5
      local.get $p2
      local.get $l4
      i32.sub
      i32.const -4
      i32.and
      local.tee $p1
      i32.add
      local.tee $p2
      i32.const -4
      i32.add
      local.get $l3
      i32.store
      local.get $p1
      i32.const 9
      i32.lt_u
      br_if $B1
      local.get $l5
      local.get $l3
      i32.store offset=8
      local.get $l5
      local.get $l3
      i32.store offset=4
      local.get $p2
      i32.const -8
      i32.add
      local.get $l3
      i32.store
      local.get $p2
      i32.const -12
      i32.add
      local.get $l3
      i32.store
      local.get $p1
      i32.const 25
      i32.lt_u
      br_if $B1
      local.get $l5
      local.get $l3
      i32.store offset=24
      local.get $l5
      local.get $l3
      i32.store offset=20
      local.get $l5
      local.get $l3
      i32.store offset=16
      local.get $l5
      local.get $l3
      i32.store offset=12
      local.get $p2
      i32.const -16
      i32.add
      local.get $l3
      i32.store
      local.get $p2
      i32.const -20
      i32.add
      local.get $l3
      i32.store
      local.get $p2
      i32.const -24
      i32.add
      local.get $l3
      i32.store
      local.get $p2
      i32.const -28
      i32.add
      local.get $l3
      i32.store
      local.get $p1
      local.get $l5
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $p2
      i32.sub
      local.tee $p1
      i32.const 32
      i32.lt_u
      br_if $B1
      local.get $l3
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $l6
      local.get $l5
      local.get $p2
      i32.add
      local.set $p2
      loop $L2
        local.get $p2
        local.get $l6
        i64.store
        local.get $p2
        i32.const 24
        i32.add
        local.get $l6
        i64.store
        local.get $p2
        i32.const 16
        i32.add
        local.get $l6
        i64.store
        local.get $p2
        i32.const 8
        i32.add
        local.get $l6
        i64.store
        local.get $p2
        i32.const 32
        i32.add
        local.set $p2
        local.get $p1
        i32.const -32
        i32.add
        local.tee $p1
        i32.const 31
        i32.gt_u
        br_if $L2
      end
    end
    local.get $p0)
  (func $strlen (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    local.set $l1
    block $B0
      block $B1
        local.get $p0
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $p0
        local.set $l1
        local.get $p0
        i32.load8_u
        i32.eqz
        br_if $B0
        local.get $p0
        i32.const 1
        i32.add
        local.tee $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $l1
        i32.load8_u
        i32.eqz
        br_if $B0
        local.get $p0
        i32.const 2
        i32.add
        local.tee $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $l1
        i32.load8_u
        i32.eqz
        br_if $B0
        local.get $p0
        i32.const 3
        i32.add
        local.tee $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B1
        local.get $l1
        i32.load8_u
        i32.eqz
        br_if $B0
        local.get $p0
        i32.const 4
        i32.add
        local.set $l1
      end
      local.get $l1
      i32.const -4
      i32.add
      local.set $l1
      loop $L2
        local.get $l1
        i32.const 4
        i32.add
        local.tee $l1
        i32.load
        local.tee $l2
        i32.const -1
        i32.xor
        local.get $l2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if $L2
      end
      local.get $l2
      i32.const 255
      i32.and
      i32.eqz
      br_if $B0
      loop $L3
        local.get $l1
        i32.const 1
        i32.add
        local.tee $l1
        i32.load8_u
        br_if $L3
      end
    end
    local.get $l1
    local.get $p0
    i32.sub)
  (func $memchr (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p2
    i32.const 0
    i32.ne
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.const 3
            i32.and
            i32.eqz
            br_if $B3
            local.get $p2
            i32.eqz
            br_if $B3
            block $B4
              local.get $p0
              i32.load8_u
              local.get $p1
              i32.const 255
              i32.and
              i32.ne
              br_if $B4
              local.get $p0
              local.set $l4
              local.get $p2
              local.set $l5
              br $B1
            end
            local.get $p2
            i32.const -1
            i32.add
            local.tee $l5
            i32.const 0
            i32.ne
            local.set $l3
            local.get $p0
            i32.const 1
            i32.add
            local.tee $l4
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $l5
            i32.eqz
            br_if $B2
            local.get $l4
            i32.load8_u
            local.get $p1
            i32.const 255
            i32.and
            i32.eq
            br_if $B1
            local.get $p2
            i32.const -2
            i32.add
            local.tee $l5
            i32.const 0
            i32.ne
            local.set $l3
            local.get $p0
            i32.const 2
            i32.add
            local.tee $l4
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $l5
            i32.eqz
            br_if $B2
            local.get $l4
            i32.load8_u
            local.get $p1
            i32.const 255
            i32.and
            i32.eq
            br_if $B1
            local.get $p2
            i32.const -3
            i32.add
            local.tee $l5
            i32.const 0
            i32.ne
            local.set $l3
            local.get $p0
            i32.const 3
            i32.add
            local.tee $l4
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $l5
            i32.eqz
            br_if $B2
            local.get $l4
            i32.load8_u
            local.get $p1
            i32.const 255
            i32.and
            i32.eq
            br_if $B1
            local.get $p0
            i32.const 4
            i32.add
            local.set $l4
            local.get $p2
            i32.const -4
            i32.add
            local.tee $l5
            i32.const 0
            i32.ne
            local.set $l3
            br $B2
          end
          local.get $p2
          local.set $l5
          local.get $p0
          local.set $l4
        end
        local.get $l3
        i32.eqz
        br_if $B0
      end
      block $B5
        local.get $l4
        i32.load8_u
        local.get $p1
        i32.const 255
        i32.and
        i32.eq
        br_if $B5
        local.get $l5
        i32.const 4
        i32.lt_u
        br_if $B5
        local.get $p1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set $p0
        loop $L6
          local.get $l4
          i32.load
          local.get $p0
          i32.xor
          local.tee $p2
          i32.const -1
          i32.xor
          local.get $p2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if $B5
          local.get $l4
          i32.const 4
          i32.add
          local.set $l4
          local.get $l5
          i32.const -4
          i32.add
          local.tee $l5
          i32.const 3
          i32.gt_u
          br_if $L6
        end
      end
      local.get $l5
      i32.eqz
      br_if $B0
      local.get $p1
      i32.const 255
      i32.and
      local.set $p2
      loop $L7
        block $B8
          local.get $l4
          i32.load8_u
          local.get $p2
          i32.ne
          br_if $B8
          local.get $l4
          return
        end
        local.get $l4
        i32.const 1
        i32.add
        local.set $l4
        local.get $l5
        i32.const -1
        i32.add
        local.tee $l5
        br_if $L7
      end
    end
    i32.const 0)
  (func $dummy.1 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0)
  (func $__lctrans (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $dummy.1)
  (func $wctomb (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 0
      return
    end
    local.get $p0
    local.get $p1
    i32.const 0
    call $wcrtomb)
  (func $wcrtomb (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    i32.const 1
    local.set $l3
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      block $B1
        local.get $p1
        i32.const 127
        i32.gt_u
        br_if $B1
        local.get $p0
        local.get $p1
        i32.store8
        i32.const 1
        return
      end
      block $B2
        block $B3
          i32.const 0
          i32.load offset=4720
          br_if $B3
          block $B4
            local.get $p1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if $B4
            i32.const 0
            i32.const 25
            i32.store offset=3664
            br $B2
          end
          local.get $p0
          local.get $p1
          i32.store8
          i32.const 1
          return
        end
        block $B5
          local.get $p1
          i32.const 2047
          i32.gt_u
          br_if $B5
          local.get $p0
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get $p0
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          return
        end
        block $B6
          block $B7
            local.get $p1
            i32.const 55296
            i32.lt_u
            br_if $B7
            local.get $p1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if $B6
          end
          local.get $p0
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get $p0
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get $p0
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        block $B8
          local.get $p1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if $B8
          local.get $p0
          local.get $p1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get $p0
          local.get $p1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get $p0
          local.get $p1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get $p0
          local.get $p1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 4
          return
        end
        i32.const 0
        i32.const 25
        i32.store offset=3664
      end
      i32.const -1
      local.set $l3
    end
    local.get $l3)
  (func $frexp (type $t12) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i64) (local $l3 i32)
    block $B0
      local.get $p0
      i64.reinterpret_f64
      local.tee $l2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee $l3
      i32.const 2047
      i32.eq
      br_if $B0
      block $B1
        local.get $l3
        br_if $B1
        block $B2
          local.get $p0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if $B2
          local.get $p1
          i32.const 0
          i32.store
          local.get $p0
          return
        end
        local.get $p0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get $p1
        call $frexp
        local.set $p0
        local.get $p1
        local.get $p1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get $p0
        return
      end
      local.get $p1
      local.get $l3
      i32.const -1022
      i32.add
      i32.store
      local.get $l2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set $p0
    end
    local.get $p0)
  (func $_start.command_export (type $t7)
    call $_start
    call $__wasm_call_dtors)
  (table $T0 5 5 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 70304))
  (export "memory" (memory 0))
  (export "_start" (func $_start.command_export))
  (elem $e0 (i32.const 1) $__stdio_close $__stdout_write $__stdio_seek $__stdio_write)
  (data $d0 (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(null)\00Hello World\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 3424) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00h\0e\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\0d\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\03\00\00\00\94\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d8\0d\00\00"))
