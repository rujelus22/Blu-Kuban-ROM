.class Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeStateMachine"
.end annotation


# instance fields
.field private mAutoFade:Z

.field private mFadeInFactor:F

.field private mFrameTime:J

.field private mNextStateTime:J

.field private mState:I

.field private mTargetFadeInFactor:F


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "autoFade"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    .line 51
    return-void
.end method


# virtual methods
.method public animate(JF)Z
    .registers 11
    .parameter "frameTime"
    .parameter "dt"

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iput-wide p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    .line 88
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    iget v3, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    invoke-static {v2, v3, p3}, Lcom/google/android/opengl/glview/FloatUtils;->animate(FFF)F

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    .line 90
    iget-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    iget-wide v4, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mNextStateTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 91
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v2, v1, :cond_34

    .line 92
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    if-eqz v2, :cond_22

    .line 93
    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 99
    :cond_22
    :goto_22
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    iget v3, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-eqz v2, :cond_33

    :cond_32
    move v0, v1

    :cond_33
    return v0

    .line 95
    :cond_34
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v2, v6, :cond_22

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    goto :goto_22
.end method

.method public getFadeInFactor()F
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFadeInFactor:F

    return v0
.end method

.method public setAutoFade(Z)V
    .registers 2
    .parameter "autoFade"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mAutoFade:Z

    .line 55
    return-void
.end method

.method public setState(I)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 58
    iget v3, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-ne v3, v0, :cond_1e

    move v1, v0

    .line 59
    .local v1, oldVisible:Z
    :goto_7
    if-ne p1, v0, :cond_20

    .line 60
    .local v0, newVisible:Z
    :goto_9
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    .line 61
    if-eqz p1, :cond_14

    .line 62
    iget-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mFrameTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mNextStateTime:J

    .line 64
    :cond_14
    if-eq v1, v0, :cond_1d

    .line 65
    if-eqz v0, :cond_22

    const/high16 v2, 0x3f80

    :goto_1a
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setTextureFadeInFactor(F)V

    .line 67
    :cond_1d
    return-void

    .end local v0           #newVisible:Z
    .end local v1           #oldVisible:Z
    :cond_1e
    move v1, v2

    .line 58
    goto :goto_7

    .restart local v1       #oldVisible:Z
    :cond_20
    move v0, v2

    .line 59
    goto :goto_9

    .line 65
    .restart local v0       #newVisible:Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public setTextureFadeInFactor(F)V
    .registers 2
    .parameter "fadeInFactor"

    .prologue
    .line 70
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mTargetFadeInFactor:F

    .line 71
    return-void
.end method

.method public visible()Z
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
