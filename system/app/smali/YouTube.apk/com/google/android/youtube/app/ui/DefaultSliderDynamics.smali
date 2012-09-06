.class public final Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/youtube/app/ui/DefaultSlider;

.field private d:Landroid/view/VelocityTracker;

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/DefaultSlider;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    .line 54
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/DefaultSlider;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->c:Lcom/google/android/youtube/app/ui/DefaultSlider;

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a:I

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b:I

    .line 58
    return-void
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->c:Lcom/google/android/youtube/app/ui/DefaultSlider;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b()Lcom/google/android/youtube/app/ui/Slider$Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    .line 134
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 62
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    .line 64
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 65
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_a
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    .line 70
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->e:F

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    .line 72
    return-void

    .line 69
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_a
.end method

.method public final c(Landroid/view/MotionEvent;)I
    .registers 4
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 76
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 77
    :goto_10
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    .line 78
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    .line 79
    return v1

    .line 76
    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_10
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 84
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 85
    :goto_10
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 87
    iget v2, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a:I

    if-le v1, v2, :cond_26

    .line 89
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_20
    return v0

    .line 84
    :cond_21
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_10

    .line 92
    :cond_26
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final e(Landroid/view/MotionEvent;)Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 96
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 97
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 98
    :goto_11
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 102
    :goto_2a
    iget v3, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->e:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41a0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5e

    move v0, v2

    .line 103
    :goto_39
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 105
    if-eqz v0, :cond_60

    const/16 v3, 0xc8

    if-le v1, v3, :cond_60

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->c:Lcom/google/android/youtube/app/ui/DefaultSlider;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e()I

    move-result v3

    if-ne v3, v2, :cond_60

    .line 107
    sget-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->BACK:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    .line 112
    :goto_4e
    return-object v0

    .line 97
    :cond_4f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_11

    .line 99
    :cond_54
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_2a

    .line 102
    :cond_5e
    const/4 v0, 0x0

    goto :goto_39

    .line 108
    :cond_60
    if-eqz v0, :cond_71

    const/16 v0, -0xc8

    if-ge v1, v0, :cond_71

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->c:Lcom/google/android/youtube/app/ui/DefaultSlider;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e()I

    move-result v0

    if-nez v0, :cond_71

    .line 110
    sget-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->FORWARD:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    goto :goto_4e

    .line 112
    :cond_71
    sget-object v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->NONE:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    goto :goto_4e
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    if-ne v1, v2, :cond_34

    .line 122
    if-nez v0, :cond_35

    const/4 v0, 0x1

    .line 123
    :goto_15
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    :goto_1f
    iput v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    .line 124
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f:F

    iput v1, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->e:F

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->g:I

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_34

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 130
    :cond_34
    return-void

    .line 122
    :cond_35
    const/4 v0, 0x0

    goto :goto_15

    .line 123
    :cond_37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    goto :goto_1f
.end method
