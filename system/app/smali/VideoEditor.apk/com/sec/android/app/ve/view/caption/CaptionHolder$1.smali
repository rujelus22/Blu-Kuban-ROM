.class Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;
.super Landroid/os/Handler;
.source "CaptionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/caption/CaptionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionHolder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 133
    :cond_6
    :goto_6
    return-void

    .line 118
    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 119
    #setter for: Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionHolder;Lcom/samsung/app/video/editor/external/Element;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mCurrentElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->access$1(Lcom/sec/android/app/ve/view/caption/CaptionHolder;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mHandler:Landroid/os/Handler;

    .line 123
    const-wide/16 v1, 0x14

    .line 122
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 125
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionHolder$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    .line 116
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
