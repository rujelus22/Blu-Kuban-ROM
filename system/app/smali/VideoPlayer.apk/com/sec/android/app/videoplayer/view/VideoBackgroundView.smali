.class public Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;
.super Landroid/view/View;
.source "VideoBackgroundView.java"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->init()V

    .line 17
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    return-void
.end method


# virtual methods
.method public doRefreshIcon()V
    .registers 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->invalidate()V

    .line 57
    return-void
.end method

.method public getVideoSurfaceHeight()I
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSurfaceWidth()I
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    if-eqz v0, :cond_16

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    return-void
.end method

.method public setDrawableMode(Ljava/lang/String;)V
    .registers 4
    .parameter "scheme"

    .prologue
    .line 26
    if-nez p1, :cond_3

    .line 30
    :goto_2
    return-void

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBackgroundView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method
