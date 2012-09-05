.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v3, 0x6c

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surface touch::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 687
    :goto_1f
    const/4 v0, 0x0

    return v0

    .line 681
    :pswitch_21
    const-string v0, "surface touch action_down"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    const-string v0, "D9"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1f

    .line 679
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method
