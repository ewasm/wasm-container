(module
  (type $FUNCSIG$vii (func (param i32 i32)))
  (type $FUNCSIG$vi (func (param i32)))
  (type $FUNCSIG$v (func))
  (import "env" "callback" (func $callback (param i32)))
  (import "test" "equals" (func $equals (param i32 i32)))
  (table (export "table") 2 2 anyfunc )
  (elem (i32.const 0) $__wasm_nullptr $callbackFunc)
  (memory $0 1)
  (export "memory" (memory $0))
  (export "callbackFunc" (func $callbackFunc))
  (export "main" (func $main))
  (func $callbackFunc (type $FUNCSIG$v)
    (call $equals
      (i32.const 1)
      (i32.const 1)
    )
  )
  (func $main (result i32)
    (call $callback
      (i32.const 1)
    )
    (i32.const 1)
  )
  (func $__wasm_nullptr (type $FUNCSIG$v)
    (unreachable)
  )
)
