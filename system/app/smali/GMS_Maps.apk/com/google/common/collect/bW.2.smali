.class final Lcom/google/common/collect/bW;
.super Lcom/google/common/collect/bY;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/Q;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/common/collect/bW;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/bW;->b:Lcom/google/common/base/Q;

    invoke-direct {p0}, Lcom/google/common/collect/bY;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/common/collect/bW;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bW;->b:Lcom/google/common/base/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;Lcom/google/common/base/Q;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method
