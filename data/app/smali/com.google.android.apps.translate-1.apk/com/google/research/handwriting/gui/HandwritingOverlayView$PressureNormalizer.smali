.class public Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;
.super Ljava/lang/Object;
.source "HandwritingOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/HandwritingOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PressureNormalizer"
.end annotation


# static fields
.field private static final ALPHA_OBSERVED:F = 0.4f

.field private static final DOCUMENTED_MAX_PRESSURE:F = 1.0f

.field private static final DOCUMENTED_MIN_PRESSURE:F = 0.0f

.field private static final MAX_DELTA:F = 0.1f


# instance fields
.field private deltaRadius:F

.field private lastNormalizedPressure:F

.field private maxPressure:F

.field private maxRadius:F

.field private minPressure:F

.field private minRadius:F

.field private observedMaxPressure:F

.field private observedMinPressure:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMinPressure:F

    .line 104
    iput v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMaxPressure:F

    .line 120
    iput v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minPressure:F

    .line 121
    iput v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxPressure:F

    .line 127
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    .line 139
    iput v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    .line 140
    iput v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    .line 142
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->deltaRadius:F

    return-void
.end method

.method private getNormalizedPressure(F)F
    .registers 5
    .parameter "p"

    .prologue
    .line 189
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMinPressure:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 190
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMinPressure:F

    .line 191
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->updateUsedExtrema()V

    .line 193
    :cond_b
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMaxPressure:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_16

    .line 194
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMaxPressure:F

    .line 195
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->updateUsedExtrema()V

    .line 197
    :cond_16
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minPressure:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxPressure:F

    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minPressure:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private getNormalizedSmoothedPressure(F)F
    .registers 7
    .parameter "p"

    .prologue
    const v4, 0x3dcccccd

    .line 210
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getNormalizedPressure(F)F

    move-result p1

    .line 211
    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 212
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    move v1, p1

    .line 221
    .end local p1
    .local v1, p:F
    :goto_11
    return v1

    .line 216
    .end local v1           #p:F
    .restart local p1
    :cond_12
    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    sub-float v0, v2, p1

    .line 217
    .local v0, delta:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_27

    .line 218
    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float p1, v2, v3

    .line 220
    :cond_27
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    move v1, p1

    .line 221
    .end local p1
    .restart local v1       #p:F
    goto :goto_11
.end method

.method private updateUsedExtrema()V
    .registers 4

    .prologue
    const v2, 0x3ecccccd

    .line 176
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMinPressure:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minPressure:F

    .line 178
    const v0, 0x3f19999a

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->observedMaxPressure:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxPressure:F

    .line 180
    return-void
.end method


# virtual methods
.method public defaultStrokeWidth()F
    .registers 3

    .prologue
    .line 257
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getMaxRadius()F
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    return v0
.end method

.method public getMinRadius()F
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    return v0
.end method

.method public getRadius(F)F
    .registers 5
    .parameter "p"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getNormalizedSmoothedPressure(F)F

    move-result p1

    .line 234
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    mul-float v1, p1, p1

    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->deltaRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getStrokeWidth(F)F
    .registers 6
    .parameter "p"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getNormalizedSmoothedPressure(F)F

    move-result p1

    .line 247
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    mul-float v2, p1, p1

    iget v3, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->deltaRadius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public resetSmoothing()V
    .registers 2

    .prologue
    .line 149
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->lastNormalizedPressure:F

    .line 150
    return-void
.end method

.method public setMaxRadius(F)V
    .registers 3
    .parameter "maxRadius"

    .prologue
    .line 157
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    .line 158
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->deltaRadius:F

    .line 159
    return-void
.end method

.method public setMinRadius(F)V
    .registers 3
    .parameter "minRadius"

    .prologue
    .line 166
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->minRadius:F

    .line 167
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->maxRadius:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->deltaRadius:F

    .line 168
    return-void
.end method
