.class public LJW;
.super Ljava/lang/Object;
.source "Curtains.java"


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    .line 30
    iput-object p1, p0, LJW;->a:Landroid/widget/ImageView;

    .line 31
    iput-object p2, p0, LJW;->b:Landroid/widget/ImageView;

    .line 32
    return-void
.end method

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 82
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xebebeb

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(LJW;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, LJW;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(LJW;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, LJW;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(LJW;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, LJW;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 52
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    .line 55
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LJW;->a(I)I

    move-result v0

    .line 56
    iget-object v1, p0, LJW;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 57
    iget-object v1, p0, LJW;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 58
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LJW;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 42
    iget-object v0, p0, LJW;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 43
    iget-object v0, p0, LJW;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 44
    iget-object v0, p0, LJW;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 45
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 79
    :goto_4
    return-void

    .line 67
    :cond_5
    new-instance v0, LJX;

    invoke-direct {v0, p0}, LJX;-><init>(LJW;)V

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v0, p0, LJW;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 67
    nop

    :array_2c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method
