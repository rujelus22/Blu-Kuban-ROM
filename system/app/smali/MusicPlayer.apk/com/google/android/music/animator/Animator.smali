.class public Lcom/google/android/music/animator/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/animator/Animator$1;,
        Lcom/google/android/music/animator/Animator$AnimationHandler;
    }
.end annotation


# static fields
.field private static animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

.field private static animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultInterpolator:Landroid/view/animation/Interpolator;

.field private static delayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static endingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private static mFrameDelay:J

.field private static pendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private static readyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/Animator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentIteration:I

.field private delayStartTime:J

.field private mAnimatedValue:Ljava/lang/Object;

.field private mDuration:J

.field private mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mStartDelay:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/animator/AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mValueFrom:Ljava/lang/Object;

.field private mValueTo:Ljava/lang/Object;

.field private mValueType:Ljava/lang/Class;

.field private playingBackwards:Z

.field private playingState:I

.field private startTime:J

.field private startedDelay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->defaultInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Lcom/google/android/music/animator/IntEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/IntEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 71
    new-instance v0, Lcom/google/android/music/animator/FloatEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 72
    new-instance v0, Lcom/google/android/music/animator/DoubleEvaluator;

    invoke-direct {v0}, Lcom/google/android/music/animator/DoubleEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->endingAnims:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->delayedAnims:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/music/animator/Animator;->readyAnims:Ljava/util/ArrayList;

    .line 130
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"

    .prologue
    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/music/animator/Animator;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 243
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 9
    .parameter "duration"
    .parameter "valueFrom"
    .parameter "valueTo"
    .parameter "valueType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    .line 84
    iput v2, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    .line 89
    iput-boolean v2, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    .line 104
    iput v2, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    .line 134
    iput v2, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    .line 148
    sget-object v0, Lcom/google/android/music/animator/Animator;->defaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    .line 166
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 172
    iput-object v3, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    .line 200
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    .line 201
    iput-object p2, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    .line 202
    iput-object p3, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    .line 203
    iput-object p4, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    .line 204
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->delayedAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000()J
    .registers 2

    .prologue
    .line 21
    sget-wide v0, Lcom/google/android/music/animator/Animator;->mFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/animator/Animator;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/music/animator/Animator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/animator/Animator;->startAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/animator/Animator;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/animator/Animator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->readyAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/animator/Animator;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/animator/Animator;->animationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/music/animator/Animator;->endingAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/animator/Animator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/animator/Animator;->endAnimation()V

    return-void
.end method

.method private animationFrame(J)Z
    .registers 12
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x1

    const/high16 v8, 0x3f80

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, done:Z
    iget v5, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    if-nez v5, :cond_c

    .line 665
    iput v4, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 666
    iput-wide p1, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 668
    :cond_c
    iget v5, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    packed-switch v5, :pswitch_data_84

    .line 707
    :goto_11
    return v0

    .line 670
    :pswitch_12
    iget-wide v5, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    long-to-float v6, v6

    div-float v1, v5, v6

    .line 671
    .local v1, fraction:F
    cmpl-float v5, v1, v8

    if-ltz v5, :cond_5f

    .line 673
    iget v5, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    iget v6, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    if-lt v5, v6, :cond_2b

    iget v5, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_69

    .line 675
    :cond_2b
    iget-object v5, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_45

    .line 676
    iget-object v5, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/animator/AnimatorListener;

    .line 677
    .local v3, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v3, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationRepeat(Lcom/google/android/music/animator/Animator;)V

    goto :goto_35

    .line 678
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_45
    iget v5, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/music/animator/Animator;->currentIteration:I

    .line 679
    iget v5, p0, Lcom/google/android/music/animator/Animator;->mRepeatMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_57

    .line 680
    iget-boolean v5, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    if-eqz v5, :cond_55

    const/4 v4, 0x0

    :cond_55
    iput-boolean v4, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    .line 682
    :cond_57
    sub-float/2addr v1, v8

    .line 683
    iget-wide v4, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    iget-wide v6, p0, Lcom/google/android/music/animator/Animator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 690
    :cond_5f
    :goto_5f
    iget-boolean v4, p0, Lcom/google/android/music/animator/Animator;->playingBackwards:Z

    if-eqz v4, :cond_65

    .line 691
    sub-float v1, v8, v1

    .line 692
    :cond_65
    invoke-virtual {p0, v1}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    goto :goto_11

    .line 686
    :cond_69
    const/4 v0, 0x1

    .line 687
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5f

    .line 697
    .end local v1           #fraction:F
    :pswitch_6f
    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    if-lez v4, :cond_7f

    iget v4, p0, Lcom/google/android/music/animator/Animator;->mRepeatCount:I

    rem-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_7f

    .line 698
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    .line 703
    :goto_7d
    :pswitch_7d
    const/4 v0, 0x1

    goto :goto_11

    .line 700
    :cond_7f
    invoke-virtual {p0, v8}, Lcom/google/android/music/animator/Animator;->animateValue(F)V

    goto :goto_7d

    .line 668
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_12
        :pswitch_7d
        :pswitch_6f
    .end packed-switch
