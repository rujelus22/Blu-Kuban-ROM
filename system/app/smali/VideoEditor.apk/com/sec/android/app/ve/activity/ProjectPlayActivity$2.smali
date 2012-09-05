.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;
.super Ljava/lang/Object;
.source "ProjectPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "ev"

    .prologue
    const/16 v4, 0x6c

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 429
    const-string v2, "controller ..on touch"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1e

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    :goto_1d
    return v0

    .line 434
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3a

    .line 435
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 436
    const-string v1, "D6"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    :cond_3a
    move v0, v1

    .line 440
    goto :goto_1d
.end method
