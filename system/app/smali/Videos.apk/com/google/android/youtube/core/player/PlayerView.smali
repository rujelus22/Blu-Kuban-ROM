.class public Lcom/google/android/youtube/core/player/PlayerView;
.super Landroid/widget/RelativeLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO:F = 1.777f


# instance fields
.field private final surfaceView:Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

.field private volatile videoHeight:I

.field private volatile videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->surfaceView:Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/PlayerView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->surfaceView:Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/PlayerView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/PlayerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/player/PlayerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, -0x2

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v0, surfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->surfaceView:Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getSurfaceView()Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->surfaceView:Lcom/google/android/youtube/core/player/PlayerView$InternalSurfaceView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 60
    .local v3, heightMode:I
    if-ne v3, v7, :cond_c

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 69
    :goto_b
    return-void

    .line 63
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 64
    .local v4, width:I
    int-to-float v5, v4

    const v6, 0x3fe374bc

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 65
    .local v2, height:I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 66
    .local v1, encWidth:I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    .local v0, encHeight:I
    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_b
.end method

.method public setVideoSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/youtube/core/player/PlayerView;->videoWidth:I

    .line 54
    iput p2, p0, Lcom/google/android/youtube/core/player/PlayerView;->videoHeight:I

    .line 55
    return-void
.end method
