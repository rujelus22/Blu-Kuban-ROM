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


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/utility/DelayedOperations;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter "actualRannable"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->this$0:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->mActualRannable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->mActualRannable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->this$0:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v0, v0, Lcom/android/emailcommon/utility/DelayedOperations;->mPendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/emailcommon/utility/DelayedOperations$QueuedOperation;->this$0:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/utility/DelayedOperations;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

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
