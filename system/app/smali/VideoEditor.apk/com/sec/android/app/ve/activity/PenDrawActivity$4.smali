.class Lcom/sec/android/app/ve/activity/PenDrawActivity$4;
.super Landroid/os/Handler;
.source "PenDrawActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/PenDrawActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 486
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 489
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_64

    .line 524
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 491
    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->showClipArtParam()V

    goto :goto_5

    .line 495
    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->finish()V

    goto :goto_5

    .line 499
    :pswitch_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 501
    .local v1, objs:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/graphics/Bitmap;

    .line 503
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 504
    const-string v2, "setting bitmap to paintcanvas view"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    if-eqz v2, :cond_49

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 510
    :cond_49
    const-string v2, "setting bitmap to paintcanvas view, canvas view is not ready"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 517
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #objs:[Ljava/lang/Object;
    :pswitch_58
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->saveDrawingData(Z)V

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->closeActivity()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$7(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    goto :goto_5

    .line 489
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_6
        :pswitch_16
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_58
    .end packed-switch
.end method
