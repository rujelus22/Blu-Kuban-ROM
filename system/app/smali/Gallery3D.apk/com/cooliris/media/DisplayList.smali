.class public final Lcom/cooliris/media/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


# instance fields
.field private mAnimatables:Lcom/cooliris/media/DirectLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList",
            "<",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/cooliris/media/DirectLinkedList;

    invoke-direct {v0}, Lcom/cooliris/media/DirectLinkedList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/DisplayList;->mAnimatables:Lcom/cooliris/media/DirectLinkedList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private markIfDirty(Lcom/cooliris/media/DisplayItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {p0, p1}, Lcom/cooliris/media/DisplayList;->addToAnimatables(Lcom/cooliris/media/DisplayItem;)V

    .line 135
    :cond_9
    return-void
.end method


# virtual methods
.method public addToAnimatables(Lcom/cooliris/media/DisplayItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->getAnimatablesEntry()Lcom/cooliris/media/DirectLinkedList$Entry;

    move-result-object v1

    .line 123
    .local v1, entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<Lcom/cooliris/media/DisplayItem;>;"
    iget-boolean v2, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->inserted:Z

    if-nez v2, :cond_f

    .line 124
    iget-object v0, p0, Lcom/cooliris/media/DisplayList;->mAnimatables:Lcom/cooliris/media/DirectLinkedList;

    .line 125
    .local v0, animatables:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<Lcom/cooliris/media/DisplayItem;>;"
    monitor-enter v0

    .line 126
    :try_start_b
    invoke-virtual {v0, v1}, Lcom/cooliris/media/DirectLinkedList;->add(Lcom/cooliris/media/DirectLinkedList$Entry;)V

    .line 127
    monitor-exit v0

    .line 129
    .end local v0           #animatables:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<Lcom/cooliris/media/DisplayItem;>;"
    :cond_f
    return-void

    .line 127
    .restart local v0       #animatables:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<Lcom/cooliris/media/DisplayItem;>;"
    :catchall_10
    move-exception v2

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v2
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cooliris/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 139
    iget-object v1, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 140
    :try_start_8
    iget-object v0, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public clearExcept([Lcom/cooliris/media/DisplayItem;)V
    .registers 8
    .parameter "displayItems"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/cooliris/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 146
    .local v1, displayMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/DisplayItem;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 147
    iget-object v5, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 148
    :try_start_8
    iget-object v4, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 149
    array-length v3, p1

    .line 150
    .local v3, numItems:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_22

    .line 151
    aget-object v0, p1, v2

    .line 152
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    if-eqz v0, :cond_1f

    .line 153
    iget-object v4, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v4, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 157
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_22
    monitor-exit v5

    .line 158
    return-void

    .line 157
    .end local v2           #i:I
    .end local v3           #numItems:I
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v4
.end method

.method public get(Lcom/cooliris/media/MediaItem;)Lcom/cooliris/media/DisplayItem;
    .registers 5
    .parameter "item"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/cooliris/media/DisplayList;->mDisplayMap:Ljava/util/HashMap;

    .line 32
    .local v1, displayMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/DisplayItem;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/DisplayItem;

    .line 33
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v0, :cond_17

    .line 34
    new-instance v0, Lcom/cooliris/media/DisplayItem;

    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    invoke-direct {v0, p1}, Lcom/cooliris/media/DisplayItem;-><init>(Lcom/cooliris/media/MediaItem;)V

    .line 35
    .restart local v0       #displayItem:Lcom/cooliris/media/DisplayItem;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/cooliris/media/DisplayList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_17
    return-object v0
.end method

.method public getNumAnimatables()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cooliris/media/DisplayList;->mAnimatables:Lcom/cooliris/media/DirectLinkedList;

    invoke-virtual {v0}, Lcom/cooliris/media/DirectLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public setAlive(Lcom/cooliris/media/DisplayItem;Z)V
    .registers 5
    .parameter "item"
    .parameter "alive"

    .prologue
    .line 104
    iput-boolean p2, p1, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    .line 105
    if-eqz p2, :cond_17

    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 106
    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->getAnimatablesEntry()Lcom/cooliris/media/DirectLinkedList$Entry;

    move-result-object v0

    .line 107
    .local v0, entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<Lcom/cooliris/media/DisplayItem;>;"
    iget-boolean v1, v0, Lcom/cooliris/media/DirectLinkedList$Entry;->inserted:Z

    if-nez v1, :cond_17

    .line 108
    iget-object v1, p0, Lcom/cooliris/media/DisplayList;->mAnimatables:Lcom/cooliris/media/DirectLinkedList;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/DirectLinkedList;->add(Lcom/cooliris/media/DirectLinkedList$Entry;)V

    .line 111
    .end local v0           #entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<Lcom/cooliris/media/DisplayItem;>;"
    :cond_17
    return-void
.end method

.method public setHasFocus(Lcom/cooliris/media/DisplayItem;ZZ)V
    .registers 5
    .parameter "item"
    .parameter "hasFocus"
    .parameter "pushDown"

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->getHasFocus()Z

    move-result v0

    .line 53
    .local v0, currentHasFocus:Z
    if-eq v0, p2, :cond_c

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/cooliris/media/DisplayItem;->setHasFocus(ZZ)V

    .line 55
    invoke-direct {p0, p1}, Lcom/cooliris/media/DisplayList;->markIfDirty(Lcom/cooliris/media/DisplayItem;)V

    .line 57
    :cond_c
    return-void
.end method

.method public final setOffset(Lcom/cooliris/media/DisplayItem;ZZFFFFF)V
    .registers 9
    .parameter "item"
    .parameter "useOffset"
    .parameter "pushDown"
    .parameter "span"
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p8}, Lcom/cooliris/media/DisplayItem;->setOffset(ZZFFFFF)V

    .line 62
    invoke-direct {p0, p1}, Lcom/cooliris/media/DisplayList;->markIfDirty(Lcom/cooliris/media/DisplayItem;)V

    .line 63
    return-void
.end method

.method public setPositionAndStackIndex(Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Vector3f;IZ)V
    .registers 5
    .parameter "item"
    .parameter "position"
    .parameter "stackId"
    .parameter "performTransition"

    .prologue
    .line 43
    invoke-virtual {p1, p2, p3, p4}, Lcom/cooliris/media/DisplayItem;->set(Lcom/cooliris/media/Vector3f;IZ)V

    .line 44
    if-nez p4, :cond_9

    .line 45
    invoke-virtual {p1}, Lcom/cooliris/media/DisplayItem;->commit()V

    .line 49
    :goto_8
    return-void

    .line 47
    :cond_9
    invoke-direct {p0, p1}, Lcom/cooliris/media/DisplayList;->markIfDirty(Lcom/cooliris/media/DisplayItem;)V

    goto :goto_8
.end method

.method public update(IF)V
    .registers 7
    .parameter "state"
    .parameter "timeElapsed"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cooliris/media/DisplayList;->mAnimatables:Lcom/cooliris/media/DirectLinkedList;

    .line 79
    .local v0, animatables:Lcom/cooliris/media/DirectLinkedList;,"Lcom/cooliris/media/DirectLinkedList<Lcom/cooliris/media/DisplayItem;>;"
    monitor-enter v0

    .line 80
    :try_start_3
    invoke-virtual {v0}, Lcom/cooliris/media/DirectLinkedList;->getHead()Lcom/cooliris/media/DirectLinkedList$Entry;

    move-result-object v1

    .line 81
    .local v1, entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<Lcom/cooliris/media/DisplayItem;>;"
    :goto_7
    if-eqz v1, :cond_1e

    .line 82
    iget-object v2, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/cooliris/media/DisplayItem;

    .line 85
    .local v2, item:Lcom/cooliris/media/DisplayItem;
    invoke-virtual {v2, p1, p2}, Lcom/cooliris/media/DisplayItem;->update(IF)V

    .line 88
    invoke-virtual {v2}, Lcom/cooliris/media/DisplayItem;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 89
    invoke-virtual {v0, v1}, Lcom/cooliris/media/DirectLinkedList;->remove(Lcom/cooliris/media/DirectLinkedList$Entry;)Lcom/cooliris/media/DirectLinkedList$Entry;

    move-result-object v1

    goto :goto_7

    .line 91
    :cond_1b
    iget-object v1, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    goto :goto_7

    .line 94
    .end local v2           #item:Lcom/cooliris/media/DisplayItem;
    :cond_1e
    monitor-exit v0

    .line 95
    return-void

    .line 94
    .end local v1           #entry:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<Lcom/cooliris/media/DisplayItem;>;"
    :catchall_20
    move-exception v3

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method
