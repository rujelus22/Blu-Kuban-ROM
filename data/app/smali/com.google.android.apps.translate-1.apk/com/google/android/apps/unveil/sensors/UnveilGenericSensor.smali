.class public Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;
.super Lcom/google/android/apps/unveil/sensors/UnveilSensor;
.source "UnveilGenericSensor.java"


# instance fields
.field private values:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[F
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    return-object v0
.end method

.method set(JI[F)V
    .registers 10
    .parameter "currentReadingNanos"
    .parameter "accuracy"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    iput-wide p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->currentReadingNanos:J

    .line 18
    iput p3, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->accuracy:I

    .line 20
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->accuracy:I

    if-eqz v0, :cond_29

    .line 21
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    if-nez v0, :cond_14

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    .line 24
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    aget v1, p4, v2

    aput v1, v0, v2

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    aget v1, p4, v3

    aput v1, v0, v3

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->values:[F

    aget v1, p4, v4

    aput v1, v0, v4

    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->triggerOnSet()V

    .line 29
    :cond_29
    return-void
.end method
