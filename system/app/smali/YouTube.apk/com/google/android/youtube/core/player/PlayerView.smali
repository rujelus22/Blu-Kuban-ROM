.class public Lcom/google/android/youtube/core/player/PlayerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/ac;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/player/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/ac;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/ac;

    .line 32
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/PlayerView;->b()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/player/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/ac;-><init>(Lcom/google/android/youtube/core/player/PlayerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/ac;

    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/PlayerView;->b()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/PlayerView;)I
    .registers 2
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/PlayerView;)I
    .registers 2
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->c:I

    return v0
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    iget-object v1, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/ac;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/ac;

    return-object v0
.end method

.method public final a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/youtube/core/player/PlayerView;->b:I

    .line 54
    iput p2, p0, Lcom/google/android/youtube/core/player/PlayerView;->c:I

    .line 55
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/PlayerView;->requestLayout()V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 61
    if-ne v0, v3, :cond_c

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 70
    :goto_b
    return-void

    .line 64
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    int-to-float v1, v0

    const v2, 0x3fe374bc

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 66
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 68
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_b
.end method
