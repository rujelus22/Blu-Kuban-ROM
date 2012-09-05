.class public Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
.super Landroid/widget/FrameLayout;
.source "ThumbnailDropView.java"


# instance fields
.field private mDuration:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mMediaType:I

.field private mMovingView:Landroid/view/View;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 51
    const-string v0, "ThumbnailDropped"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mMovingView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mMediaType:I

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mDuration:Ljava/lang/String;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->bitmapDropped(FFLandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mMovingView:Landroid/view/View;

    .line 59
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 37
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->bitmapDragged(FFLandroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_13

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->paint:Landroid/graphics/Paint;

    .line 40
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 33
    return-void
.end method

.method public setMediaInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "mediaType"
    .parameter "filePath"
    .parameter "duration"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mMediaType:I

    .line 46
    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mFilePath:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;->mDuration:Ljava/lang/String;

    .line 48
    return-void
.end method
