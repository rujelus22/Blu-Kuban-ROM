.class public Lcom/sec/android/app/ve/view/timeline/MusicDropView;
.super Landroid/widget/FrameLayout;
.source "MusicDropView.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mDuration:I

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
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 42
    const-string v0, "Music Dropped"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mFilePath:Ljava/lang/String;

    .line 44
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mDisplayName:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mDuration:I

    move v1, p1

    move v2, p2

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->musicDropped(FFLjava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 48
    const-string v0, "Music Item Drag Started"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mMovingView:Landroid/view/View;

    .line 50
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 35
    const-string v0, "Music ITem dragged"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_10

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->paint:Landroid/graphics/Paint;

    .line 38
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 32
    return-void
.end method

.method public setFileInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "path"
    .parameter "displayName"
    .parameter "duration"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mFilePath:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mDisplayName:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->mDuration:I

    .line 55
    return-void
.end method
