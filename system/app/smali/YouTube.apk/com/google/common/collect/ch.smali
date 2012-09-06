.class final Lcom/google/common/collect/ch;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 271
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Collection;

    .line 272
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/collect/ch;->b:Lcom/google/common/base/v;

    .line 273
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 277
    return-void
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ch;->b:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
