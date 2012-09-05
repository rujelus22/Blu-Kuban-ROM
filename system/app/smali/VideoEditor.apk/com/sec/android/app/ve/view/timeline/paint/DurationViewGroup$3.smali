.class Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$3;
.super Ljava/lang/Object;
.source "DurationViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private updateMusicTime()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method


# virtual methods
.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "addedView"

    .prologue
    .line 93
    const-string v0, "captionbar onAdded"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    .line 96
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 97
    const-wide/16 v2, 0x32

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 90
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 102
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "removedView"

    .prologue
    .line 81
    const-string v0, "captionbar onRemoved"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v1

    .line 84
    const/4 v2, 0x1

    .line 83
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 84
    const-wide/16 v2, 0x32

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "mSec"
    .parameter "tTime"

    .prologue
    .line 78
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "updatedView"

    .prologue
    .line 73
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->update()V

    .line 74
    return-void
.end method
