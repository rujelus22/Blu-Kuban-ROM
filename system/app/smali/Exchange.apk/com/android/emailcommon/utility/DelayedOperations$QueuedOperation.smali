.class Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;
.super Ljava/lang/Object;
.source "DelayedOperations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/DelayedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedOperation"
.end annotation


# instance fields
.field private final mActualRannable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/emailcommon/utility/DelayedOperations;


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->this$0:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v0, v0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->mActualRannable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void
.end method
