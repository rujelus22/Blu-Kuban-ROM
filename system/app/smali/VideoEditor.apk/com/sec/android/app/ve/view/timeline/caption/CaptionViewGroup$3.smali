.class Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$3;
.super Ljava/lang/Object;
.source "CaptionViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private updateMusicTime()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method


# virtual methods
.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "addedView"

    .prologue
    .line 97
    const-string v0, "captionbar onAdded"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)Landroid/os/Handler;

    move-result-object v1

    .line 101
    const/4 v2, 0x1

    .line 100
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 101
    const-wide/16 v2, 0x32

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 94
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 106
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "removedView"

    .prologue
    .line 85
    const-string v0, "captionbar onRemoved"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)Landroid/os/Handler;

    move-result-object v1

    .line 88
    const/4 v2, 0x1

    .line 87
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 88
    const-wide/16 v2, 0x32

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "mSec"
    .parameter "tTime"

    .prologue
    .line 82
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "updatedView"

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 78
    return-void
.end method
