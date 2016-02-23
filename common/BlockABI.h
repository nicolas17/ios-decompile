/*
 * This is based on Block_private.h by Apple, clang documentation[1],
 * and clang codegen source code.
 *
 * [1]: http://clang.llvm.org/docs/Block-ABI-Apple.html
 */

enum BlockLiteralFlags {
  BLOCK_HAS_COPY_DISPOSE =  (1 << 25),
  BLOCK_HAS_CXX_OBJ =       (1 << 26),
  BLOCK_IS_GLOBAL =         (1 << 28),
  BLOCK_USE_STRET =         (1 << 29),
  BLOCK_HAS_SIGNATURE  =    (1 << 30),
  BLOCK_HAS_EXTENDED_LAYOUT = (1 << 31)
};
struct Block_descriptor {
    unsigned long int reserved;     // NULL
    unsigned long int size;         // sizeof(struct Block_literal_1)
    // optional helper functions
    void (*copy_helper)(void *dst, void *src);     // IFF (1<<25)
    void (*dispose_helper)(void *src);             // IFF (1<<25)
    // required ABI.2010.3.16
    const char *signature;                         // IFF (1<<30)
};
typedef void (*BlockCopyHelper)(void *dst, void *src);
typedef void (*BlockDisposeHelper)(void *src);
typedef void (*BlockInvoke)(void *block, ...);
