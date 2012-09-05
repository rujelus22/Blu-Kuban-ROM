.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$3;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isKenburnsOn()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 398
    :cond_15
    :goto_15
    return v2

    .line 396
    :cond_16
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$2()Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    .line 397
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$2()Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showClipDeleteView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    goto :goto_15
.end method
