.class public final Lcom/anddoes/launcher/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Landroid/animation/ValueAnimator;

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method public constructor <init>(JF)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v3, p0, Lcom/anddoes/launcher/ea;->e:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ea;->f:Ljava/lang/Object;

    .line 45
    iput v2, p0, Lcom/anddoes/launcher/ea;->g:I

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p3, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    .line 49
    iput-wide p1, p0, Lcom/anddoes/launcher/ea;->a:J

    .line 50
    iput v1, p0, Lcom/anddoes/launcher/ea;->b:F

    .line 51
    iput p3, p0, Lcom/anddoes/launcher/ea;->c:F

    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/eb;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/eb;-><init>(Lcom/anddoes/launcher/ea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    return-void
.end method

.method private a(I)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 63
    if-ne p1, v10, :cond_45

    iget v0, p0, Lcom/anddoes/launcher/ea;->c:F

    move v1, v0

    .line 64
    :goto_d
    iget-boolean v0, p0, Lcom/anddoes/launcher/ea;->e:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/anddoes/launcher/ea;->b:F

    .line 68
    :goto_13
    iget-object v4, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    iput v9, p0, Lcom/anddoes/launcher/ea;->g:I

    .line 72
    iput p1, p0, Lcom/anddoes/launcher/ea;->g:I

    .line 75
    iget-wide v4, p0, Lcom/anddoes/launcher/ea;->a:J

    sub-long v2, v4, v2

    .line 76
    iget-object v4, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/anddoes/launcher/ea;->a:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object v2, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v9

    aput v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 79
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    iput-boolean v9, p0, Lcom/anddoes/launcher/ea;->e:Z

    .line 81
    return-void

    .line 63
    :cond_45
    iget v0, p0, Lcom/anddoes/launcher/ea;->b:F

    move v1, v0

    goto :goto_d

    .line 65
    :cond_49
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_13
.end method

.method static synthetic a(Lcom/anddoes/launcher/ea;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/ea;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/ea;->a(I)V

    .line 107
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/anddoes/launcher/ea;->f:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/ea;->a(I)V

    .line 117
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Landroid/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/ea;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method
