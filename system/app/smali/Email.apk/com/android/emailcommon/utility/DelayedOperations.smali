.class public Lcom/android/emailcommon/utility/DelayedOperations;
.super Ljava/lang/Object;
.source "DelayedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mPendingOperations:Ljava/util/LinkedList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    .line 56
    iput-object p1, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method


# virtual methods
.method cancelRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 63
    new-instance v0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;-><init>(Lcom/android/emailcommon/utility/DelayedOperations;Ljava/lang/Runnable;)V

    .line 64
    .local v0, qo:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    iget-object v1, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/utility/DelayedOperations;->postRunnable(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public removeCallbacks()V
    .registers 5

    .prologue
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;

    .line 93
    .local v1, qo:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    invoke-virtual {v1}, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->cancel()V

    goto :goto_b

    .line 95
    .end local v1           #qo:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    :cond_1b
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, found:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    iget-object v3, p0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;

    .line 76
    .local v2, qo:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    #getter for: Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->mActualRannable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->access$000(Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;)Ljava/lang/Runnable;

    move-result-object v3

    if-ne v3, p1, :cond_7

    .line 77
    move-object v0, v2

    .line 81
    .end local v2           #qo:Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
    :cond_1a
    if-eqz v0, :cond_1f

    .line 82
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->cancel()V

    .line 84
    :cond_1f
    return-void
.end method
