// RUN: %target-swift-frontend -target %module-target-future -emit-ir %S/../Inputs/conditional_conformance_basic_conformances.swift | %FileCheck %S/../Inputs/conditional_conformance_basic_conformances_future.swift -DINT=i%target-ptrsize --check-prefix=CHECK --check-prefix=%target-os
// RUN: %target-swift-frontend -target %module-target-future -emit-ir %S/../Inputs/conditional_conformance_with_assoc.swift | %FileCheck %S/../Inputs/conditional_conformance_with_assoc_future.swift -DINT=i%target-ptrsize --check-prefix=CHECK --check-prefix=%target-os
// RUN: %target-swift-frontend -target %module-target-future -emit-ir %S/../Inputs/conditional_conformance_subclass.swift | %FileCheck %S/../Inputs/conditional_conformance_subclass_future.swift -DINT=i%target-ptrsize --check-prefix=CHECK --check-prefix=%target-os
// RUN: %target-swift-frontend -target %module-target-future -emit-ir %S/../Inputs/conditional_conformance_recursive.swift | %FileCheck %S/../Inputs/conditional_conformance_recursive.swift -DINT=i%target-ptrsize --check-prefix=CHECK --check-prefix=%target-os

// Too many pointer-sized integers in the IR
// REQUIRES: PTRSIZE=64
// REQUIRES: OS=macosx || OS=ios || OS=tvos || OS=watchos || OS=linux-gnu

