.class public Lcom/sec/android/app/twlauncher/GLAnim;
.super Ljava/lang/Object;
.source "GLAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;
    }
.end annotation


# instance fields
.field private mDebug:Z

.field private mDelta:Landroid/graphics/PointF;

.field private mDst:Landroid/graphics/PointF;

.field private mDuration:I

.field private mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

.field private mProgress:F

.field private mSrc:Landroid/graphics/PointF;

.field private mStart:Landroid/graphics/PointF;

.field private mStartTime:J

.field private mState:I

.field private mTransView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mViewVisibility:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    .line 43
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mViewVisibility:I

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 4
    .parameter "interpolator"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    .line 43
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mViewVisibility:I

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    return-void
.end method

.method private dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 5
    .parameter "aDrawHndlr"
    .parameter "aCanvas"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v0, p2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mViewVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    return-void
.end method


# virtual methods
.method drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 14
    .parameter "aCanvas"

    .prologue
    const/high16 v11, 0x3f80

    .line 100
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    packed-switch v7, :pswitch_data_fe

    .line 172
    :cond_7
    :goto_7
    const/4 v7, 0x1

    return v7

    .line 102
    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStartTime:J

    .line 103
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 104
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_1d

    .line 105
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 107
    :cond_1d
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    if-eqz v7, :cond_26

    .line 108
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-interface {v7, p0}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V

    .line 111
    :cond_26
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    if-eqz v7, :cond_79

    .line 112
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->getTransRef(Landroid/view/View;)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v3

    .line 113
    .local v3, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    if-eqz v3, :cond_79

    .line 114
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 115
    .local v4, transRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/TransRef;->getAbsRefRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 116
    .local v2, origRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 118
    .local v0, delta:Landroid/graphics/Point;
    iget v7, v2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 126
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 127
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->y:F

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 129
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    .end local v0           #delta:Landroid/graphics/Point;
    .end local v2           #origRect:Landroid/graphics/Rect;
    .end local v3           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    .end local v4           #transRect:Landroid/graphics/Rect;
    :cond_79
    :pswitch_79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStartTime:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDuration:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 139
    iget v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    cmpl-float v7, v7, v11

    if-ltz v7, :cond_c8

    .line 140
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 141
    iput v11, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 142
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    .line 146
    .local v1, normalized:F
    :goto_94
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v1

    add-float v5, v7, v8

    .line 147
    .local v5, valueX:F
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v1

    add-float v6, v7, v8

    .line 149
    .local v6, valueY:F
    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 150
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-direct {p0, v7, p1}, Lcom/sec/android/app/twlauncher/GLAnim;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 151
    neg-float v7, v5

    neg-float v8, v6

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 152
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDebug:Z

    if-eqz v7, :cond_7

    .line 153
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    if-nez v7, :cond_d1

    .line 154
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    goto/16 :goto_7

    .line 144
    .end local v1           #normalized:F
    .end local v5           #valueX:F
    .end local v6           #valueY:F
    :cond_c8
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1       #normalized:F
    goto :goto_94

    .line 156
    .restart local v5       #valueX:F
    .restart local v6       #valueY:F
    :cond_d1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 157
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-direct {p0, v7, p1}, Lcom/sec/android/app/twlauncher/GLAnim;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 158
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    neg-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto/16 :goto_7

    .line 164
    .end local v1           #normalized:F
    .end local v5           #valueX:F
    .end local v6           #valueY:F
    :pswitch_f0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    if-eqz v7, :cond_f9

    .line 165
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-interface {v7, p0}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    .line 167
    :cond_f9
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    goto/16 :goto_7

    .line 100
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_9
        :pswitch_79
        :pswitch_f0
    .end packed-switch
.end method

.method public forceEnd()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 190
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    if-eq v0, v1, :cond_10

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    if-eqz v0, :cond_e

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    invoke-interface {v0, p0}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    .line 194
    :cond_e
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 196
    :cond_10
    return-void
.end method

.method public getDst()Landroid/graphics/PointF;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mProgress:F

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setDst(Landroid/graphics/PointF;)V
    .registers 6
    .parameter "aPt"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDelta:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDst:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 97
    return-void
.end method

.method public setLstnr(Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V
    .registers 2
    .parameter "aLstnr"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;

    .line 60
    return-void
.end method

.method public setParams(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .registers 8
    .parameter "aView"
    .parameter "aGLDrawHndlr"
    .parameter "aTransView"
    .parameter "aSrc"
    .parameter "aDst"
    .parameter "aDuration"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mViewVisibility:I

    .line 70
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mGLDrawHndlr:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mSrc:Landroid/graphics/PointF;

    invoke-virtual {v0, p4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 72
    invoke-virtual {p0, p5}, Lcom/sec/android/app/twlauncher/GLAnim;->setDst(Landroid/graphics/PointF;)V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mState:I

    .line 74
    iput p6, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mDuration:I

    .line 75
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/GLAnim;->mTransView:Landroid/view/View;

    .line 76
    return-void
.end method
