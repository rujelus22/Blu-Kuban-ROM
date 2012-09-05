.class Lcom/sec/android/app/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->showFlingAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-object p2, p0, Lcom/sec/android/app/music/AudioPreview$2;->val$filePath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x2

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$2;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$2;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v2, v2, Lcom/sec/android/app/music/AudioPreview;->mDelayTimes:I

    mul-int/lit16 v2, v2, 0x12c

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 629
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 633
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 637
    return-void
.end method
