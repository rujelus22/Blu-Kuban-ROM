.class final Lcom/google/common/cache/ah;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2
    .parameter

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4522
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 4516
    iget-object v0, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 4501
    new-instance v0, Lcom/google/common/cache/af;

    iget-object v1, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/af;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/common/cache/ah;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    return v0
.end method
