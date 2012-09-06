.class public Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwoPointerGestureDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$1;,
        Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

.field private mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

.field private mStartTime:J

.field private mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 33
    sget-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 34
    new-array v0, v4, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    .line 35
    new-array v0, v4, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    .line 40
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 41
    return-void
.end method

.method private verifyPointerDistance([Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 8
    .parameter "pointers"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    aget-object v4, p1, v3

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v5, p1, v2

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 45
    .local v0, xdelta:F
    aget-object v4, p1, v3

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v5, p1, v2

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 47
    .local v1, ydelta:F
    const/high16 v4, 0x42c8

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_29

    const/high16 v4, 0x437a

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_29

    :goto_28
    return v2

    :cond_29
    move v2, v3

    goto :goto_28
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v12, 0x5

    const/4 v9, 0x2

    const/high16 v11, 0x447a

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 57
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 59
    .local v3, pointerCount:I
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$1;->$SwitchMap$com$google$android$apps$plus$views$TwoPointerGestureDetector$TwoPointerSwipeState:[I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_104

    .line 143
    :cond_1b
    :goto_1b
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 61
    :pswitch_22
    if-nez v0, :cond_1b

    if-ne v3, v8, :cond_1b

    .line 63
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 68
    :pswitch_2b
    if-ne v0, v12, :cond_5e

    .line 69
    if-ne v3, v9, :cond_59

    .line 71
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->TWO_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 72
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v10

    invoke-virtual {p2, v10, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 73
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v8

    invoke-virtual {p2, v8, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mStartTime:J

    .line 75
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->verifyPointerDistance([Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 76
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->TWO_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 78
    :cond_54
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 82
    :cond_59
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 84
    :cond_5e
    if-eq v0, v8, :cond_63

    const/4 v6, 0x6

    if-ne v0, v6, :cond_1b

    .line 87
    :cond_63
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 92
    :pswitch_68
    if-eq v3, v9, :cond_6f

    .line 94
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 95
    :cond_6f
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1b

    .line 97
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v10

    invoke-virtual {p2, v10, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 98
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v8

    invoke-virtual {p2, v8, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mEndTime:J

    .line 100
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->verifyPointerDistance([Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 102
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_UP:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 105
    :cond_93
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto :goto_1b

    .line 111
    :pswitch_98
    if-eq v3, v8, :cond_a0

    .line 113
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto/16 :goto_1b

    .line 114
    :cond_a0
    if-eq v0, v12, :cond_a4

    if-nez v0, :cond_aa

    .line 117
    :cond_a4
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto/16 :goto_1b

    .line 118
    :cond_aa
    if-ne v0, v8, :cond_1b

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mEndTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-lez v6, :cond_bf

    .line 122
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    goto/16 :goto_1b

    .line 124
    :cond_bf
    sget-object v6, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    iput-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mTwoSwipeState:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 127
    iget-wide v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mEndTime:J

    iget-wide v8, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mStartTime:J

    sub-long v1, v6, v8

    .line 128
    .local v1, durationMs:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_1b

    const-wide/16 v6, 0x1f4

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1b

    .line 130
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v7, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v11

    long-to-float v7, v1

    div-float v4, v6, v7

    .line 132
    .local v4, xVelocity:F
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v7, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v11

    long-to-float v7, v1

    div-float v5, v6, v7

    .line 134
    .local v5, yVelocity:F
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerStart:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->mPointerEnd:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v10

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->onTwoPointerSwipe(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;FF)Z

    goto/16 :goto_1b

    .line 59
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2b
        :pswitch_68
        :pswitch_98
    .end packed-switch
.end method

.method public onTwoPointerSwipe(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;FF)Z
    .registers 6
    .parameter "pointerStart"
    .parameter "pointerEnd"
    .parameter "xVelocity"
    .parameter "yVelocity"

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method
