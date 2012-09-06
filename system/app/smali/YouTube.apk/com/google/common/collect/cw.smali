.class public abstract Lcom/google/common/collect/cw;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Iterator;
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/cw;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/cw;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/cw;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/cw;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    return-void
.end method
