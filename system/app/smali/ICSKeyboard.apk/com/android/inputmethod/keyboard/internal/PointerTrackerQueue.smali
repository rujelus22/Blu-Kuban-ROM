.class public Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
.super Ljava/lang/Object;
.source "PointerTrackerQueue.java"


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public isAnyInSlidingKeyInput()Z
    .registers 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 70
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 66
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 67
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isInSlidingKeyInput()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public releaseAllPointers(J)V
    .registers 4
    .parameter "eventTime"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 48
    return-void
.end method

.method public releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V
    .registers 8
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    .line 56
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 57
    if-eqz p1, :cond_18

    .line 58
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_18
    return-void

    .line 51
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 52
    .local v0, t:Lcom/android/inputmethod/keyboard/PointerTracker;
    if-eq v0, p1, :cond_6

    .line 54
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/android/inputmethod/keyboard/PointerTracker;->onPhantomUpEvent(IIJ)V

    goto :goto_6
.end method

.method public releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/PointerTracker;J)V
    .registers 9
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 31
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_9

    .line 44
    :cond_8
    return-void

    .line 34
    :cond_9
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    .line 35
    .local v1, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, oldestPos:I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .local v2, t:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_12
    if-eq v2, p1, :cond_8

    .line 37
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 36
    :goto_1c
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #t:Lcom/android/inputmethod/keyboard/PointerTracker;
    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .restart local v2       #t:Lcom/android/inputmethod/keyboard/PointerTracker;
    goto :goto_12

    .line 40
    :cond_23
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/android/inputmethod/keyboard/PointerTracker;->onPhantomUpEvent(IIJ)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 81
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 77
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v7, :cond_2f

    .line 78
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_2f
    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method
