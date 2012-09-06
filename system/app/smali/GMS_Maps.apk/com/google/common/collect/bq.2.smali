.class Lcom/google/common/collect/bq;
.super Lcom/google/common/collect/bp;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/common/collect/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b()Lcom/google/common/collect/Q;
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->f()Lcom/google/common/collect/bp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/common/collect/br;
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/bp;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method e()Lcom/google/common/collect/bx;
    .registers 2

    .prologue
    .line 289
    invoke-static {}, Lcom/google/common/collect/bx;->h()Lcom/google/common/collect/bx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/bp;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/common/collect/bp;
    .registers 1

    .prologue
    .line 292
    return-object p0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/bp;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/bp;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
