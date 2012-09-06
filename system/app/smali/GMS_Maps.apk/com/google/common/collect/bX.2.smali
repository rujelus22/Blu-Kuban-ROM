.class final Lcom/google/common/collect/bX;
.super Lcom/google/common/collect/bY;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/D;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/D;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/common/collect/bX;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/bX;->b:Lcom/google/common/base/D;

    invoke-direct {p0}, Lcom/google/common/collect/bY;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/bX;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bX;->b:Lcom/google/common/base/D;

    invoke-static {v0, v1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Lcom/google/common/base/D;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
