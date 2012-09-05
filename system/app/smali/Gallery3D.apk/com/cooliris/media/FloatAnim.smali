.class public final Lcom/cooliris/media/FloatAnim;
.super Ljava/lang/Object;
.source "FloatAnim.java"


# instance fields
.field private mDelta:F

.field private mDuration:F

.field private mStartTime:J

.field private mValue:F


# direct methods
.method public constructor <init>(F)V
    .registers 4
    .parameter "value"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    .line 33
    return-void
.end method

.method private getInterpolatedValue(J)F
    .registers 8
    .parameter "currentTime"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3e99999a

    .line 72
    iget-wide v1, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/cooliris/media/FloatAnim;->mDuration:F

    div-float v0, v1, v2

    .line 73
    .local v0, ratio:F
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1d

    .line 74
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    .line 75
    iget v1, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    .line 79
    :goto_1c
    return v1

    .line 77
    :cond_1d
    const v1, 0x40490fdb

    mul-float/2addr v1, v0

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float v0, v3, v1

    .line 79
    iget v1, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    sub-float v2, v4, v0

    iget v3, p0, Lcom/cooliris/media/FloatAnim;->mDelta:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1c
.end method


# virtual methods
.method public animateValue(FFJ)V
    .registers 6
    .parameter "value"
    .parameter "duration"
    .parameter "currentTime"

    .prologue
    .line 56
    invoke-virtual {p0, p3, p4}, Lcom/cooliris/media/FloatAnim;->getValue(J)F

    move-result v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/FloatAnim;->mDelta:F

    .line 57
    iput p1, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    .line 58
    iput p2, p0, Lcom/cooliris/media/FloatAnim;->mDuration:F

    .line 59
    iput-wide p3, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    .line 60
    return-void
.end method

.method public getTimeRemaining(J)F
    .registers 6
    .parameter "currentTime"

    .prologue
    .line 40
    iget-wide v1, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float v0, v1, v2

    .line 41
    .local v0, duration:F
    iget v1, p0, Lcom/cooliris/media/FloatAnim;->mDuration:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_14

    .line 42
    iget v1, p0, Lcom/cooliris/media/FloatAnim;->mDuration:F

    sub-float/2addr v1, v0

    .line 44
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getValue(J)F
    .registers 7
    .parameter "currentTime"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 49
    iget v0, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    .line 51
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/FloatAnim;->getInterpolatedValue(J)F

    move-result v0

    goto :goto_a
.end method

.method public isAnimating()Z
    .registers 5

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setValue(F)V
    .registers 4
    .parameter "value"

    .prologue
    .line 63
    iput p1, p0, Lcom/cooliris/media/FloatAnim;->mValue:F

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cooliris/media/FloatAnim;->mStartTime:J

    .line 65
    return-void
.end method
