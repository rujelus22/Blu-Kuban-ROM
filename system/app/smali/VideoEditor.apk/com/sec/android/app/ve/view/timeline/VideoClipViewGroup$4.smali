.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$4;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 544
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 571
    :goto_a
    return-void

    :cond_b
    move-object v1, p1

    .line 546
    check-cast v1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 559
    .local v1, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    #getter for: Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mGoingForLongPress:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$3(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 560
    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onDoubleTap()V

    goto :goto_a

    .line 564
    :cond_18
    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mGoingForLongPress:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$0(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Z)V

    .line 565
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 567
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$1()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$4()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a
.end method
