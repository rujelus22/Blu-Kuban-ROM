.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    .line 599
    return-void
.end method


# virtual methods
.method isPartialView()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    .line 604
    new-instance v1, Lcom/google/common/collect/dq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dq;-><init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
