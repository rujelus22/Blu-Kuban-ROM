.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 288
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 310
    instance-of v1, p1, Lcom/google/common/collect/fk;

    if-eqz v1, :cond_d

    .line 311
    check-cast p1, Lcom/google/common/collect/fk;

    .line 312
    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v1

    if-gtz v1, :cond_e

    .line 318
    :cond_d
    :goto_d
    return v0

    .line 315
    :cond_e
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 316
    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #getter for: Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/gf;
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #getter for: Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/google/common/collect/ch;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ch;-><init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #getter for: Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 326
    return-object p0
.end method
