.class Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jv;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/jv;)V
    .registers 2
    .parameter

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lcom/google/common/collect/hu;)V

    .line 682
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/google/common/collect/jv;
    .registers 2

    .prologue
    .line 684
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jv;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jv;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jv;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 697
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
