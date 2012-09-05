.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;
.super Landroid/os/Handler;
.source "CaptionEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 190
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_44

    .line 217
    :cond_5
    :goto_5
    return-void

    .line 194
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 196
    .local v1, objs:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/graphics/Bitmap;

    .line 198
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 200
    const-string v2, "setting bitmap to paintcanvas view"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->currentframe:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$0(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->currentframe:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$0(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 209
    :cond_35
    const-string v2, "setting bitmap to paintcanvas view, canvas view is not ready"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 190
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
