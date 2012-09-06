.class public final Lcom/google/common/collect/dg;
.super Lcom/google/common/collect/dm;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/common/collect/dm;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/ImmutableMap;
    .registers 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    goto :goto_e
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    return-object p0
.end method
