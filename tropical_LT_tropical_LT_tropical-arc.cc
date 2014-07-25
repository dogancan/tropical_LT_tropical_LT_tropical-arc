
#include <fst/const-fst.h>
#include <fst/edit-fst.h>
#include <fst/vector-fst.h>
#include <fst/script/register.h>
#include <fst/script/fstscript.h>
#include <fst/extensions/far/farscript.h>

using namespace fst;

namespace fst {
  namespace script {
    
    typedef LexicographicWeight<TropicalWeight, TropicalWeight> StdLStdWeight;
    typedef LexicographicArc<TropicalWeight, StdLStdWeight> StdLStdLStdArc;
    
    // Register StdLStdLStdArc for common Fst types
    REGISTER_FST(VectorFst, StdLStdLStdArc);
    REGISTER_FST(ConstFst, StdLStdLStdArc);
    REGISTER_FST(EditFst, StdLStdLStdArc);
    
    // Register StdLStdLStdArc for common FstClass types
    REGISTER_FST_CLASSES(StdLStdLStdArc);
    
    // Register StdLStdLStdArc for OpenFst binaries
    REGISTER_FST_OPERATIONS(StdLStdLStdArc);
    
    // Register StdLStdLStdArc for FAR binaries
    REGISTER_FST_FAR_OPERATIONS(StdLStdLStdArc);
  }
}