.end method

.method private delayedAnimationFrame(J)Z
    .registers 8
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 632
    iget-boolean v3, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    if-nez v3, :cond_b

    .line 633
    iput-boolean v2, p0, Lcom/google/android/music/animator/Animator;->startedDelay:Z

    .line 634
    iput-wide p1, p0, Lcom/google/android/music/animator/Animator;->delayStartTime:J

    .line 646
    :cond_9
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 637
    :cond_b
    iget-wide v3, p0, Lcom/google/android/music/animator/Animator;->delayStartTime:J

    sub-long v0, p1, v3

    .line 638
    .local v0, deltaTime:J
    iget-wide v3, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_9

    .line 641
    iget-wide v3, p0, Lcom/google/android/music/animator/Animator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/google/android/music/animator/Animator;->startTime:J

    .line 642
    iput v2, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    goto :goto_a
.end method

.method private endAnimation()V
    .registers 4

    .prologue
    .line 602
    sget-object v2, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    .line 604
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/animator/AnimatorListener;

    .line 605
    .local v1, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v1, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationEnd(Lcom/google/android/music/animator/Animator;)V

    goto :goto_f

    .line 606
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_1f
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 607
    return-void
.end method

.method private startAnimation()V
    .registers 4

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/google/android/music/animator/Animator;->initAnimation()V

    .line 615
    sget-object v2, Lcom/google/android/music/animator/Animator;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    .line 617
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/animator/AnimatorListener;

    .line 618
    .local v1, listener:Lcom/google/android/music/animator/AnimatorListener;
    invoke-interface {v1, p0}, Lcom/google/android/music/animator/AnimatorListener;->onAnimationStart(Lcom/google/android/music/animator/Animator;)V

    goto :goto_12

    .line 619
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/animator/AnimatorListener;
    :cond_22
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/music/animator/AnimatorListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    .line 487
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public addUpdateListener(Lcom/google/android/music/animator/AnimatorUpdateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 500
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method animateValue(F)V
    .registers 7
    .parameter "fraction"

    .prologue
    .line 723
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 724
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    iget-object v3, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/music/animator/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    .line 725
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 726
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v1, :cond_2d

    .line 728
    iget-object v2, p0, Lcom/google/android/music/animator/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/animator/AnimatorUpdateListener;

    invoke-interface {v2, p0}, Lcom/google/android/music/animator/AnimatorUpdateListener;->onAnimationUpdate(Lcom/google/android/music/animator/Animator;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 730
    .end local v0           #i:I
    .end local v1           #numListeners:I
    :cond_2d
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 584
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/animator/Animator;->playingState:I

    .line 585
    return-void
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueFrom()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueTo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method initAnimation()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    if-nez v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/google/android/music/animator/Animator;->intEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    :goto_c
    iput-object v0, p0, Lcom/google/android/music/animator/Animator;->mEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    .line 221
    :cond_e
    return-void

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/animator/Animator;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/google/android/music/animator/Animator;->doubleEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    goto :goto_c

    :cond_18
    sget-object v0, Lcom/google/android/music/animator/Animator;->floatEvaluator:Lcom/google/android/music/animator/TypeEvaluator;

    goto :goto_c
.end method

.method public setValueFrom(Ljava/lang/Object;)V
    .registers 2
    .parameter "valueFrom"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mValueFrom:Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public setValueTo(Ljava/lang/Object;)V
    .registers 2
    .parameter "valueTo"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/music/animator/Animator;->mValueTo:Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 567
    sget-object v0, Lcom/google/android/music/animator/Animator;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    if-nez v0, :cond_11

    .line 569
    new-instance v0, Lcom/google/android/music/animator/Animator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/animator/Animator$AnimationHandler;-><init>(Lcom/google/android/music/animator/Animator$1;)V

    sput-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    .line 573
    :cond_11
    sget-object v0, Lcom/google/android/music/animator/Animator;->animationHandler:Lcom/google/android/music/animator/Animator$AnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/animator/Animator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 574
    return-void
.end method
