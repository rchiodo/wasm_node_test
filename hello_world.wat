(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func))
  (type $t4 (func (param i32)))
  (type $t5 (func (param i32 i64 i32) (result i64)))
  (type $t6 (func (param i32 i32) (result i32)))
  (type $t7 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t8 (func (param i32 i32)))
  (type $t9 (func (param i64 i32) (result i32)))
  (type $t10 (func (param i32 i64 i64 i32)))
  (type $t11 (func (param i32 i32 i32 i32) (result i32)))
  (type $t12 (func (param i32 i64 i32 i32) (result i32)))
  (type $t13 (func (param f64 i32) (result f64)))
  (type $t14 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t15 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i32 i32 i32)))
  (type $t17 (func (param i32 i32 i32 i32)))
  (type $t18 (func (param i64 i32 i32) (result i32)))
  (type $t19 (func (param i32 i32 i32 i32 i32)))
  (type $t20 (func (param f64) (result i64)))
  (type $t21 (func (param i64 i64) (result f64)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $wasi_snapshot_preview1.proc_exit (type $t4)))
  (import "wasi_snapshot_preview1" "fd_write" (func $wasi_snapshot_preview1.fd_write (type $t11)))
  (import "wasi_snapshot_preview1" "fd_close" (func $wasi_snapshot_preview1.fd_close (type $t1)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $wasi_snapshot_preview1.fd_seek (type $t12)))
  (func $f4 (type $t3)
    call $emscripten_stack_init
    call $f51)
  (func $f5 (type $t2) (result i32)
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
    call $f11
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
  (func $_start (type $t3)
    block $B0
      i32.const 1
      i32.eqz
      br_if $B0
      call $f4
    end
    call $f5
    call $f9
    unreachable)
  (func $f7 (type $t3))
  (func $f8 (type $t3)
    (local $l0 i32)
    i32.const 0
    local.set $l0
    block $B0
      i32.const 0
      i32.const 0
      i32.le_u
      br_if $B0
      loop $L1
        local.get $l0
        i32.const -4
        i32.add
        local.tee $l0
        i32.load
        call_indirect (type $t3) $__indirect_function_table
        local.get $l0
        i32.const 0
        i32.gt_u
        br_if $L1
      end
    end
    call $f7)
  (func $f9 (type $t4) (param $p0 i32)
    call $f7
    call $f8
    call $f21
    local.get $p0
    call $f10
    unreachable)
  (func $f10 (type $t4) (param $p0 i32)
    local.get $p0
    call $wasi_snapshot_preview1.proc_exit
    unreachable)
  (func $f11 (type $t6) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    i32.const 1584
    local.get $p0
    local.get $p1
    call $f39
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f12 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p0
    i32.load offset=28
    local.tee $l4
    i32.store offset=16
    local.get $p0
    i32.load offset=20
    local.set $l5
    local.get $l3
    local.get $p2
    i32.store offset=28
    local.get $l3
    local.get $p1
    i32.store offset=24
    local.get $l3
    local.get $l5
    local.get $l4
    i32.sub
    local.tee $p1
    i32.store offset=20
    local.get $p1
    local.get $p2
    i32.add
    local.set $l6
    local.get $l3
    i32.const 16
    i32.add
    local.set $l4
    i32.const 2
    local.set $l7
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p0
              i32.load offset=60
              local.get $l3
              i32.const 16
              i32.add
              i32.const 2
              local.get $l3
              i32.const 12
              i32.add
              call $wasi_snapshot_preview1.fd_write
              call $f43
              i32.eqz
              br_if $B4
              local.get $l4
              local.set $l5
              br $B3
            end
            loop $L5
              local.get $l6
              local.get $l3
              i32.load offset=12
              local.tee $p1
              i32.eq
              br_if $B2
              block $B6
                local.get $p1
                i32.const -1
                i32.gt_s
                br_if $B6
                local.get $l4
                local.set $l5
                br $B1
              end
              local.get $l4
              local.get $p1
              local.get $l4
              i32.load offset=4
              local.tee $l8
              i32.gt_u
              local.tee $l9
              i32.const 3
              i32.shl
              i32.add
              local.tee $l5
              local.get $l5
              i32.load
              local.get $p1
              local.get $l8
              i32.const 0
              local.get $l9
              select
              i32.sub
              local.tee $l8
              i32.add
              i32.store
              local.get $l4
              i32.const 12
              i32.const 4
              local.get $l9
              select
              i32.add
              local.tee $l4
              local.get $l4
              i32.load
              local.get $l8
              i32.sub
              i32.store
              local.get $l6
              local.get $p1
              i32.sub
              local.set $l6
              local.get $l5
              local.set $l4
              local.get $p0
              i32.load offset=60
              local.get $l5
              local.get $l7
              local.get $l9
              i32.sub
              local.tee $l7
              local.get $l3
              i32.const 12
              i32.add
              call $wasi_snapshot_preview1.fd_write
              call $f43
              i32.eqz
              br_if $L5
            end
          end
          local.get $l6
          i32.const -1
          i32.ne
          br_if $B1
        end
        local.get $p0
        local.get $p0
        i32.load offset=44
        local.tee $p1
        i32.store offset=28
        local.get $p0
        local.get $p1
        i32.store offset=20
        local.get $p0
        local.get $p1
        local.get $p0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get $p2
        local.set $p1
        br $B0
      end
      i32.const 0
      local.set $p1
      local.get $p0
      i32.const 0
      i32.store offset=28
      local.get $p0
      i64.const 0
      i64.store offset=16
      local.get $p0
      local.get $p0
      i32.load
      i32.const 32
      i32.or
      i32.store
      local.get $l7
      i32.const 2
      i32.eq
      br_if $B0
      local.get $p2
      local.get $l5
      i32.load offset=4
      i32.sub
      local.set $p1
    end
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f13 (type $t1) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f14 (type $t5) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    i64.const 0)
  (func $f15 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
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
      br_if $B0
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
      br_if $B0
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
      br_if $B0
      local.get $p0
      i32.const 0
      local.get $p0
      i32.sub
      i32.const 3
      i32.and
      local.tee $l4
      i32.add
      local.tee $l3
      local.get $p1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee $p1
      i32.store
      local.get $l3
      local.get $p2
      local.get $l4
      i32.sub
      i32.const -4
      i32.and
      local.tee $l4
      i32.add
      local.tee $p2
      i32.const -4
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      i32.const 9
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=8
      local.get $l3
      local.get $p1
      i32.store offset=4
      local.get $p2
      i32.const -8
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -12
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      i32.const 25
      i32.lt_u
      br_if $B0
      local.get $l3
      local.get $p1
      i32.store offset=24
      local.get $l3
      local.get $p1
      i32.store offset=20
      local.get $l3
      local.get $p1
      i32.store offset=16
      local.get $l3
      local.get $p1
      i32.store offset=12
      local.get $p2
      i32.const -16
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -20
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -24
      i32.add
      local.get $p1
      i32.store
      local.get $p2
      i32.const -28
      i32.add
      local.get $p1
      i32.store
      local.get $l4
      local.get $l3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee $l5
      i32.sub
      local.tee $p2
      i32.const 32
      i32.lt_u
      br_if $B0
      local.get $p1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set $l6
      local.get $l3
      local.get $l5
      i32.add
      local.set $p1
      loop $L1
        local.get $p1
        local.get $l6
        i64.store offset=24
        local.get $p1
        local.get $l6
        i64.store offset=16
        local.get $p1
        local.get $l6
        i64.store offset=8
        local.get $p1
        local.get $l6
        i64.store
        local.get $p1
        i32.const 32
        i32.add
        local.set $p1
        local.get $p2
        i32.const -32
        i32.add
        local.tee $p2
        i32.const 31
        i32.gt_u
        br_if $L1
      end
    end
    local.get $p0)
  (func $f16 (type $t1) (param $p0 i32) (result i32)
    i32.const 1)
  (func $f17 (type $t4) (param $p0 i32))
  (func $__errno_location (type $t2) (result i32)
    i32.const 2920)
  (func $f19 (type $t4) (param $p0 i32))
  (func $f20 (type $t2) (result i32)
    i32.const 2924
    call $f19
    i32.const 2928)
  (func $f21 (type $t3)
    (local $l0 i32)
    block $B0
      call $f20
      i32.load
      local.tee $l0
      i32.eqz
      br_if $B0
      loop $L1
        local.get $l0
        call $f22
        local.get $l0
        i32.load offset=56
        local.tee $l0
        br_if $L1
      end
    end
    i32.const 0
    i32.load offset=2932
    call $f22
    i32.const 0
    i32.load offset=1728
    call $f22
    i32.const 0
    i32.load offset=1880
    call $f22)
  (func $f22 (type $t4) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      block $B1
        local.get $p0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if $B1
        local.get $p0
        call $f16
        drop
      end
      block $B2
        local.get $p0
        i32.load offset=20
        local.get $p0
        i32.load offset=28
        i32.eq
        br_if $B2
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=36
        call_indirect (type $t0) $__indirect_function_table
        drop
      end
      local.get $p0
      i32.load offset=4
      local.tee $l1
      local.get $p0
      i32.load offset=8
      local.tee $l2
      i32.eq
      br_if $B0
      local.get $p0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $p0
      i32.load offset=40
      call_indirect (type $t5) $__indirect_function_table
      drop
    end)
  (func $f23 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=72
    local.tee $l1
    i32.const -1
    i32.add
    local.get $l1
    i32.or
    i32.store offset=72
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
    i32.load offset=44
    local.tee $l1
    i32.store offset=28
    local.get $p0
    local.get $l1
    i32.store offset=20
    local.get $p0
    local.get $l1
    local.get $p0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $f24 (type $t1) (param $p0 i32) (result i32)
    local.get $p0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func $f25 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    local.get $p2
    i32.const 0
    i32.ne
    local.set $l3
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.const 3
          i32.and
          i32.eqz
          br_if $B2
          local.get $p2
          i32.eqz
          br_if $B2
          local.get $p1
          i32.const 255
          i32.and
          local.set $l4
          loop $L3
            local.get $p0
            i32.load8_u
            local.get $l4
            i32.eq
            br_if $B1
            local.get $p2
            i32.const -1
            i32.add
            local.tee $p2
            i32.const 0
            i32.ne
            local.set $l3
            local.get $p0
            i32.const 1
            i32.add
            local.tee $p0
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $p2
            br_if $L3
          end
        end
        local.get $l3
        i32.eqz
        br_if $B0
      end
      block $B4
        block $B5
          local.get $p0
          i32.load8_u
          local.get $p1
          i32.const 255
          i32.and
          i32.eq
          br_if $B5
          local.get $p2
          i32.const 4
          i32.lt_u
          br_if $B5
          local.get $p1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set $l4
          loop $L6
            local.get $p0
            i32.load
            local.get $l4
            i32.xor
            local.tee $l3
            i32.const -1
            i32.xor
            local.get $l3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if $B4
            local.get $p0
            i32.const 4
            i32.add
            local.set $p0
            local.get $p2
            i32.const -4
            i32.add
            local.tee $p2
            i32.const 3
            i32.gt_u
            br_if $L6
          end
        end
        local.get $p2
        i32.eqz
        br_if $B0
      end
      local.get $p1
      i32.const 255
      i32.and
      local.set $l3
      loop $L7
        block $B8
          local.get $p0
          i32.load8_u
          local.get $l3
          i32.ne
          br_if $B8
          local.get $p0
          return
        end
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L7
      end
    end
    i32.const 0)
  (func $f26 (type $t6) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    i32.const 0
    local.get $p1
    call $f25
    local.tee $l2
    local.get $p0
    i32.sub
    local.get $p1
    local.get $l2
    select)
  (func $f27 (type $t13) (param $p0 f64) (param $p1 i32) (result f64)
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
          block $B3
            local.get $p0
            f64.const 0x0p+0 (;=0;)
            f64.ne
            br_if $B3
            i32.const 0
            local.set $l3
            br $B2
          end
          local.get $p0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get $p1
          call $f27
          local.set $p0
          local.get $p1
          i32.load
          i32.const -64
          i32.add
          local.set $l3
        end
        local.get $p1
        local.get $l3
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
  (func $f28 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p0
    local.get $p2
    i32.add
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            local.get $p0
            i32.xor
            i32.const 3
            i32.and
            br_if $B3
            local.get $p0
            i32.const 3
            i32.and
            i32.eqz
            br_if $B2
            local.get $p2
            i32.const 1
            i32.lt_s
            br_if $B2
            local.get $p0
            local.set $p2
            loop $L4
              local.get $p2
              local.get $p1
              i32.load8_u
              i32.store8
              local.get $p1
              i32.const 1
              i32.add
              local.set $p1
              local.get $p2
              i32.const 1
              i32.add
              local.tee $p2
              i32.const 3
              i32.and
              i32.eqz
              br_if $B1
              local.get $p2
              local.get $l3
              i32.lt_u
              br_if $L4
              br $B1
            end
            unreachable
          end
          block $B5
            local.get $l3
            i32.const 4
            i32.lt_u
            br_if $B5
            local.get $l3
            i32.const -4
            i32.add
            local.tee $l4
            local.get $p0
            i32.lt_u
            br_if $B5
            local.get $p0
            local.set $p2
            loop $L6
              local.get $p2
              local.get $p1
              i32.load8_u
              i32.store8
              local.get $p2
              local.get $p1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get $p2
              local.get $p1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get $p2
              local.get $p1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get $p1
              i32.const 4
              i32.add
              local.set $p1
              local.get $p2
              i32.const 4
              i32.add
              local.tee $p2
              local.get $l4
              i32.le_u
              br_if $L6
              br $B0
            end
            unreachable
          end
          local.get $p0
          local.set $p2
          br $B0
        end
        local.get $p0
        local.set $p2
      end
      block $B7
        local.get $l3
        i32.const -4
        i32.and
        local.tee $l4
        i32.const 64
        i32.lt_u
        br_if $B7
        local.get $p2
        local.get $l4
        i32.const -64
        i32.add
        local.tee $l5
        i32.gt_u
        br_if $B7
        loop $L8
          local.get $p2
          local.get $p1
          i32.load
          i32.store
          local.get $p2
          local.get $p1
          i32.load offset=4
          i32.store offset=4
          local.get $p2
          local.get $p1
          i32.load offset=8
          i32.store offset=8
          local.get $p2
          local.get $p1
          i32.load offset=12
          i32.store offset=12
          local.get $p2
          local.get $p1
          i32.load offset=16
          i32.store offset=16
          local.get $p2
          local.get $p1
          i32.load offset=20
          i32.store offset=20
          local.get $p2
          local.get $p1
          i32.load offset=24
          i32.store offset=24
          local.get $p2
          local.get $p1
          i32.load offset=28
          i32.store offset=28
          local.get $p2
          local.get $p1
          i32.load offset=32
          i32.store offset=32
          local.get $p2
          local.get $p1
          i32.load offset=36
          i32.store offset=36
          local.get $p2
          local.get $p1
          i32.load offset=40
          i32.store offset=40
          local.get $p2
          local.get $p1
          i32.load offset=44
          i32.store offset=44
          local.get $p2
          local.get $p1
          i32.load offset=48
          i32.store offset=48
          local.get $p2
          local.get $p1
          i32.load offset=52
          i32.store offset=52
          local.get $p2
          local.get $p1
          i32.load offset=56
          i32.store offset=56
          local.get $p2
          local.get $p1
          i32.load offset=60
          i32.store offset=60
          local.get $p1
          i32.const 64
          i32.add
          local.set $p1
          local.get $p2
          i32.const 64
          i32.add
          local.tee $p2
          local.get $l5
          i32.le_u
          br_if $L8
        end
      end
      local.get $p2
      local.get $l4
      i32.ge_u
      br_if $B0
      loop $L9
        local.get $p2
        local.get $p1
        i32.load
        i32.store
        local.get $p1
        i32.const 4
        i32.add
        local.set $p1
        local.get $p2
        i32.const 4
        i32.add
        local.tee $p2
        local.get $l4
        i32.lt_u
        br_if $L9
      end
    end
    block $B10
      local.get $p2
      local.get $l3
      i32.ge_u
      br_if $B10
      loop $L11
        local.get $p2
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $p2
        i32.const 1
        i32.add
        local.tee $p2
        local.get $l3
        i32.ne
        br_if $L11
      end
    end
    local.get $p0)
  (func $f29 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0
      block $B1
        local.get $p2
        i32.load offset=16
        local.tee $l3
        br_if $B1
        i32.const 0
        local.set $l4
        local.get $p2
        call $f23
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
        i32.load offset=36
        call_indirect (type $t0) $__indirect_function_table
        return
      end
      block $B3
        block $B4
          local.get $p2
          i32.load offset=80
          i32.const 0
          i32.ge_s
          br_if $B4
          i32.const 0
          local.set $l3
          br $B3
        end
        local.get $p1
        local.set $l4
        loop $L5
          block $B6
            local.get $l4
            local.tee $l3
            br_if $B6
            i32.const 0
            local.set $l3
            br $B3
          end
          local.get $p0
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if $L5
        end
        local.get $p2
        local.get $p0
        local.get $l3
        local.get $p2
        i32.load offset=36
        call_indirect (type $t0) $__indirect_function_table
        local.tee $l4
        local.get $l3
        i32.lt_u
        br_if $B0
        local.get $p0
        local.get $l3
        i32.add
        local.set $p0
        local.get $p1
        local.get $l3
        i32.sub
        local.set $p1
        local.get $p2
        i32.load offset=20
        local.set $l5
      end
      local.get $l5
      local.get $p0
      local.get $p1
      call $f28
      drop
      local.get $p2
      local.get $p2
      i32.load offset=20
      local.get $p1
      i32.add
      i32.store offset=20
      local.get $l3
      local.get $p1
      i32.add
      local.set $l4
    end
    local.get $l4)
  (func $f30 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 208
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p2
    i32.store offset=204
    i32.const 0
    local.set $l6
    local.get $l5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call $f15
    drop
    local.get $l5
    local.get $l5
    i32.load offset=204
    i32.store offset=200
    block $B0
      block $B1
        i32.const 0
        local.get $p1
        local.get $l5
        i32.const 200
        i32.add
        local.get $l5
        i32.const 80
        i32.add
        local.get $l5
        i32.const 160
        i32.add
        local.get $p3
        local.get $p4
        call $f31
        i32.const 0
        i32.ge_s
        br_if $B1
        i32.const -1
        local.set $p4
        br $B0
      end
      block $B2
        local.get $p0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if $B2
        local.get $p0
        call $f16
        local.set $l6
      end
      local.get $p0
      i32.load
      local.set $l7
      block $B3
        local.get $p0
        i32.load offset=72
        i32.const 0
        i32.gt_s
        br_if $B3
        local.get $p0
        local.get $l7
        i32.const -33
        i32.and
        i32.store
      end
      block $B4
        block $B5
          block $B6
            block $B7
              local.get $p0
              i32.load offset=48
              br_if $B7
              local.get $p0
              i32.const 80
              i32.store offset=48
              local.get $p0
              i32.const 0
              i32.store offset=28
              local.get $p0
              i64.const 0
              i64.store offset=16
              local.get $p0
              i32.load offset=44
              local.set $l8
              local.get $p0
              local.get $l5
              i32.store offset=44
              br $B6
            end
            i32.const 0
            local.set $l8
            local.get $p0
            i32.load offset=16
            br_if $B5
          end
          i32.const -1
          local.set $p2
          local.get $p0
          call $f23
          br_if $B4
        end
        local.get $p0
        local.get $p1
        local.get $l5
        i32.const 200
        i32.add
        local.get $l5
        i32.const 80
        i32.add
        local.get $l5
        i32.const 160
        i32.add
        local.get $p3
        local.get $p4
        call $f31
        local.set $p2
      end
      local.get $l7
      i32.const 32
      i32.and
      local.set $p4
      block $B8
        local.get $l8
        i32.eqz
        br_if $B8
        local.get $p0
        i32.const 0
        i32.const 0
        local.get $p0
        i32.load offset=36
        call_indirect (type $t0) $__indirect_function_table
        drop
        local.get $p0
        i32.const 0
        i32.store offset=48
        local.get $p0
        local.get $l8
        i32.store offset=44
        local.get $p0
        i32.const 0
        i32.store offset=28
        local.get $p0
        i32.load offset=20
        local.set $p3
        local.get $p0
        i64.const 0
        i64.store offset=16
        local.get $p2
        i32.const -1
        local.get $p3
        select
        local.set $p2
      end
      local.get $p0
      local.get $p0
      i32.load
      local.tee $p3
      local.get $p4
      i32.or
      i32.store
      i32.const -1
      local.get $p2
      local.get $p3
      i32.const 32
      i32.and
      select
      local.set $p4
      local.get $l6
      i32.eqz
      br_if $B0
      local.get $p0
      call $f17
    end
    local.get $l5
    i32.const 208
    i32.add
    global.set $g0
    local.get $p4)
  (func $f31 (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l7
    global.set $g0
    local.get $l7
    local.get $p1
    i32.store offset=76
    local.get $l7
    i32.const 55
    i32.add
    local.set $l8
    local.get $l7
    i32.const 56
    i32.add
    local.set $l9
    i32.const 0
    local.set $l10
    i32.const 0
    local.set $l11
    i32.const 0
    local.set $l12
    block $B0
      block $B1
        block $B2
          block $B3
            loop $L4
              local.get $p1
              local.set $l13
              local.get $l12
              local.get $l11
              i32.const 2147483647
              i32.xor
              i32.gt_s
              br_if $B3
              local.get $l12
              local.get $l11
              i32.add
              local.set $l11
              local.get $l13
              local.set $l12
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        local.get $l13
                        i32.load8_u
                        local.tee $l14
                        i32.eqz
                        br_if $B9
                        loop $L10
                          block $B11
                            block $B12
                              block $B13
                                local.get $l14
                                i32.const 255
                                i32.and
                                local.tee $l14
                                br_if $B13
                                local.get $l12
                                local.set $p1
                                br $B12
                              end
                              local.get $l14
                              i32.const 37
                              i32.ne
                              br_if $B11
                              local.get $l12
                              local.set $l14
                              loop $L14
                                block $B15
                                  local.get $l14
                                  i32.load8_u offset=1
                                  i32.const 37
                                  i32.eq
                                  br_if $B15
                                  local.get $l14
                                  local.set $p1
                                  br $B12
                                end
                                local.get $l12
                                i32.const 1
                                i32.add
                                local.set $l12
                                local.get $l14
                                i32.load8_u offset=2
                                local.set $l15
                                local.get $l14
                                i32.const 2
                                i32.add
                                local.tee $p1
                                local.set $l14
                                local.get $l15
                                i32.const 37
                                i32.eq
                                br_if $L14
                              end
                            end
                            local.get $l12
                            local.get $l13
                            i32.sub
                            local.tee $l12
                            local.get $l11
                            i32.const 2147483647
                            i32.xor
                            local.tee $l14
                            i32.gt_s
                            br_if $B3
                            block $B16
                              local.get $p0
                              i32.eqz
                              br_if $B16
                              local.get $p0
                              local.get $l13
                              local.get $l12
                              call $f32
                            end
                            local.get $l12
                            br_if $L4
                            local.get $l7
                            local.get $p1
                            i32.store offset=76
                            local.get $p1
                            i32.const 1
                            i32.add
                            local.set $l12
                            i32.const -1
                            local.set $l16
                            block $B17
                              local.get $p1
                              i32.load8_s offset=1
                              call $f24
                              i32.eqz
                              br_if $B17
                              local.get $p1
                              i32.load8_u offset=2
                              i32.const 36
                              i32.ne
                              br_if $B17
                              local.get $p1
                              i32.const 3
                              i32.add
                              local.set $l12
                              local.get $p1
                              i32.load8_s offset=1
                              i32.const -48
                              i32.add
                              local.set $l16
                              i32.const 1
                              local.set $l10
                            end
                            local.get $l7
                            local.get $l12
                            i32.store offset=76
                            i32.const 0
                            local.set $l17
                            block $B18
                              block $B19
                                local.get $l12
                                i32.load8_s
                                local.tee $l18
                                i32.const -32
                                i32.add
                                local.tee $p1
                                i32.const 31
                                i32.le_u
                                br_if $B19
                                local.get $l12
                                local.set $l15
                                br $B18
                              end
                              i32.const 0
                              local.set $l17
                              local.get $l12
                              local.set $l15
                              i32.const 1
                              local.get $p1
                              i32.shl
                              local.tee $p1
                              i32.const 75913
                              i32.and
                              i32.eqz
                              br_if $B18
                              loop $L20
                                local.get $l7
                                local.get $l12
                                i32.const 1
                                i32.add
                                local.tee $l15
                                i32.store offset=76
                                local.get $p1
                                local.get $l17
                                i32.or
                                local.set $l17
                                local.get $l12
                                i32.load8_s offset=1
                                local.tee $l18
                                i32.const -32
                                i32.add
                                local.tee $p1
                                i32.const 32
                                i32.ge_u
                                br_if $B18
                                local.get $l15
                                local.set $l12
                                i32.const 1
                                local.get $p1
                                i32.shl
                                local.tee $p1
                                i32.const 75913
                                i32.and
                                br_if $L20
                              end
                            end
                            block $B21
                              block $B22
                                local.get $l18
                                i32.const 42
                                i32.ne
                                br_if $B22
                                block $B23
                                  block $B24
                                    local.get $l15
                                    i32.load8_s offset=1
                                    call $f24
                                    i32.eqz
                                    br_if $B24
                                    local.get $l15
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if $B24
                                    local.get $l15
                                    i32.load8_s offset=1
                                    i32.const 2
                                    i32.shl
                                    local.get $p4
                                    i32.add
                                    i32.const -192
                                    i32.add
                                    i32.const 10
                                    i32.store
                                    local.get $l15
                                    i32.const 3
                                    i32.add
                                    local.set $l18
                                    local.get $l15
                                    i32.load8_s offset=1
                                    i32.const 3
                                    i32.shl
                                    local.get $p3
                                    i32.add
                                    i32.const -384
                                    i32.add
                                    i32.load
                                    local.set $l19
                                    i32.const 1
                                    local.set $l10
                                    br $B23
                                  end
                                  local.get $l10
                                  br_if $B8
                                  local.get $l15
                                  i32.const 1
                                  i32.add
                                  local.set $l18
                                  block $B25
                                    local.get $p0
                                    br_if $B25
                                    local.get $l7
                                    local.get $l18
                                    i32.store offset=76
                                    i32.const 0
                                    local.set $l10
                                    i32.const 0
                                    local.set $l19
                                    br $B21
                                  end
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $l12
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $l12
                                  i32.load
                                  local.set $l19
                                  i32.const 0
                                  local.set $l10
                                end
                                local.get $l7
                                local.get $l18
                                i32.store offset=76
                                local.get $l19
                                i32.const -1
                                i32.gt_s
                                br_if $B21
                                i32.const 0
                                local.get $l19
                                i32.sub
                                local.set $l19
                                local.get $l17
                                i32.const 8192
                                i32.or
                                local.set $l17
                                br $B21
                              end
                              local.get $l7
                              i32.const 76
                              i32.add
                              call $f33
                              local.tee $l19
                              i32.const 0
                              i32.lt_s
                              br_if $B3
                              local.get $l7
                              i32.load offset=76
                              local.set $l18
                            end
                            i32.const 0
                            local.set $l12
                            i32.const -1
                            local.set $l20
                            block $B26
                              block $B27
                                local.get $l18
                                i32.load8_u
                                i32.const 46
                                i32.eq
                                br_if $B27
                                local.get $l18
                                local.set $p1
                                i32.const 0
                                local.set $l21
                                br $B26
                              end
                              block $B28
                                local.get $l18
                                i32.load8_u offset=1
                                i32.const 42
                                i32.ne
                                br_if $B28
                                block $B29
                                  block $B30
                                    local.get $l18
                                    i32.load8_s offset=2
                                    call $f24
                                    i32.eqz
                                    br_if $B30
                                    local.get $l18
                                    i32.load8_u offset=3
                                    i32.const 36
                                    i32.ne
                                    br_if $B30
                                    local.get $l18
                                    i32.load8_s offset=2
                                    i32.const 2
                                    i32.shl
                                    local.get $p4
                                    i32.add
                                    i32.const -192
                                    i32.add
                                    i32.const 10
                                    i32.store
                                    local.get $l18
                                    i32.const 4
                                    i32.add
                                    local.set $p1
                                    local.get $l18
                                    i32.load8_s offset=2
                                    i32.const 3
                                    i32.shl
                                    local.get $p3
                                    i32.add
                                    i32.const -384
                                    i32.add
                                    i32.load
                                    local.set $l20
                                    br $B29
                                  end
                                  local.get $l10
                                  br_if $B8
                                  local.get $l18
                                  i32.const 2
                                  i32.add
                                  local.set $p1
                                  block $B31
                                    local.get $p0
                                    br_if $B31
                                    i32.const 0
                                    local.set $l20
                                    br $B29
                                  end
                                  local.get $p2
                                  local.get $p2
                                  i32.load
                                  local.tee $l15
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get $l15
                                  i32.load
                                  local.set $l20
                                end
                                local.get $l7
                                local.get $p1
                                i32.store offset=76
                                local.get $l20
                                i32.const -1
                                i32.xor
                                i32.const 31
                                i32.shr_u
                                local.set $l21
                                br $B26
                              end
                              local.get $l7
                              local.get $l18
                              i32.const 1
                              i32.add
                              i32.store offset=76
                              i32.const 1
                              local.set $l21
                              local.get $l7
                              i32.const 76
                              i32.add
                              call $f33
                              local.set $l20
                              local.get $l7
                              i32.load offset=76
                              local.set $p1
                            end
                            block $B32
                              loop $L33
                                local.get $l12
                                local.set $l18
                                local.get $p1
                                local.tee $l15
                                i32.load8_s
                                local.tee $l12
                                i32.const -123
                                i32.add
                                i32.const -58
                                i32.lt_u
                                br_if $B32
                                local.get $l15
                                i32.const 1
                                i32.add
                                local.set $p1
                                local.get $l12
                                local.get $l18
                                i32.const 58
                                i32.mul
                                i32.add
                                i32.const 1039
                                i32.add
                                i32.load8_u
                                local.tee $l12
                                i32.const -1
                                i32.add
                                i32.const 8
                                i32.lt_u
                                br_if $L33
                              end
                              local.get $l7
                              local.get $p1
                              i32.store offset=76
                              i32.const 28
                              local.set $l22
                              block $B34
                                block $B35
                                  block $B36
                                    local.get $l12
                                    i32.const 27
                                    i32.eq
                                    br_if $B36
                                    local.get $l12
                                    i32.eqz
                                    br_if $B2
                                    block $B37
                                      local.get $l16
                                      i32.const 0
                                      i32.lt_s
                                      br_if $B37
                                      local.get $p4
                                      local.get $l16
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      local.get $l12
                                      i32.store
                                      local.get $l7
                                      local.get $p3
                                      local.get $l16
                                      i32.const 3
                                      i32.shl
                                      i32.add
                                      i64.load
                                      i64.store offset=64
                                      br $B35
                                    end
                                    local.get $p0
                                    i32.eqz
                                    br_if $B5
                                    local.get $l7
                                    i32.const 64
                                    i32.add
                                    local.get $l12
                                    local.get $p2
                                    local.get $p6
                                    call $f34
                                    br $B34
                                  end
                                  local.get $l16
                                  i32.const -1
                                  i32.gt_s
                                  br_if $B2
                                end
                                i32.const 0
                                local.set $l12
                                local.get $p0
                                i32.eqz
                                br_if $L4
                              end
                              local.get $l17
                              i32.const -65537
                              i32.and
                              local.tee $l23
                              local.get $l17
                              local.get $l17
                              i32.const 8192
                              i32.and
                              select
                              local.set $l17
                              i32.const 0
                              local.set $l16
                              i32.const 1024
                              local.set $l24
                              local.get $l9
                              local.set $l22
                              block $B38
                                block $B39
                                  block $B40
                                    block $B41
                                      block $B42
                                        block $B43
                                          block $B44
                                            block $B45
                                              block $B46
                                                block $B47
                                                  block $B48
                                                    block $B49
                                                      block $B50
                                                        block $B51
                                                          block $B52
                                                            block $B53
                                                              local.get $l15
                                                              i32.load8_s
                                                              local.tee $l12
                                                              i32.const -33
                                                              i32.and
                                                              local.get $l12
                                                              local.get $l12
                                                              i32.const 15
                                                              i32.and
                                                              i32.const 3
                                                              i32.eq
                                                              select
                                                              local.get $l12
                                                              local.get $l18
                                                              select
                                                              local.tee $l12
                                                              i32.const -88
                                                              i32.add
                                                              br_table $B49 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B39 $B6 $B38 $B47 $B39 $B39 $B39 $B6 $B47 $B6 $B6 $B6 $B6 $B51 $B48 $B50 $B6 $B6 $B44 $B6 $B52 $B6 $B6 $B49 $B53
                                                            end
                                                            local.get $l9
                                                            local.set $l22
                                                            block $B54
                                                              local.get $l12
                                                              i32.const -65
                                                              i32.add
                                                              br_table $B39 $B6 $B42 $B6 $B39 $B39 $B39 $B54
                                                            end
                                                            local.get $l12
                                                            i32.const 83
                                                            i32.eq
                                                            br_if $B43
                                                            br $B7
                                                          end
                                                          i32.const 0
                                                          local.set $l16
                                                          i32.const 1024
                                                          local.set $l24
                                                          local.get $l7
                                                          i64.load offset=64
                                                          local.set $l25
                                                          br $B46
                                                        end
                                                        i32.const 0
                                                        local.set $l12
                                                        block $B55
                                                          block $B56
                                                            block $B57
                                                              block $B58
                                                                block $B59
                                                                  block $B60
                                                                    block $B61
                                                                      local.get $l18
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table $B61 $B60 $B59 $B58 $B57 $L4 $B56 $B55 $L4
                                                                    end
                                                                    local.get $l7
                                                                    i32.load offset=64
                                                                    local.get $l11
                                                                    i32.store
                                                                    br $L4
                                                                  end
                                                                  local.get $l7
                                                                  i32.load offset=64
                                                                  local.get $l11
                                                                  i32.store
                                                                  br $L4
                                                                end
                                                                local.get $l7
                                                                i32.load offset=64
                                                                local.get $l11
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br $L4
                                                              end
                                                              local.get $l7
                                                              i32.load offset=64
                                                              local.get $l11
                                                              i32.store16
                                                              br $L4
                                                            end
                                                            local.get $l7
                                                            i32.load offset=64
                                                            local.get $l11
                                                            i32.store8
                                                            br $L4
                                                          end
                                                          local.get $l7
                                                          i32.load offset=64
                                                          local.get $l11
                                                          i32.store
                                                          br $L4
                                                        end
                                                        local.get $l7
                                                        i32.load offset=64
                                                        local.get $l11
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br $L4
                                                      end
                                                      local.get $l20
                                                      i32.const 8
                                                      local.get $l20
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set $l20
                                                      local.get $l17
                                                      i32.const 8
                                                      i32.or
                                                      local.set $l17
                                                      i32.const 120
                                                      local.set $l12
                                                    end
                                                    local.get $l7
                                                    i64.load offset=64
                                                    local.get $l9
                                                    local.get $l12
                                                    i32.const 32
                                                    i32.and
                                                    call $f35
                                                    local.set $l13
                                                    i32.const 0
                                                    local.set $l16
                                                    i32.const 1024
                                                    local.set $l24
                                                    local.get $l7
                                                    i64.load offset=64
                                                    i64.eqz
                                                    br_if $B45
                                                    local.get $l17
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if $B45
                                                    local.get $l12
                                                    i32.const 4
                                                    i32.shr_u
                                                    i32.const 1024
                                                    i32.add
                                                    local.set $l24
                                                    i32.const 2
                                                    local.set $l16
                                                    br $B45
                                                  end
                                                  i32.const 0
                                                  local.set $l16
                                                  i32.const 1024
                                                  local.set $l24
                                                  local.get $l7
                                                  i64.load offset=64
                                                  local.get $l9
                                                  call $f36
                                                  local.set $l13
                                                  local.get $l17
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if $B45
                                                  local.get $l20
                                                  local.get $l9
                                                  local.get $l13
                                                  i32.sub
                                                  local.tee $l12
                                                  i32.const 1
                                                  i32.add
                                                  local.get $l20
                                                  local.get $l12
                                                  i32.gt_s
                                                  select
                                                  local.set $l20
                                                  br $B45
                                                end
                                                block $B62
                                                  local.get $l7
                                                  i64.load offset=64
                                                  local.tee $l25
                                                  i64.const -1
                                                  i64.gt_s
                                                  br_if $B62
                                                  local.get $l7
                                                  i64.const 0
                                                  local.get $l25
                                                  i64.sub
                                                  local.tee $l25
                                                  i64.store offset=64
                                                  i32.const 1
                                                  local.set $l16
                                                  i32.const 1024
                                                  local.set $l24
                                                  br $B46
                                                end
                                                block $B63
                                                  local.get $l17
                                                  i32.const 2048
                                                  i32.and
                                                  i32.eqz
                                                  br_if $B63
                                                  i32.const 1
                                                  local.set $l16
                                                  i32.const 1025
                                                  local.set $l24
                                                  br $B46
                                                end
                                                i32.const 1026
                                                i32.const 1024
                                                local.get $l17
                                                i32.const 1
                                                i32.and
                                                local.tee $l16
                                                select
                                                local.set $l24
                                              end
                                              local.get $l25
                                              local.get $l9
                                              call $f37
                                              local.set $l13
                                            end
                                            block $B64
                                              local.get $l21
                                              i32.eqz
                                              br_if $B64
                                              local.get $l20
                                              i32.const 0
                                              i32.lt_s
                                              br_if $B3
                                            end
                                            local.get $l17
                                            i32.const -65537
                                            i32.and
                                            local.get $l17
                                            local.get $l21
                                            select
                                            local.set $l17
                                            block $B65
                                              local.get $l7
                                              i64.load offset=64
                                              local.tee $l25
                                              i64.const 0
                                              i64.ne
                                              br_if $B65
                                              local.get $l20
                                              br_if $B65
                                              local.get $l9
                                              local.set $l13
                                              local.get $l9
                                              local.set $l22
                                              i32.const 0
                                              local.set $l20
                                              br $B6
                                            end
                                            local.get $l20
                                            local.get $l9
                                            local.get $l13
                                            i32.sub
                                            local.get $l25
                                            i64.eqz
                                            i32.add
                                            local.tee $l12
                                            local.get $l20
                                            local.get $l12
                                            i32.gt_s
                                            select
                                            local.set $l20
                                            br $B7
                                          end
                                          local.get $l7
                                          i32.load offset=64
                                          local.tee $l12
                                          i32.const 1071
                                          local.get $l12
                                          select
                                          local.set $l13
                                          local.get $l13
                                          local.get $l13
                                          local.get $l20
                                          i32.const 2147483647
                                          local.get $l20
                                          i32.const 2147483647
                                          i32.lt_u
                                          select
                                          call $f26
                                          local.tee $l12
                                          i32.add
                                          local.set $l22
                                          block $B66
                                            local.get $l20
                                            i32.const -1
                                            i32.le_s
                                            br_if $B66
                                            local.get $l23
                                            local.set $l17
                                            local.get $l12
                                            local.set $l20
                                            br $B6
                                          end
                                          local.get $l23
                                          local.set $l17
                                          local.get $l12
                                          local.set $l20
                                          local.get $l22
                                          i32.load8_u
                                          br_if $B3
                                          br $B6
                                        end
                                        block $B67
                                          local.get $l20
                                          i32.eqz
                                          br_if $B67
                                          local.get $l7
                                          i32.load offset=64
                                          local.set $l14
                                          br $B41
                                        end
                                        i32.const 0
                                        local.set $l12
                                        local.get $p0
                                        i32.const 32
                                        local.get $l19
                                        i32.const 0
                                        local.get $l17
                                        call $f38
                                        br $B40
                                      end
                                      local.get $l7
                                      i32.const 0
                                      i32.store offset=12
                                      local.get $l7
                                      local.get $l7
                                      i64.load offset=64
                                      i64.store32 offset=8
                                      local.get $l7
                                      local.get $l7
                                      i32.const 8
                                      i32.add
                                      i32.store offset=64
                                      local.get $l7
                                      i32.const 8
                                      i32.add
                                      local.set $l14
                                      i32.const -1
                                      local.set $l20
                                    end
                                    i32.const 0
                                    local.set $l12
                                    block $B68
                                      loop $L69
                                        local.get $l14
                                        i32.load
                                        local.tee $l15
                                        i32.eqz
                                        br_if $B68
                                        block $B70
                                          local.get $l7
                                          i32.const 4
                                          i32.add
                                          local.get $l15
                                          call $f53
                                          local.tee $l15
                                          i32.const 0
                                          i32.lt_s
                                          local.tee $l13
                                          br_if $B70
                                          local.get $l15
                                          local.get $l20
                                          local.get $l12
                                          i32.sub
                                          i32.gt_u
                                          br_if $B70
                                          local.get $l14
                                          i32.const 4
                                          i32.add
                                          local.set $l14
                                          local.get $l20
                                          local.get $l15
                                          local.get $l12
                                          i32.add
                                          local.tee $l12
                                          i32.gt_u
                                          br_if $L69
                                          br $B68
                                        end
                                      end
                                      local.get $l13
                                      br_if $B1
                                    end
                                    i32.const 61
                                    local.set $l22
                                    local.get $l12
                                    i32.const 0
                                    i32.lt_s
                                    br_if $B2
                                    local.get $p0
                                    i32.const 32
                                    local.get $l19
                                    local.get $l12
                                    local.get $l17
                                    call $f38
                                    block $B71
                                      local.get $l12
                                      br_if $B71
                                      i32.const 0
                                      local.set $l12
                                      br $B40
                                    end
                                    i32.const 0
                                    local.set $l15
                                    local.get $l7
                                    i32.load offset=64
                                    local.set $l14
                                    loop $L72
                                      local.get $l14
                                      i32.load
                                      local.tee $l13
                                      i32.eqz
                                      br_if $B40
                                      local.get $l7
                                      i32.const 4
                                      i32.add
                                      local.get $l13
                                      call $f53
                                      local.tee $l13
                                      local.get $l15
                                      i32.add
                                      local.tee $l15
                                      local.get $l12
                                      i32.gt_u
                                      br_if $B40
                                      local.get $p0
                                      local.get $l7
                                      i32.const 4
                                      i32.add
                                      local.get $l13
                                      call $f32
                                      local.get $l14
                                      i32.const 4
                                      i32.add
                                      local.set $l14
                                      local.get $l15
                                      local.get $l12
                                      i32.lt_u
                                      br_if $L72
                                    end
                                  end
                                  local.get $p0
                                  i32.const 32
                                  local.get $l19
                                  local.get $l12
                                  local.get $l17
                                  i32.const 8192
                                  i32.xor
                                  call $f38
                                  local.get $l19
                                  local.get $l12
                                  local.get $l19
                                  local.get $l12
                                  i32.gt_s
                                  select
                                  local.set $l12
                                  br $L4
                                end
                                block $B73
                                  local.get $l21
                                  i32.eqz
                                  br_if $B73
                                  local.get $l20
                                  i32.const 0
                                  i32.lt_s
                                  br_if $B3
                                end
                                i32.const 61
                                local.set $l22
                                local.get $p0
                                local.get $l7
                                f64.load offset=64
                                local.get $l19
                                local.get $l20
                                local.get $l17
                                local.get $l12
                                local.get $p5
                                call_indirect (type $t7) $__indirect_function_table
                                local.tee $l12
                                i32.const 0
                                i32.ge_s
                                br_if $L4
                                br $B2
                              end
                              local.get $l7
                              local.get $l7
                              i64.load offset=64
                              i64.store8 offset=55
                              i32.const 1
                              local.set $l20
                              local.get $l8
                              local.set $l13
                              local.get $l9
                              local.set $l22
                              local.get $l23
                              local.set $l17
                              br $B6
                            end
                            local.get $l7
                            local.get $l15
                            i32.store offset=76
                            br $B8
                          end
                          local.get $l12
                          i32.load8_u offset=1
                          local.set $l14
                          local.get $l12
                          i32.const 1
                          i32.add
                          local.set $l12
                          br $L10
                        end
                        unreachable
                      end
                      local.get $p0
                      br_if $B0
                      local.get $l10
                      i32.eqz
                      br_if $B5
                      i32.const 1
                      local.set $l12
                      block $B74
                        loop $L75
                          local.get $p4
                          local.get $l12
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          local.tee $l14
                          i32.eqz
                          br_if $B74
                          local.get $p3
                          local.get $l12
                          i32.const 3
                          i32.shl
                          i32.add
                          local.get $l14
                          local.get $p2
                          local.get $p6
                          call $f34
                          i32.const 1
                          local.set $l11
                          local.get $l12
                          i32.const 1
                          i32.add
                          local.tee $l12
                          i32.const 10
                          i32.ne
                          br_if $L75
                          br $B0
                        end
                        unreachable
                      end
                      i32.const 1
                      local.set $l11
                      local.get $l12
                      i32.const 10
                      i32.ge_u
                      br_if $B0
                      loop $L76
                        local.get $p4
                        local.get $l12
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.load
                        br_if $B8
                        i32.const 1
                        local.set $l11
                        local.get $l12
                        i32.const 1
                        i32.add
                        local.tee $l12
                        i32.const 10
                        i32.eq
                        br_if $B0
                        br $L76
                      end
                      unreachable
                    end
                    i32.const 28
                    local.set $l22
                    br $B2
                  end
                  local.get $l9
                  local.set $l22
                end
                local.get $l20
                local.get $l22
                local.get $l13
                i32.sub
                local.tee $l18
                local.get $l20
                local.get $l18
                i32.gt_s
                select
                local.tee $l20
                local.get $l16
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if $B3
                i32.const 61
                local.set $l22
                local.get $l19
                local.get $l16
                local.get $l20
                i32.add
                local.tee $l15
                local.get $l19
                local.get $l15
                i32.gt_s
                select
                local.tee $l12
                local.get $l14
                i32.gt_s
                br_if $B2
                local.get $p0
                i32.const 32
                local.get $l12
                local.get $l15
                local.get $l17
                call $f38
                local.get $p0
                local.get $l24
                local.get $l16
                call $f32
                local.get $p0
                i32.const 48
                local.get $l12
                local.get $l15
                local.get $l17
                i32.const 65536
                i32.xor
                call $f38
                local.get $p0
                i32.const 48
                local.get $l20
                local.get $l18
                i32.const 0
                call $f38
                local.get $p0
                local.get $l13
                local.get $l18
                call $f32
                local.get $p0
                i32.const 32
                local.get $l12
                local.get $l15
                local.get $l17
                i32.const 8192
                i32.xor
                call $f38
                br $L4
              end
            end
            i32.const 0
            local.set $l11
            br $B0
          end
          i32.const 61
          local.set $l22
        end
        call $__errno_location
        local.get $l22
        i32.store
      end
      i32.const -1
      local.set $l11
    end
    local.get $l7
    i32.const 80
    i32.add
    global.set $g0
    local.get $l11)
  (func $f32 (type $t16) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p0
      i32.load8_u
      i32.const 32
      i32.and
      br_if $B0
      local.get $p1
      local.get $p2
      local.get $p0
      call $f29
      drop
    end)
  (func $f33 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    i32.const 0
    local.set $l1
    block $B0
      local.get $p0
      i32.load
      i32.load8_s
      call $f24
      br_if $B0
      i32.const 0
      return
    end
    loop $L1
      local.get $p0
      i32.load
      local.set $l2
      i32.const -1
      local.set $l3
      block $B2
        local.get $l1
        i32.const 214748364
        i32.gt_u
        br_if $B2
        i32.const -1
        local.get $l2
        i32.load8_s
        i32.const -48
        i32.add
        local.tee $l3
        local.get $l1
        i32.const 10
        i32.mul
        local.tee $l1
        i32.add
        local.get $l3
        local.get $l1
        i32.const 2147483647
        i32.xor
        i32.gt_s
        select
        local.set $l3
      end
      local.get $p0
      local.get $l2
      i32.const 1
      i32.add
      i32.store
      local.get $l3
      local.set $l1
      local.get $l2
      i32.load8_s offset=1
      call $f24
      br_if $L1
    end
    local.get $l3)
  (func $f34 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
                                          br_table $B18 $B17 $B16 $B13 $B15 $B14 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1 $B0
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
      local.get $p0
      local.get $p2
      local.get $p3
      call_indirect (type $t8) $__indirect_function_table
    end)
  (func $f35 (type $t18) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      local.get $p0
      i64.eqz
      br_if $B0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1568
        i32.add
        i32.load8_u
        local.get $p2
        i32.or
        i32.store8
        local.get $p0
        i64.const 15
        i64.gt_u
        local.set $l3
        local.get $p0
        i64.const 4
        i64.shr_u
        local.set $p0
        local.get $l3
        br_if $L1
      end
    end
    local.get $p1)
  (func $f36 (type $t9) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32)
    block $B0
      local.get $p0
      i64.eqz
      br_if $B0
      loop $L1
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get $p0
        i64.const 7
        i64.gt_u
        local.set $l2
        local.get $p0
        i64.const 3
        i64.shr_u
        local.set $p0
        local.get $l2
        br_if $L1
      end
    end
    local.get $p1)
  (func $f37 (type $t9) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i64) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    block $B0
      block $B1
        local.get $p0
        i64.const 4294967296
        i64.ge_u
        br_if $B1
        local.get $p0
        local.set $l2
        br $B0
      end
      loop $L2
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $p0
        local.get $p0
        i64.const 10
        i64.div_u
        local.tee $l2
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get $p0
        i64.const 42949672959
        i64.gt_u
        local.set $l3
        local.get $l2
        local.set $p0
        local.get $l3
        br_if $L2
      end
    end
    block $B3
      local.get $l2
      i32.wrap_i64
      local.tee $l3
      i32.eqz
      br_if $B3
      loop $L4
        local.get $p1
        i32.const -1
        i32.add
        local.tee $p1
        local.get $l3
        local.get $l3
        i32.const 10
        i32.div_u
        local.tee $l4
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get $l3
        i32.const 9
        i32.gt_u
        local.set $l5
        local.get $l4
        local.set $l3
        local.get $l5
        br_if $L4
      end
    end
    local.get $p1)
  (func $f38 (type $t19) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
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
      i32.const 255
      i32.and
      local.get $p2
      local.get $p3
      i32.sub
      local.tee $p3
      i32.const 256
      local.get $p3
      i32.const 256
      i32.lt_u
      local.tee $p2
      select
      call $f15
      drop
      block $B1
        local.get $p2
        br_if $B1
        loop $L2
          local.get $p0
          local.get $l5
          i32.const 256
          call $f32
          local.get $p3
          i32.const -256
          i32.add
          local.tee $p3
          i32.const 255
          i32.gt_u
          br_if $L2
        end
      end
      local.get $p0
      local.get $l5
      local.get $p3
      call $f32
    end
    local.get $l5
    i32.const 256
    i32.add
    global.set $g0)
  (func $f39 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    i32.const 5
    i32.const 6
    call $f30)
  (func $f40 (type $t7) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i64) (local $l25 i64) (local $l26 f64)
    global.get $g0
    i32.const 560
    i32.sub
    local.tee $l6
    global.set $g0
    i32.const 0
    local.set $l7
    local.get $l6
    i32.const 0
    i32.store offset=44
    block $B0
      block $B1
        local.get $p1
        call $f42
        local.tee $l24
        i64.const -1
        i64.gt_s
        br_if $B1
        i32.const 1
        local.set $l8
        i32.const 1034
        local.set $l9
        local.get $p1
        f64.neg
        local.tee $p1
        call $f42
        local.set $l24
        br $B0
      end
      block $B2
        local.get $p4
        i32.const 2048
        i32.and
        i32.eqz
        br_if $B2
        i32.const 1
        local.set $l8
        i32.const 1037
        local.set $l9
        br $B0
      end
      i32.const 1040
      i32.const 1035
      local.get $p4
      i32.const 1
      i32.and
      local.tee $l8
      select
      local.set $l9
      local.get $l8
      i32.eqz
      local.set $l7
    end
    block $B3
      block $B4
        local.get $l24
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if $B4
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $l8
        i32.const 3
        i32.add
        local.tee $l10
        local.get $p4
        i32.const -65537
        i32.and
        call $f38
        local.get $p0
        local.get $l9
        local.get $l8
        call $f32
        local.get $p0
        i32.const 1053
        i32.const 1061
        local.get $p5
        i32.const 32
        i32.and
        local.tee $l11
        select
        i32.const 1057
        i32.const 1065
        local.get $l11
        select
        local.get $p1
        local.get $p1
        f64.ne
        select
        i32.const 3
        call $f32
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $l10
        local.get $p4
        i32.const 8192
        i32.xor
        call $f38
        local.get $l10
        local.get $p2
        local.get $l10
        local.get $p2
        i32.gt_s
        select
        local.set $l12
        br $B3
      end
      local.get $l6
      i32.const 16
      i32.add
      local.set $l13
      block $B5
        block $B6
          block $B7
            block $B8
              local.get $p1
              local.get $l6
              i32.const 44
              i32.add
              call $f27
              local.tee $p1
              local.get $p1
              f64.add
              local.tee $p1
              f64.const 0x0p+0 (;=0;)
              f64.eq
              br_if $B8
              local.get $l6
              local.get $l6
              i32.load offset=44
              local.tee $l10
              i32.const -1
              i32.add
              i32.store offset=44
              local.get $p5
              i32.const 32
              i32.or
              local.tee $l14
              i32.const 97
              i32.ne
              br_if $B7
              br $B5
            end
            local.get $p5
            i32.const 32
            i32.or
            local.tee $l14
            i32.const 97
            i32.eq
            br_if $B5
            i32.const 6
            local.get $p3
            local.get $p3
            i32.const 0
            i32.lt_s
            select
            local.set $l15
            local.get $l6
            i32.load offset=44
            local.set $l16
            br $B6
          end
          local.get $l6
          local.get $l10
          i32.const -29
          i32.add
          local.tee $l16
          i32.store offset=44
          i32.const 6
          local.get $p3
          local.get $p3
          i32.const 0
          i32.lt_s
          select
          local.set $l15
          local.get $p1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set $p1
        end
        local.get $l6
        i32.const 48
        i32.add
        i32.const 0
        i32.const 288
        local.get $l16
        i32.const 0
        i32.lt_s
        select
        i32.add
        local.tee $l17
        local.set $l11
        loop $L9
          block $B10
            block $B11
              local.get $p1
              f64.const 0x1p+32 (;=4.29497e+09;)
              f64.lt
              local.get $p1
              f64.const 0x0p+0 (;=0;)
              f64.ge
              i32.and
              i32.eqz
              br_if $B11
              local.get $p1
              i32.trunc_f64_u
              local.set $l10
              br $B10
            end
            i32.const 0
            local.set $l10
          end
          local.get $l11
          local.get $l10
          i32.store
          local.get $l11
          i32.const 4
          i32.add
          local.set $l11
          local.get $p1
          local.get $l10
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee $p1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if $L9
        end
        block $B12
          block $B13
            local.get $l16
            i32.const 1
            i32.ge_s
            br_if $B13
            local.get $l16
            local.set $p3
            local.get $l11
            local.set $l10
            local.get $l17
            local.set $l18
            br $B12
          end
          local.get $l17
          local.set $l18
          local.get $l16
          local.set $p3
          loop $L14
            local.get $p3
            i32.const 29
            local.get $p3
            i32.const 29
            i32.lt_s
            select
            local.set $p3
            block $B15
              local.get $l11
              i32.const -4
              i32.add
              local.tee $l10
              local.get $l18
              i32.lt_u
              br_if $B15
              local.get $p3
              i64.extend_i32_u
              local.set $l25
              i64.const 0
              local.set $l24
              loop $L16
                local.get $l10
                local.get $l10
                i64.load32_u
                local.get $l25
                i64.shl
                local.get $l24
                i64.const 4294967295
                i64.and
                i64.add
                local.tee $l24
                local.get $l24
                i64.const 1000000000
                i64.div_u
                local.tee $l24
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get $l10
                i32.const -4
                i32.add
                local.tee $l10
                local.get $l18
                i32.ge_u
                br_if $L16
              end
              local.get $l24
              i32.wrap_i64
              local.tee $l10
              i32.eqz
              br_if $B15
              local.get $l18
              i32.const -4
              i32.add
              local.tee $l18
              local.get $l10
              i32.store
            end
            block $B17
              loop $L18
                local.get $l11
                local.tee $l10
                local.get $l18
                i32.le_u
                br_if $B17
                local.get $l10
                i32.const -4
                i32.add
                local.tee $l11
                i32.load
                i32.eqz
                br_if $L18
              end
            end
            local.get $l6
            local.get $l6
            i32.load offset=44
            local.get $p3
            i32.sub
            local.tee $p3
            i32.store offset=44
            local.get $l10
            local.set $l11
            local.get $p3
            i32.const 0
            i32.gt_s
            br_if $L14
          end
        end
        block $B19
          local.get $p3
          i32.const -1
          i32.gt_s
          br_if $B19
          local.get $l15
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set $l19
          local.get $l14
          i32.const 102
          i32.eq
          local.set $l20
          loop $L20
            i32.const 0
            local.get $p3
            i32.sub
            local.tee $l11
            i32.const 9
            local.get $l11
            i32.const 9
            i32.lt_s
            select
            local.set $l21
            block $B21
              block $B22
                local.get $l18
                local.get $l10
                i32.lt_u
                br_if $B22
                local.get $l18
                i32.load
                local.set $l11
                br $B21
              end
              i32.const 1000000000
              local.get $l21
              i32.shr_u
              local.set $l22
              i32.const -1
              local.get $l21
              i32.shl
              i32.const -1
              i32.xor
              local.set $l23
              i32.const 0
              local.set $p3
              local.get $l18
              local.set $l11
              loop $L23
                local.get $l11
                local.get $l11
                i32.load
                local.tee $l12
                local.get $l21
                i32.shr_u
                local.get $p3
                i32.add
                i32.store
                local.get $l12
                local.get $l23
                i32.and
                local.get $l22
                i32.mul
                local.set $p3
                local.get $l11
                i32.const 4
                i32.add
                local.tee $l11
                local.get $l10
                i32.lt_u
                br_if $L23
              end
              local.get $l18
              i32.load
              local.set $l11
              local.get $p3
              i32.eqz
              br_if $B21
              local.get $l10
              local.get $p3
              i32.store
              local.get $l10
              i32.const 4
              i32.add
              local.set $l10
            end
            local.get $l6
            local.get $l6
            i32.load offset=44
            local.get $l21
            i32.add
            local.tee $p3
            i32.store offset=44
            local.get $l17
            local.get $l18
            local.get $l11
            i32.eqz
            i32.const 2
            i32.shl
            i32.add
            local.tee $l18
            local.get $l20
            select
            local.tee $l11
            local.get $l19
            i32.const 2
            i32.shl
            i32.add
            local.get $l10
            local.get $l10
            local.get $l11
            i32.sub
            i32.const 2
            i32.shr_s
            local.get $l19
            i32.gt_s
            select
            local.set $l10
            local.get $p3
            i32.const 0
            i32.lt_s
            br_if $L20
          end
        end
        i32.const 0
        local.set $p3
        block $B24
          local.get $l18
          local.get $l10
          i32.ge_u
          br_if $B24
          local.get $l17
          local.get $l18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set $p3
          i32.const 10
          local.set $l11
          local.get $l18
          i32.load
          local.tee $l12
          i32.const 10
          i32.lt_u
          br_if $B24
          loop $L25
            local.get $p3
            i32.const 1
            i32.add
            local.set $p3
            local.get $l12
            local.get $l11
            i32.const 10
            i32.mul
            local.tee $l11
            i32.ge_u
            br_if $L25
          end
        end
        block $B26
          local.get $l15
          i32.const 0
          local.get $p3
          local.get $l14
          i32.const 102
          i32.eq
          select
          i32.sub
          local.get $l15
          i32.const 0
          i32.ne
          local.get $l14
          i32.const 103
          i32.eq
          i32.and
          i32.sub
          local.tee $l11
          local.get $l10
          local.get $l17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          i32.ge_s
          br_if $B26
          local.get $l11
          i32.const 9216
          i32.add
          local.tee $l12
          i32.const 9
          i32.div_s
          local.tee $l22
          i32.const 2
          i32.shl
          local.get $l6
          i32.const 48
          i32.add
          i32.const 4
          i32.const 292
          local.get $l16
          i32.const 0
          i32.lt_s
          select
          i32.add
          i32.add
          i32.const -4096
          i32.add
          local.set $l21
          i32.const 10
          local.set $l11
          block $B27
            local.get $l12
            local.get $l22
            i32.const 9
            i32.mul
            i32.sub
            local.tee $l12
            i32.const 7
            i32.gt_s
            br_if $B27
            loop $L28
              local.get $l11
              i32.const 10
              i32.mul
              local.set $l11
              local.get $l12
              i32.const 1
              i32.add
              local.tee $l12
              i32.const 8
              i32.ne
              br_if $L28
            end
          end
          local.get $l21
          i32.const 4
          i32.add
          local.set $l23
          block $B29
            block $B30
              local.get $l21
              i32.load
              local.tee $l12
              local.get $l12
              local.get $l11
              i32.div_u
              local.tee $l19
              local.get $l11
              i32.mul
              i32.sub
              local.tee $l22
              br_if $B30
              local.get $l23
              local.get $l10
              i32.eq
              br_if $B29
            end
            block $B31
              block $B32
                local.get $l19
                i32.const 1
                i32.and
                br_if $B32
                f64.const 0x1p+53 (;=9.0072e+15;)
                local.set $p1
                local.get $l11
                i32.const 1000000000
                i32.ne
                br_if $B31
                local.get $l21
                local.get $l18
                i32.le_u
                br_if $B31
                local.get $l21
                i32.const -4
                i32.add
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if $B31
              end
              f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
              local.set $p1
            end
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get $l23
            local.get $l10
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get $l22
            local.get $l11
            i32.const 1
            i32.shr_u
            local.tee $l23
            i32.eq
            select
            local.get $l22
            local.get $l23
            i32.lt_u
            select
            local.set $l26
            block $B33
              local.get $l7
              br_if $B33
              local.get $l9
              i32.load8_u
              i32.const 45
              i32.ne
              br_if $B33
              local.get $l26
              f64.neg
              local.set $l26
              local.get $p1
              f64.neg
              local.set $p1
            end
            local.get $l21
            local.get $l12
            local.get $l22
            i32.sub
            local.tee $l12
            i32.store
            local.get $p1
            local.get $l26
            f64.add
            local.get $p1
            f64.eq
            br_if $B29
            local.get $l21
            local.get $l12
            local.get $l11
            i32.add
            local.tee $l11
            i32.store
            block $B34
              local.get $l11
              i32.const 1000000000
              i32.lt_u
              br_if $B34
              loop $L35
                local.get $l21
                i32.const 0
                i32.store
                block $B36
                  local.get $l21
                  i32.const -4
                  i32.add
                  local.tee $l21
                  local.get $l18
                  i32.ge_u
                  br_if $B36
                  local.get $l18
                  i32.const -4
                  i32.add
                  local.tee $l18
                  i32.const 0
                  i32.store
                end
                local.get $l21
                local.get $l21
                i32.load
                i32.const 1
                i32.add
                local.tee $l11
                i32.store
                local.get $l11
                i32.const 999999999
                i32.gt_u
                br_if $L35
              end
            end
            local.get $l17
            local.get $l18
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set $p3
            i32.const 10
            local.set $l11
            local.get $l18
            i32.load
            local.tee $l12
            i32.const 10
            i32.lt_u
            br_if $B29
            loop $L37
              local.get $p3
              i32.const 1
              i32.add
              local.set $p3
              local.get $l12
              local.get $l11
              i32.const 10
              i32.mul
              local.tee $l11
              i32.ge_u
              br_if $L37
            end
          end
          local.get $l21
          i32.const 4
          i32.add
          local.tee $l11
          local.get $l10
          local.get $l10
          local.get $l11
          i32.gt_u
          select
          local.set $l10
        end
        block $B38
          loop $L39
            local.get $l10
            local.tee $l11
            local.get $l18
            i32.le_u
            local.tee $l12
            br_if $B38
            local.get $l11
            i32.const -4
            i32.add
            local.tee $l10
            i32.load
            i32.eqz
            br_if $L39
          end
        end
        block $B40
          block $B41
            local.get $l14
            i32.const 103
            i32.eq
            br_if $B41
            local.get $p4
            i32.const 8
            i32.and
            local.set $l21
            br $B40
          end
          local.get $p3
          i32.const -1
          i32.xor
          i32.const -1
          local.get $l15
          i32.const 1
          local.get $l15
          select
          local.tee $l10
          local.get $p3
          i32.gt_s
          local.get $p3
          i32.const -5
          i32.gt_s
          i32.and
          local.tee $l21
          select
          local.get $l10
          i32.add
          local.set $l15
          i32.const -1
          i32.const -2
          local.get $l21
          select
          local.get $p5
          i32.add
          local.set $p5
          local.get $p4
          i32.const 8
          i32.and
          local.tee $l21
          br_if $B40
          i32.const -9
          local.set $l10
          block $B42
            local.get $l12
            br_if $B42
            local.get $l11
            i32.const -4
            i32.add
            i32.load
            local.tee $l21
            i32.eqz
            br_if $B42
            i32.const 10
            local.set $l12
            i32.const 0
            local.set $l10
            local.get $l21
            i32.const 10
            i32.rem_u
            br_if $B42
            loop $L43
              local.get $l10
              local.tee $l22
              i32.const 1
              i32.add
              local.set $l10
              local.get $l21
              local.get $l12
              i32.const 10
              i32.mul
              local.tee $l12
              i32.rem_u
              i32.eqz
              br_if $L43
            end
            local.get $l22
            i32.const -1
            i32.xor
            local.set $l10
          end
          local.get $l11
          local.get $l17
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set $l12
          block $B44
            local.get $p5
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if $B44
            i32.const 0
            local.set $l21
            local.get $l15
            local.get $l12
            local.get $l10
            i32.add
            i32.const -9
            i32.add
            local.tee $l10
            i32.const 0
            local.get $l10
            i32.const 0
            i32.gt_s
            select
            local.tee $l10
            local.get $l15
            local.get $l10
            i32.lt_s
            select
            local.set $l15
            br $B40
          end
          i32.const 0
          local.set $l21
          local.get $l15
          local.get $p3
          local.get $l12
          i32.add
          local.get $l10
          i32.add
          i32.const -9
          i32.add
          local.tee $l10
          i32.const 0
          local.get $l10
          i32.const 0
          i32.gt_s
          select
          local.tee $l10
          local.get $l15
          local.get $l10
          i32.lt_s
          select
          local.set $l15
        end
        i32.const -1
        local.set $l12
        local.get $l15
        i32.const 2147483645
        i32.const 2147483646
        local.get $l15
        local.get $l21
        i32.or
        local.tee $l22
        select
        i32.gt_s
        br_if $B3
        local.get $l15
        local.get $l22
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set $l23
        block $B45
          block $B46
            local.get $p5
            i32.const -33
            i32.and
            local.tee $l20
            i32.const 70
            i32.ne
            br_if $B46
            local.get $p3
            local.get $l23
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if $B3
            local.get $p3
            i32.const 0
            local.get $p3
            i32.const 0
            i32.gt_s
            select
            local.set $l10
            br $B45
          end
          block $B47
            local.get $l13
            local.get $p3
            local.get $p3
            i32.const 31
            i32.shr_s
            local.tee $l10
            i32.xor
            local.get $l10
            i32.sub
            i64.extend_i32_u
            local.get $l13
            call $f37
            local.tee $l10
            i32.sub
            i32.const 1
            i32.gt_s
            br_if $B47
            loop $L48
              local.get $l10
              i32.const -1
              i32.add
              local.tee $l10
              i32.const 48
              i32.store8
              local.get $l13
              local.get $l10
              i32.sub
              i32.const 2
              i32.lt_s
              br_if $L48
            end
          end
          local.get $l10
          i32.const -2
          i32.add
          local.tee $l19
          local.get $p5
          i32.store8
          i32.const -1
          local.set $l12
          local.get $l10
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get $p3
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get $l13
          local.get $l19
          i32.sub
          local.tee $l10
          local.get $l23
          i32.const 2147483647
          i32.xor
          i32.gt_s
          br_if $B3
        end
        i32.const -1
        local.set $l12
        local.get $l10
        local.get $l23
        i32.add
        local.tee $l10
        local.get $l8
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if $B3
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $l10
        local.get $l8
        i32.add
        local.tee $l23
        local.get $p4
        call $f38
        local.get $p0
        local.get $l9
        local.get $l8
        call $f32
        local.get $p0
        i32.const 48
        local.get $p2
        local.get $l23
        local.get $p4
        i32.const 65536
        i32.xor
        call $f38
        block $B49
          block $B50
            block $B51
              block $B52
                local.get $l20
                i32.const 70
                i32.ne
                br_if $B52
                local.get $l6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set $l21
                local.get $l6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set $p3
                local.get $l17
                local.get $l18
                local.get $l18
                local.get $l17
                i32.gt_u
                select
                local.tee $l12
                local.set $l18
                loop $L53
                  local.get $l18
                  i64.load32_u
                  local.get $p3
                  call $f37
                  local.set $l10
                  block $B54
                    block $B55
                      local.get $l18
                      local.get $l12
                      i32.eq
                      br_if $B55
                      local.get $l10
                      local.get $l6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if $B54
                      loop $L56
                        local.get $l10
                        i32.const -1
                        i32.add
                        local.tee $l10
                        i32.const 48
                        i32.store8
                        local.get $l10
                        local.get $l6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if $L56
                        br $B54
                      end
                      unreachable
                    end
                    local.get $l10
                    local.get $p3
                    i32.ne
                    br_if $B54
                    local.get $l6
                    i32.const 48
                    i32.store8 offset=24
                    local.get $l21
                    local.set $l10
                  end
                  local.get $p0
                  local.get $l10
                  local.get $p3
                  local.get $l10
                  i32.sub
                  call $f32
                  local.get $l18
                  i32.const 4
                  i32.add
                  local.tee $l18
                  local.get $l17
                  i32.le_u
                  br_if $L53
                end
                block $B57
                  local.get $l22
                  i32.eqz
                  br_if $B57
                  local.get $p0
                  i32.const 1069
                  i32.const 1
                  call $f32
                end
                local.get $l18
                local.get $l11
                i32.ge_u
                br_if $B51
                local.get $l15
                i32.const 1
                i32.lt_s
                br_if $B51
                loop $L58
                  block $B59
                    local.get $l18
                    i64.load32_u
                    local.get $p3
                    call $f37
                    local.tee $l10
                    local.get $l6
                    i32.const 16
                    i32.add
                    i32.le_u
                    br_if $B59
                    loop $L60
                      local.get $l10
                      i32.const -1
                      i32.add
                      local.tee $l10
                      i32.const 48
                      i32.store8
                      local.get $l10
                      local.get $l6
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if $L60
                    end
                  end
                  local.get $p0
                  local.get $l10
                  local.get $l15
                  i32.const 9
                  local.get $l15
                  i32.const 9
                  i32.lt_s
                  select
                  call $f32
                  local.get $l15
                  i32.const -9
                  i32.add
                  local.set $l10
                  local.get $l18
                  i32.const 4
                  i32.add
                  local.tee $l18
                  local.get $l11
                  i32.ge_u
                  br_if $B50
                  local.get $l15
                  i32.const 9
                  i32.gt_s
                  local.set $l12
                  local.get $l10
                  local.set $l15
                  local.get $l12
                  br_if $L58
                  br $B50
                end
                unreachable
              end
              block $B61
                local.get $l15
                i32.const 0
                i32.lt_s
                br_if $B61
                local.get $l11
                local.get $l18
                i32.const 4
                i32.add
                local.get $l11
                local.get $l18
                i32.gt_u
                select
                local.set $l22
                local.get $l6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set $l17
                local.get $l6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set $p3
                local.get $l18
                local.set $l11
                loop $L62
                  block $B63
                    local.get $l11
                    i64.load32_u
                    local.get $p3
                    call $f37
                    local.tee $l10
                    local.get $p3
                    i32.ne
                    br_if $B63
                    local.get $l6
                    i32.const 48
                    i32.store8 offset=24
                    local.get $l17
                    local.set $l10
                  end
                  block $B64
                    block $B65
                      local.get $l11
                      local.get $l18
                      i32.eq
                      br_if $B65
                      local.get $l10
                      local.get $l6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if $B64
                      loop $L66
                        local.get $l10
                        i32.const -1
                        i32.add
                        local.tee $l10
                        i32.const 48
                        i32.store8
                        local.get $l10
                        local.get $l6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if $L66
                        br $B64
                      end
                      unreachable
                    end
                    local.get $p0
                    local.get $l10
                    i32.const 1
                    call $f32
                    local.get $l10
                    i32.const 1
                    i32.add
                    local.set $l10
                    local.get $l15
                    local.get $l21
                    i32.or
                    i32.eqz
                    br_if $B64
                    local.get $p0
                    i32.const 1069
                    i32.const 1
                    call $f32
                  end
                  local.get $p0
                  local.get $l10
                  local.get $l15
                  local.get $p3
                  local.get $l10
                  i32.sub
                  local.tee $l12
                  local.get $l15
                  local.get $l12
                  i32.lt_s
                  select
                  call $f32
                  local.get $l15
                  local.get $l12
                  i32.sub
                  local.set $l15
                  local.get $l11
                  i32.const 4
                  i32.add
                  local.tee $l11
                  local.get $l22
                  i32.ge_u
                  br_if $B61
                  local.get $l15
                  i32.const -1
                  i32.gt_s
                  br_if $L62
                end
              end
              local.get $p0
              i32.const 48
              local.get $l15
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call $f38
              local.get $p0
              local.get $l19
              local.get $l13
              local.get $l19
              i32.sub
              call $f32
              br $B49
            end
            local.get $l15
            local.set $l10
          end
          local.get $p0
          i32.const 48
          local.get $l10
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call $f38
        end
        local.get $p0
        i32.const 32
        local.get $p2
        local.get $l23
        local.get $p4
        i32.const 8192
        i32.xor
        call $f38
        local.get $l23
        local.get $p2
        local.get $l23
        local.get $p2
        i32.gt_s
        select
        local.set $l12
        br $B3
      end
      local.get $l9
      local.get $p5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set $l23
      block $B67
        local.get $p3
        i32.const 11
        i32.gt_u
        br_if $B67
        i32.const 12
        local.get $p3
        i32.sub
        local.set $l10
        f64.const 0x1p+4 (;=16;)
        local.set $l26
        loop $L68
          local.get $l26
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set $l26
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L68
        end
        block $B69
          local.get $l23
          i32.load8_u
          i32.const 45
          i32.ne
          br_if $B69
          local.get $l26
          local.get $p1
          f64.neg
          local.get $l26
          f64.sub
          f64.add
          f64.neg
          local.set $p1
          br $B67
        end
        local.get $p1
        local.get $l26
        f64.add
        local.get $l26
        f64.sub
        local.set $p1
      end
      block $B70
        local.get $l6
        i32.load offset=44
        local.tee $l10
        local.get $l10
        i32.const 31
        i32.shr_s
        local.tee $l10
        i32.xor
        local.get $l10
        i32.sub
        i64.extend_i32_u
        local.get $l13
        call $f37
        local.tee $l10
        local.get $l13
        i32.ne
        br_if $B70
        local.get $l6
        i32.const 48
        i32.store8 offset=15
        local.get $l6
        i32.const 15
        i32.add
        local.set $l10
      end
      local.get $l8
      i32.const 2
      i32.or
      local.set $l21
      local.get $p5
      i32.const 32
      i32.and
      local.set $l18
      local.get $l6
      i32.load offset=44
      local.set $l11
      local.get $l10
      i32.const -2
      i32.add
      local.tee $l22
      local.get $p5
      i32.const 15
      i32.add
      i32.store8
      local.get $l10
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get $l11
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get $p4
      i32.const 8
      i32.and
      local.set $l12
      local.get $l6
      i32.const 16
      i32.add
      local.set $l11
      loop $L71
        local.get $l11
        local.set $l10
        block $B72
          block $B73
            local.get $p1
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if $B73
            local.get $p1
            i32.trunc_f64_s
            local.set $l11
            br $B72
          end
          i32.const -2147483648
          local.set $l11
        end
        local.get $l10
        local.get $l11
        i32.const 1568
        i32.add
        i32.load8_u
        local.get $l18
        i32.or
        i32.store8
        local.get $p1
        local.get $l11
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set $p1
        block $B74
          local.get $l10
          i32.const 1
          i32.add
          local.tee $l11
          local.get $l6
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if $B74
          block $B75
            local.get $l12
            br_if $B75
            local.get $p3
            i32.const 0
            i32.gt_s
            br_if $B75
            local.get $p1
            f64.const 0x0p+0 (;=0;)
            f64.eq
            br_if $B74
          end
          local.get $l10
          i32.const 46
          i32.store8 offset=1
          local.get $l10
          i32.const 2
          i32.add
          local.set $l11
        end
        local.get $p1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if $L71
      end
      i32.const -1
      local.set $l12
      i32.const 2147483645
      local.get $l21
      local.get $l13
      local.get $l22
      i32.sub
      local.tee $l19
      i32.add
      local.tee $l10
      i32.sub
      local.get $p3
      i32.lt_s
      br_if $B3
      block $B76
        block $B77
          local.get $p3
          i32.eqz
          br_if $B77
          local.get $l11
          local.get $l6
          i32.const 16
          i32.add
          i32.sub
          local.tee $l18
          i32.const -2
          i32.add
          local.get $p3
          i32.ge_s
          br_if $B77
          local.get $p3
          i32.const 2
          i32.add
          local.set $l11
          br $B76
        end
        local.get $l11
        local.get $l6
        i32.const 16
        i32.add
        i32.sub
        local.tee $l18
        local.set $l11
      end
      local.get $p0
      i32.const 32
      local.get $p2
      local.get $l10
      local.get $l11
      i32.add
      local.tee $l10
      local.get $p4
      call $f38
      local.get $p0
      local.get $l23
      local.get $l21
      call $f32
      local.get $p0
      i32.const 48
      local.get $p2
      local.get $l10
      local.get $p4
      i32.const 65536
      i32.xor
      call $f38
      local.get $p0
      local.get $l6
      i32.const 16
      i32.add
      local.get $l18
      call $f32
      local.get $p0
      i32.const 48
      local.get $l11
      local.get $l18
      i32.sub
      i32.const 0
      i32.const 0
      call $f38
      local.get $p0
      local.get $l22
      local.get $l19
      call $f32
      local.get $p0
      i32.const 32
      local.get $p2
      local.get $l10
      local.get $p4
      i32.const 8192
      i32.xor
      call $f38
      local.get $l10
      local.get $p2
      local.get $l10
      local.get $p2
      i32.gt_s
      select
      local.set $l12
    end
    local.get $l6
    i32.const 560
    i32.add
    global.set $g0
    local.get $l12)
  (func $f41 (type $t8) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $p1
    local.get $p1
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee $l2
    i32.const 16
    i32.add
    i32.store
    local.get $p0
    local.get $l2
    i64.load
    local.get $l2
    i32.const 8
    i32.add
    i64.load
    call $f56
    f64.store)
  (func $f42 (type $t20) (param $p0 f64) (result i64)
    local.get $p0
    i64.reinterpret_f64)
  (func $f43 (type $t1) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 0
      return
    end
    call $__errno_location
    local.get $p0
    i32.store
    i32.const -1)
  (func $f44 (type $t1) (param $p0 i32) (result i32)
    local.get $p0)
  (func $f45 (type $t1) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=60
    call $f44
    call $wasi_snapshot_preview1.fd_close)
  (func $f46 (type $t5) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $p0
    local.get $p1
    local.get $p2
    i32.const 255
    i32.and
    local.get $l3
    i32.const 8
    i32.add
    call $wasi_snapshot_preview1.fd_seek
    call $f43
    local.set $p2
    local.get $l3
    i64.load offset=8
    local.set $p1
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0
    i64.const -1
    local.get $p1
    local.get $p2
    select)
  (func $f47 (type $t5) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    local.get $p0
    i32.load offset=60
    local.get $p1
    local.get $p2
    call $f46)
  (func $f48 (type $t2) (result i32)
    i32.const 42)
  (func $f49 (type $t2) (result i32)
    call $f48)
  (func $f50 (type $t2) (result i32)
    i32.const 3000)
  (func $f51 (type $t3)
    i32.const 0
    i32.const 2968
    i32.store offset=3088
    i32.const 0
    call $f49
    i32.store offset=3016)
  (func $f52 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    i32.const 1
    local.set $l3
    block $B0
      block $B1
        local.get $p0
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 127
        i32.le_u
        br_if $B0
        block $B2
          block $B3
            call $f50
            i32.load offset=88
            i32.load
            br_if $B3
            local.get $p1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if $B0
            call $__errno_location
            i32.const 25
            i32.store
            br $B2
          end
          block $B4
            local.get $p1
            i32.const 2047
            i32.gt_u
            br_if $B4
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
          block $B5
            block $B6
              local.get $p1
              i32.const 55296
              i32.lt_u
              br_if $B6
              local.get $p1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if $B5
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
          block $B7
            local.get $p1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if $B7
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
          call $__errno_location
          i32.const 25
          i32.store
        end
        i32.const -1
        local.set $l3
      end
      local.get $l3
      return
    end
    local.get $p0
    local.get $p1
    i32.store8
    i32.const 1)
  (func $f53 (type $t6) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 0
      return
    end
    local.get $p0
    local.get $p1
    i32.const 0
    call $f52)
  (func $f54 (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    block $B0
      block $B1
        local.get $p3
        i32.const 64
        i32.and
        i32.eqz
        br_if $B1
        local.get $p1
        local.get $p3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set $p2
        i64.const 0
        local.set $p1
        br $B0
      end
      local.get $p3
      i32.eqz
      br_if $B0
      local.get $p1
      i32.const 64
      local.get $p3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get $p2
      local.get $p3
      i64.extend_i32_u
      local.tee $l4
      i64.shl
      i64.or
      local.set $p2
      local.get $p1
      local.get $l4
      i64.shl
      local.set $p1
    end
    local.get $p0
    local.get $p1
    i64.store
    local.get $p0
    local.get $p2
    i64.store offset=8)
  (func $f55 (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    block $B0
      block $B1
        local.get $p3
        i32.const 64
        i32.and
        i32.eqz
        br_if $B1
        local.get $p2
        local.get $p3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set $p1
        i64.const 0
        local.set $p2
        br $B0
      end
      local.get $p3
      i32.eqz
      br_if $B0
      local.get $p2
      i32.const 64
      local.get $p3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get $p1
      local.get $p3
      i64.extend_i32_u
      local.tee $l4
      i64.shr_u
      i64.or
      local.set $p1
      local.get $p2
      local.get $l4
      i64.shr_u
      local.set $p2
    end
    local.get $p0
    local.get $p1
    i64.store
    local.get $p0
    local.get $p2
    i64.store offset=8)
  (func $f56 (type $t21) (param $p0 i64) (param $p1 i64) (result f64)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        i64.const 9223372036854775807
        i64.and
        local.tee $l4
        i64.const -4323737117252386816
        i64.add
        local.get $l4
        i64.const -4899634919602388992
        i64.add
        i64.ge_u
        br_if $B1
        local.get $p0
        i64.const 60
        i64.shr_u
        local.get $p1
        i64.const 4
        i64.shl
        i64.or
        local.set $l4
        block $B2
          local.get $p0
          i64.const 1152921504606846975
          i64.and
          local.tee $p0
          i64.const 576460752303423489
          i64.lt_u
          br_if $B2
          local.get $l4
          i64.const 4611686018427387905
          i64.add
          local.set $l5
          br $B0
        end
        local.get $l4
        i64.const 4611686018427387904
        i64.add
        local.set $l5
        local.get $p0
        i64.const 576460752303423488
        i64.ne
        br_if $B0
        local.get $l5
        local.get $l4
        i64.const 1
        i64.and
        i64.add
        local.set $l5
        br $B0
      end
      block $B3
        local.get $p0
        i64.eqz
        local.get $l4
        i64.const 9223090561878065152
        i64.lt_u
        local.get $l4
        i64.const 9223090561878065152
        i64.eq
        select
        br_if $B3
        local.get $p0
        i64.const 60
        i64.shr_u
        local.get $p1
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685247
        i64.and
        i64.const 9221120237041090560
        i64.or
        local.set $l5
        br $B0
      end
      i64.const 9218868437227405312
      local.set $l5
      local.get $l4
      i64.const 4899634919602388991
      i64.gt_u
      br_if $B0
      i64.const 0
      local.set $l5
      local.get $l4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee $l3
      i32.const 15249
      i32.lt_u
      br_if $B0
      local.get $l2
      i32.const 16
      i32.add
      local.get $p0
      local.get $p1
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.tee $l4
      local.get $l3
      i32.const -15233
      i32.add
      call $f54
      local.get $l2
      local.get $p0
      local.get $l4
      i32.const 15361
      local.get $l3
      i32.sub
      call $f55
      local.get $l2
      i64.load
      local.tee $l4
      i64.const 60
      i64.shr_u
      local.get $l2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set $l5
      block $B4
        local.get $l4
        i64.const 1152921504606846975
        i64.and
        local.get $l2
        i64.load offset=16
        local.get $l2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.tee $l4
        i64.const 576460752303423489
        i64.lt_u
        br_if $B4
        local.get $l5
        i64.const 1
        i64.add
        local.set $l5
        br $B0
      end
      local.get $l4
      i64.const 576460752303423488
      i64.ne
      br_if $B0
      local.get $l5
      i64.const 1
      i64.and
      local.get $l5
      i64.add
      local.set $l5
    end
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $l5
    local.get $p1
    i64.const -9223372036854775808
    i64.and
    i64.or
    f64.reinterpret_i64)
  (func $emscripten_stack_init (type $t3)
    i32.const 5246000
    global.set $g2
    i32.const 3112
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set $g1)
  (func $emscripten_stack_get_free (type $t2) (result i32)
    global.get $g0
    global.get $g1
    i32.sub)
  (func $emscripten_stack_get_base (type $t2) (result i32)
    global.get $g2)
  (func $emscripten_stack_get_end (type $t2) (result i32)
    global.get $g1)
  (func $stackSave (type $t2) (result i32)
    global.get $g0)
  (func $stackRestore (type $t4) (param $p0 i32)
    local.get $p0
    global.set $g0)
  (func $stackAlloc (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    local.get $p0
    i32.sub
    i32.const -16
    i32.and
    local.tee $l1
    global.set $g0
    local.get $l1)
  (table $__indirect_function_table 9 9 funcref)
  (memory $memory 256 256)
  (global $g0 (mut i32) (i32.const 5246000))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func $_start))
  (export "__errno_location" (func $__errno_location))
  (export "emscripten_stack_init" (func $emscripten_stack_init))
  (export "emscripten_stack_get_free" (func $emscripten_stack_get_free))
  (export "emscripten_stack_get_base" (func $emscripten_stack_get_base))
  (export "emscripten_stack_get_end" (func $emscripten_stack_get_end))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (elem $e0 (i32.const 1) $f4 $f13 $f12 $f14 $f40 $f41 $f45 $f47)
  (data $d0 (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(null)\00Hello World\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 1584) "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00h\07\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\06\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\b8\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c8\06\00\00"))
