.class public Lcom/google/android/apps/unveil/env/MorphingRect;
.super Landroid/graphics/RectF;
.source "MorphingRect.java"


# instance fields
.field private bottomDelta:F

.field private leftDelta:F

.field logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final morphDistance:F

.field private final morphTime:F

.field private rightDelta:F

.field private final stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private topDelta:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FF)V
    .registers 5
    .parameter "rectF"
    .parameter "morphDistance"
    .parameter "morphTime"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 14
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 36
    iput p2, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->morphDistance:F

    .line 37
    iput p3, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->morphTime:F

    .line 38
    return-void
.end method

.method private interpolate(FF)F
    .registers 8
    .parameter "delta"
    .parameter "secondsPassed"

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 88
    .local v0, absDelta:F
    const v3, 0x3c23d70a

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_c

    .line 96
    .end local p1
    :goto_b
    return p1

    .line 92
    .restart local p1
    :cond_c
    div-float v2, p1, v0

    .line 94
    .local v2, polarity:F
    iget v3, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->morphTime:F

    div-float v3, p2, v3

    iget v4, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->morphDistance:F

    mul-float v1, v3, v4

    .line 96
    .local v1, maxMovement:F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float p1, v2, v3

    goto :goto_b
.end method


# virtual methods
.method public applyBlended(FFFF)V
    .registers 6
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->leftDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->leftDelta:F

    .line 55
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->topDelta:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->topDelta:F

    .line 56
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->rightDelta:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->rightDelta:F

    .line 57
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottomDelta:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottomDelta:F

    .line 58
    return-void
.end method

.method public applyInstantly(FFFF)V
    .registers 6
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->left:F

    .line 47
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->top:F

    .line 48
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->right:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->right:F

    .line 49
    iget v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottom:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottom:F

    .line 50
    return-void
.end method

.method public getArea()F
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/MorphingRect;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/MorphingRect;->height()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public morph()V
    .registers 8

    .prologue
    .line 61
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float v4, v5, v6

    .line 62
    .local v4, secondsPassed:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 64
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->leftDelta:F

    invoke-direct {p0, v5, v4}, Lcom/google/android/apps/unveil/env/MorphingRect;->interpolate(FF)F

    move-result v1

    .line 65
    .local v1, dLeft:F
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->leftDelta:F

    sub-float/2addr v5, v1

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->leftDelta:F

    .line 66
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->left:F

    add-float/2addr v5, v1

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->left:F

    .line 68
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->topDelta:F

    invoke-direct {p0, v5, v4}, Lcom/google/android/apps/unveil/env/MorphingRect;->interpolate(FF)F

    move-result v3

    .line 69
    .local v3, dTop:F
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->topDelta:F

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->topDelta:F

    .line 70
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->top:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->top:F

    .line 72
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->rightDelta:F

    invoke-direct {p0, v5, v4}, Lcom/google/android/apps/unveil/env/MorphingRect;->interpolate(FF)F

    move-result v2

    .line 73
    .local v2, dRight:F
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->rightDelta:F

    sub-float/2addr v5, v2

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->rightDelta:F

    .line 74
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->right:F

    add-float/2addr v5, v2

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->right:F

    .line 76
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottomDelta:F

    invoke-direct {p0, v5, v4}, Lcom/google/android/apps/unveil/env/MorphingRect;->interpolate(FF)F

    move-result v0

    .line 77
    .local v0, dBottom:F
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottomDelta:F

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottomDelta:F

    .line 78
    iget v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottom:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/google/android/apps/unveil/env/MorphingRect;->bottom:F

    .line 82
    return-void
.end method
