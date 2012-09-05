.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DragViewImpl"
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    return-object v0
.end method

.method public viewDelete()V
    .registers 8

    .prologue
    .line 414
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTransitionMap()Ljava/util/HashMap;

    move-result-object v3

    .line 416
    .local v3, transitionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/app/video/editor/external/Edit;>;"
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v2

    .line 417
    .local v2, scrollX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 418
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;)V

    .line 419
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    if-eqz v4, :cond_40

    .line 420
    const/4 v1, 0x0

    .local v1, k:I
    :goto_34
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_85

    .line 425
    .end local v1           #k:I
    :cond_40
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeTransition(Ljava/util/HashMap;)V

    .line 428
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 429
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 433
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    if-nez v4, :cond_84

    .line 434
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v4

    if-nez v4, :cond_84

    .line 435
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    const v5, 0x7f0b0108

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->musicDelete()V

    .line 436
    :cond_84
    return-void

    .line 421
    .end local v0           #element:Lcom/samsung/app/video/editor/external/Element;
    .restart local v1       #k:I
    :cond_85
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method public viewDragging(FFLandroid/graphics/Paint;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 440
    return-void
.end method

.method public viewDropped(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 409
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->viewDropped(FFLandroid/view/View;)V

    .line 410
    return-void
.end method
