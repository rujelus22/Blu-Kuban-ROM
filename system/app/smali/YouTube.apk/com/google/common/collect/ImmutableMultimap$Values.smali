.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/ew;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ew;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ew;

    .line 491
    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/gf;
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ew;

    invoke-interface {v0}, Lcom/google/common/collect/ew;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    new-instance v1, Lcom/google/common/collect/ce;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ce;-><init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ew;

    invoke-interface {v0}, Lcom/google/common/collect/ew;->size()I

    move-result v0

    return v0
.end method
