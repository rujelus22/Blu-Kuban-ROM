.class Lcom/google/android/apps/books/widget/ScrubBar$1;
.super Landroid/os/Handler;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/ScrubBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/ScrubBar;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    .line 342
    :cond_4
    :goto_4
    return-void

    .line 329
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    #getter for: Lcom/google/android/apps/books/widget/ScrubBar;->mPositionUpdateSequenceId:I
    invoke-static {v1}, Lcom/google/android/apps/books/widget/ScrubBar;->access$000(Lcom/google/android/apps/books/widget/ScrubBar;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 334
    const-string v0, "ScrubBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 335
    const-string v0, "ScrubBar"

    const-string v1, "done waiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/widget/ScrubBar;->mFreezePositionInProgress:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->access$102(Lcom/google/android/apps/books/widget/ScrubBar;Z)Z

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    #getter for: Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->access$200(Lcom/google/android/apps/books/widget/ScrubBar;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar$1;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    #getter for: Lcom/google/android/apps/books/widget/ScrubBar;->mQueuedPosition:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/ScrubBar;->access$200(Lcom/google/android/apps/books/widget/ScrubBar;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/google/android/apps/books/widget/ScrubBar;->setPositionAndPause(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->access$300(Lcom/google/android/apps/books/widget/ScrubBar;I)V

    goto :goto_4
.end method
