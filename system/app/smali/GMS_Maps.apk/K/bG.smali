.class final LK/bG;
.super LK/bH;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/o;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/o;)V
    .registers 3

    iput-object p1, p0, LK/bG;->a:Ljava/lang/Iterable;

    iput-object p2, p0, LK/bG;->b:Lcom/google/common/base/o;

    invoke-direct {p0}, LK/bH;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, LK/bG;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, LK/bG;->b:Lcom/google/common/base/o;

    invoke-static {v0, v1}, LK/bI;->a(Ljava/util/Iterator;Lcom/google/common/base/o;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
