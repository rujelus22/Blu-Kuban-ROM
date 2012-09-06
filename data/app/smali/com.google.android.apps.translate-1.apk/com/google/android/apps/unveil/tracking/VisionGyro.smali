.class public Lcom/google/android/apps/unveil/tracking/VisionGyro;
.super Ljava/lang/Object;
.source "VisionGyro.java"


# instance fields
.field private nativeVisionGyro:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "clientvision"

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/ResourceUtils;->loadNativeLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->constructNative()V

    .line 8
    return-void
.end method


# virtual methods
.method protected native constructNative()V
.end method

.method public declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 11
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->destroyNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 12
    monitor-exit p0

    return-void

    .line 11
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native destroyNative()V
.end method

.method public declared-synchronized getLastTransform(Z)[F
    .registers 4
    .parameter "centerCoordinateSystem"

    .prologue
    .line 23
    monitor-enter p0

    const/16 v1, 0x9

    :try_start_3
    new-array v0, v1, [F

    .line 24
    .local v0, matrix:[F
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->obtainVgTransformNative([FZ)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 25
    monitor-exit p0

    return-object v0

    .line 23
    .end local v0           #matrix:[F
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized nextFrame([BII)[F
    .registers 6
    .parameter "frameData"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 15
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->nextFrameNative([BII)V

    .line 17
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 18
    .local v0, matrix:[F
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->obtainVgTransformNative([FZ)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 19
    monitor-exit p0

    return-object v0

    .line 15
    .end local v0           #matrix:[F
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected native nextFrameNative([BII)V
.end method

.method protected native obtainVgTransformNative([FZ)V
.end method
