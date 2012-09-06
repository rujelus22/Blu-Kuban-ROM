.class public Lcom/google/common/collect/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/hu;

.field b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/hu;

    .line 175
    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/ImmutableMultimap;
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/collect/dn;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_26

    .line 266
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 267
    check-cast v0, Ljava/util/List;

    .line 268
    iget-object v2, p0, Lcom/google/common/collect/dn;->b:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_12

    .line 271
    :cond_26
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/hu;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultimap;->copyOf(Lcom/google/common/collect/hu;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/hu;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/hu;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method
