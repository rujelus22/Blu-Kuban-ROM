.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    .local p1, multiset:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 288
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    const/4 v2, 0x0

    .line 310
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_e

    move-object v1, p1

    .line 311
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 312
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-gtz v3, :cond_f

    .line 318
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_e
    :goto_e
    return v2

    .line 315
    .restart local v1       #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_f
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 316
    .local v0, count:I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 322
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #getter for: Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    #getter for: Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMultiset;->access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 293
    .local v0, mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 283
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 306
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
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
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySet;,"Lcom/google/common/collect/ImmutableMultiset$EntrySet<TE;>;"
    return-object p0
.end method
