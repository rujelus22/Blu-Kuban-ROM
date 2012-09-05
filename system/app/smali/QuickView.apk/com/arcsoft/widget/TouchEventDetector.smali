.class public Lcom/arcsoft/widget/TouchEventDetector;
.super Ljava/lang/Object;
.source "TouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurEvent:Landroid/view/MotionEvent;

.field private mCurPressure:F

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

.field private mMultiTouch:Z

.field private mMutiTouchDown:Z

.field private mPreEvent:Landroid/view/MotionEvent;

.field private mPrePressure:F

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mMutiTouchDown:Z

    .line 41
    iput-object p1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    .line 42
    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 201
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 202
    iput-object v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 205
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 206
    iput-object v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    .line 208
    :cond_17
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "curr"

    .prologue
    const/high16 v1, -0x4080

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 181
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 184
    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurEvent:Landroid/view/MotionEvent;

    .line 186
    iput v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrLen:F

    .line 187
    iput v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevLen:F

    .line 188
    iput v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    .line 190
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevFingerDiffX:F

    .line 191
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevFingerDiffY:F

    .line 192
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffX:F

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffY:F

    .line 195
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurPressure:F

    .line 196
    iget-object v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrePressure:F

    .line 197
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterY:I

    return v0
.end method

.method public getCurrentSpan()F
    .registers 5

    .prologue
    .line 210
    iget v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 211
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffX:F

    .line 212
    .local v0, cvx:F
    iget v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffY:F

    .line 213
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrLen:F

    .line 215
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_19
    iget v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrLen:F

    return v2
.end method

.method public getPreviousSpan()F
    .registers 5

    .prologue
    .line 218
    iget v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 219
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevFingerDiffX:F

    .line 220
    .local v0, pvx:F
    iget v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevFingerDiffY:F

    .line 221
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevLen:F

    .line 223
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_19
    iget v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrevLen:F

    return v2
.end method

.method public getRotateDirection()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, curDirection:I
    iget v1, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffX:F

    .line 156
    .local v1, diffX:F
    iget v3, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurrFingerDiffY:F

    neg-float v2, v3

    .line 157
    .local v2, diffY:F
    cmpl-float v3, v1, v7

    if-nez v3, :cond_15

    .line 158
    cmpl-float v3, v2, v7

    if-lez v3, :cond_12

    .line 159
    const/16 v0, 0x5a

    .line 176
    :goto_11
    return v0

    .line 161
    :cond_12
    const/16 v0, 0x10e

    goto :goto_11

    .line 163
    :cond_15
    cmpl-float v3, v2, v7

    if-nez v3, :cond_22

    .line 164
    cmpl-float v3, v1, v7

    if-lez v3, :cond_1f

    .line 165
    const/4 v0, 0x0

    goto :goto_11

    .line 167
    :cond_1f
    const/16 v0, 0xb4

    goto :goto_11

    .line 170
    :cond_22
    div-float v3, v2, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 171
    cmpl-float v3, v1, v7

    if-lez v3, :cond_3f

    .line 172
    add-int/lit16 v3, v0, 0x168

    rem-int/lit16 v0, v3, 0x168

    goto :goto_11

    .line 174
    :cond_3f
    add-int/lit16 v0, v0, 0xb4

    goto :goto_11
.end method

.method public getZoomScale()F
    .registers 5

    .prologue
    const v3, 0x3f99999a

    const v2, 0x3f4ccccd

    .line 143
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    .line 144
    invoke-virtual {p0}, Lcom/arcsoft/widget/TouchEventDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/arcsoft/widget/TouchEventDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    .line 145
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_24

    .line 146
    iput v3, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    .line 150
    :cond_21
    :goto_21
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    return v0

    .line 147
    :cond_24
    iget v0, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_21

    .line 148
    iput v2, p0, Lcom/arcsoft/widget/TouchEventDetector;->mScaleFactor:F

    goto :goto_21
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/high16 v9, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 46
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 47
    .local v1, pointCount:I
    if-ge v1, v8, :cond_45

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 49
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 51
    .local v4, y:I
    iget-boolean v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mMutiTouchDown:Z

    if-nez v7, :cond_35

    .line 52
    if-nez v0, :cond_25

    .line 53
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, v3, v4}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->onSingleKeyDown(II)V

    .line 133
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_24
    :goto_24
    return v5

    .line 57
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_25
    if-ne v5, v0, :cond_2d

    .line 58
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, v3, v4}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->onSingleKeyUp(II)V

    goto :goto_24

    .line 62
    :cond_2d
    if-ne v8, v0, :cond_43

    .line 63
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, v3, v4}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->onSingleKeyMove(II)V

    goto :goto_24

    .line 69
    :cond_35
    if-eqz v0, :cond_24

    .line 73
    if-ne v5, v0, :cond_41

    .line 74
    iput-boolean v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mMutiTouchDown:Z

    .line 75
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, v3, v4}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->onSingleKeyUp(II)V

    goto :goto_24

    .line 79
    :cond_41
    if-eq v8, v0, :cond_24

    :cond_43
    move v5, v6

    .line 133
    goto :goto_24

    .line 89
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_45
    sparse-switch v0, :sswitch_data_e0

    goto :goto_24

    .line 112
    :sswitch_49
    iget-object v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    if-nez v7, :cond_a2

    move v5, v6

    .line 113
    goto :goto_24

    .line 92
    :sswitch_4f
    invoke-direct {p0}, Lcom/arcsoft/widget/TouchEventDetector;->reset()V

    .line 93
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    .line 94
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/TouchEventDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 95
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterX:I

    .line 96
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterY:I

    .line 97
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, p0}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->OnMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z

    .line 98
    iput-boolean v5, p0, Lcom/arcsoft/widget/TouchEventDetector;->mMutiTouchDown:Z

    goto :goto_24

    .line 104
    :sswitch_7d
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterX:I

    .line 105
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterY:I

    .line 106
    iget-object v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v7, p0}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->OnMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V

    .line 107
    iput-boolean v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mMutiTouchDown:Z

    .line 108
    invoke-direct {p0}, Lcom/arcsoft/widget/TouchEventDetector;->reset()V

    goto :goto_24

    .line 114
    :cond_a2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterX:I

    .line 115
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCenterY:I

    .line 116
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/TouchEventDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 118
    iget v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mCurPressure:F

    iget v7, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPrePressure:F

    div-float/2addr v6, v7

    const v7, 0x3f2b851f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_24

    .line 119
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mListener:Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;

    invoke-interface {v6, p0}, Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;->OnMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z

    move-result v2

    .line 122
    .local v2, updatePrevious:Z
    if-eqz v2, :cond_24

    .line 123
    iget-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 124
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/arcsoft/widget/TouchEventDetector;->mPreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_24

    .line 89
    :sswitch_data_e0
    .sparse-switch
        0x2 -> :sswitch_49
        0x3 -> :sswitch_7d
        0x5 -> :sswitch_4f
        0x6 -> :sswitch_7d
        0x105 -> :sswitch_4f
        0x106 -> :sswitch_7d
    .end sparse-switch
.end method
