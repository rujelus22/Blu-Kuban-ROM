.class public Lcom/google/android/common/gesture/ScaleEvent;
.super Ljava/lang/Object;
.source "ScaleEvent.java"


# instance fields
.field private final detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

.field private final eventType:I


# direct methods
.method public constructor <init>(ILcom/google/android/common/gesture/ScaleGestureDetector;)V
    .registers 3
    .parameter "eventType"
    .parameter "detector"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/common/gesture/ScaleEvent;->eventType:I

    .line 39
    iput-object p2, p0, Lcom/google/android/common/gesture/ScaleEvent;->detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    .line 40
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleEvent;->detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    return v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleEvent;->detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getFocusX()F

    move-result v0

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleEvent;->detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getFocusY()F

    move-result v0

    return v0
.end method

.method public getPreviousSpan()F
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleEvent;->detector:Lcom/google/android/common/gesture/ScaleGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    return v0
.end method

.method public isScaleBegin()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 46
    iget v0, p0, Lcom/google/android/common/gesture/ScaleEvent;->eventType:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
