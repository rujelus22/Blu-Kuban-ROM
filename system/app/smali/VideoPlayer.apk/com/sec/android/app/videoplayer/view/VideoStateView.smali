.class public Lcom/sec/android/app/videoplayer/view/VideoStateView;
.super Landroid/view/View;
.source "VideoStateView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final VideoServiceUtil:Ljava/lang/String; = "VideoStateView"


# instance fields
.field private bStreaming:Z

.field private mBufferingIcon:[Landroid/graphics/drawable/Drawable;

.field private mConnectionIcon:[Landroid/graphics/drawable/Drawable;

.field private mDegrees:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    .line 26
    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mDegrees:I

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const v3, 0x7f020150

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    .line 55
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    .line 58
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 34
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_23

    .line 38
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 40
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_23

    .line 41
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 42
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_20

    .line 43
    const/4 v3, 0x1

    .line 48
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :goto_1f
    return v3

    .line 41
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 48
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public doRefreshIcon()V
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mDegrees:I

    add-int/lit8 v0, v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mDegrees:I

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->invalidate()V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 80
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v10, v11

    .line 81
    .local v6, dBuffering:Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v10, v11

    .line 83
    .local v7, dConnection:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 84
    .local v9, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 86
    .local v8, h:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getWidth()I

    move-result v10

    div-int/lit8 v4, v10, 0x2

    .line 87
    .local v4, centerX:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getHeight()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 89
    .local v5, centerY:I
    if-eqz v6, :cond_52

    .line 90
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 91
    .local v0, XsBuffering:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int v10, v8, v10

    div-int/lit8 v2, v10, 0x2

    .line 92
    .local v2, YsBuffering:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v6, v0, v2, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    .end local v0           #XsBuffering:I
    .end local v2           #YsBuffering:I
    :cond_52
    if-eqz v7, :cond_71

    .line 98
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v9, v10

    div-int/lit8 v1, v10, 0x2

    .line 99
    .local v1, XsConnection:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int v10, v8, v10

    div-int/lit8 v3, v10, 0x2

    .line 100
    .local v3, YsConnection:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v7, v1, v3, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    .end local v1           #XsConnection:I
    .end local v3           #YsConnection:I
    :cond_71
    iget v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mDegrees:I

    int-to-float v10, v10

    int-to-float v11, v4

    int-to-float v12, v5

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    if-eqz v6, :cond_81

    .line 109
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :cond_81
    iget-boolean v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    if-eqz v10, :cond_94

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_98

    .line 113
    if-eqz v7, :cond_94

    .line 114
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    :cond_94
    :goto_94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void

    .line 116
    :cond_98
    if-eqz v6, :cond_94

    .line 117
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_94
.end method

.method public setDrawableMode(Ljava/lang/String;)V
    .registers 4
    .parameter "scheme"

    .prologue
    .line 61
    if-nez p1, :cond_3

    .line 71
    :cond_2
    :goto_2
    return-void

    .line 64
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    .line 66
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "rtsp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_16
    const-string v0, "VideoStateView"

    const-string v1, "setDrawableMode() : Buffering.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    goto :goto_2
.end method
