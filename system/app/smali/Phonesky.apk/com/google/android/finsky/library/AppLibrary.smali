.class public Lcom/google/android/finsky/library/AppLibrary;
.super Lcom/google/android/finsky/library/HashMapLibrary;
.source "AppLibrary.java"


# instance fields
.field private mSubscriptionsDocIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .registers 3
    .parameter "hasher"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    .line 30
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 42
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 46
    return-void
.end method

.method public dumpState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "label"
    .parameter "indent"

    .prologue
    .line 112
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AppLibrary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  totalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  subscriptionsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .registers 10
    .parameter "docId"

    .prologue
    const/4 v5, 0x1

    .line 84
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    move-object v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 86
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibraryAppEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method

.method public getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .registers 10
    .parameter "docId"

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 96
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method

.method getSubscriptionsList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibrarySubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 72
    .local v2, subsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, subsDocId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 75
    .end local v1           #subsDocId:Ljava/lang/String;
    :cond_1e
    return-object v2
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 54
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 58
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    invoke-super {p0}, Lcom/google/android/finsky/library/HashMapLibrary;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 107
    const-string v0, "{num apps=%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
