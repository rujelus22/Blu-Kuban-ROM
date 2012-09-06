.class Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fn;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/fn;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lcom/google/common/collect/hu;)V

    .line 661
    return-void
.end method


# virtual methods
.method public delegate()Lcom/google/common/collect/fn;
    .registers 2

    .prologue
    .line 663
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fn;

    return-object v0
.end method

.method public bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/fn;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
