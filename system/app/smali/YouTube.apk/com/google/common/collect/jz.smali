.class final Lcom/google/common/collect/jz;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:Lcom/google/common/collect/jx;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/jx;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1329
    iput-object p1, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    .line 1330
    iput-object p2, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    .line 1331
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/jx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1380
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/jx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/jx;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, Lcom/google/common/collect/jz;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/jz;->b:Lcom/google/common/collect/jx;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/jx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
