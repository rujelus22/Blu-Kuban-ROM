.class public Lcom/google/android/street/ViewpointDetector;
.super Ljava/lang/Object;
.source "ViewpointDetector.java"


# instance fields
.field private currentPanoIsDisabled:Z

.field private haveOrientation:Z

.field private horizontalFovDegrees:F

.field private lastViewpointPanoId:Ljava/lang/String;

.field private lastViewpointPitch:F

.field private lastViewpointScale:F

.field private lastViewpointSceneType:I

.field private lastViewpointYaw:F

.field private lastViewpointZoom:F

.field private request:Lcom/google/android/street/UsageReportRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/street/UsageReportRequest;

    invoke-direct {v0}, Lcom/google/android/street/UsageReportRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/ViewpointDetector;->request:Lcom/google/android/street/UsageReportRequest;

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/street/ViewpointDetector;->horizontalFovDegrees:F

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/ViewpointDetector;->currentPanoIsDisabled:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPanoId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private addCounts(IIII)V
    .registers 7
    .parameter "sceneType"
    .parameter "panningCount"
    .parameter "zoomingCount"
    .parameter "navigationCount"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/street/ViewpointDetector;->currentPanoIsDisabled:Z

    if-eqz v0, :cond_5

    .line 96
    :cond_4
    :goto_4
    return-void

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/google/android/street/ViewpointDetector;->request:Lcom/google/android/street/UsageReportRequest;

    iget v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/street/UsageReportRequest;->addCounts(IIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Lcom/google/android/street/UsageReportRequest;

    invoke-direct {v0}, Lcom/google/android/street/UsageReportRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/ViewpointDetector;->request:Lcom/google/android/street/UsageReportRequest;

    .line 93
    iget-object v0, p0, Lcom/google/android/street/ViewpointDetector;->request:Lcom/google/android/street/UsageReportRequest;

    iget v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/street/UsageReportRequest;->addCounts(IIII)Z

    goto :goto_4
.end method

.method private pannedEnough(Lcom/google/android/street/UserOrientation;)Z
    .registers 10
    .parameter "newOrientation"

    .prologue
    const/4 v7, 0x0

    .line 120
    iget-boolean v4, p0, Lcom/google/android/street/ViewpointDetector;->haveOrientation:Z

    if-nez v4, :cond_7

    move v4, v7

    .line 135
    :goto_6
    return v4

    .line 123
    :cond_7
    iget v4, p0, Lcom/google/android/street/ViewpointDetector;->horizontalFovDegrees:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1a

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "FOV not set"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v4, v7

    .line 126
    goto :goto_6

    .line 128
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v2

    .line 129
    .local v2, newYawDegrees:F
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getPitchDegrees()F

    move-result v1

    .line 130
    .local v1, newPitchDegrees:F
    iget v4, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointYaw:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_30

    iget v4, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPitch:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_30

    move v4, v7

    .line 132
    goto :goto_6

    .line 134
    :cond_30
    invoke-virtual {p0, v2, v1}, Lcom/google/android/street/ViewpointDetector;->panAngleDegrees(FF)F

    move-result v3

    .line 135
    .local v3, panAngleRadians:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/google/android/street/ViewpointDetector;->horizontalFovDegrees:F

    iget v6, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointScale:F

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_42

    const/4 v4, 0x1

    goto :goto_6

    :cond_42
    move v4, v7

    goto :goto_6
.end method


# virtual methods
.method public checkConfig(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/UserOrientation;)V
    .registers 7
    .parameter "newPanoConfig"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    .line 54
    .local v0, newPanoId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPanoId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 63
    :goto_b
    return-void

    .line 58
    :cond_c
    iget-boolean v1, p1, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    iput-boolean v1, p0, Lcom/google/android/street/ViewpointDetector;->currentPanoIsDisabled:Z

    .line 59
    iput-object v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPanoId:Ljava/lang/String;

    .line 60
    iget v1, p1, Lcom/google/android/street/PanoramaConfig;->mSceneType:I

    iput v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/street/ViewpointDetector;->saveOrientation(Lcom/google/android/street/UserOrientation;)V

    .line 62
    iget v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/google/android/street/ViewpointDetector;->addCounts(IIII)V

    goto :goto_b
.end method

.method public checkOrientation(Lcom/google/android/street/UserOrientation;)V
    .registers 6
    .parameter "newOrientation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/google/android/street/ViewpointDetector;->haveOrientation:Z

    if-nez v0, :cond_a

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/street/ViewpointDetector;->saveOrientation(Lcom/google/android/street/UserOrientation;)V

    .line 77
    :cond_9
    :goto_9
    return-void

    .line 69
    :cond_a
    iget v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointZoom:F

    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f7fbe77

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    .line 71
    iget v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    invoke-direct {p0, v0, v2, v3, v2}, Lcom/google/android/street/ViewpointDetector;->addCounts(IIII)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/street/ViewpointDetector;->saveOrientation(Lcom/google/android/street/UserOrientation;)V

    goto :goto_9

    .line 73
    :cond_25
    invoke-direct {p0, p1}, Lcom/google/android/street/ViewpointDetector;->pannedEnough(Lcom/google/android/street/UserOrientation;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    iget v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointSceneType:I

    invoke-direct {p0, v0, v3, v2, v2}, Lcom/google/android/street/ViewpointDetector;->addCounts(IIII)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/street/ViewpointDetector;->saveOrientation(Lcom/google/android/street/UserOrientation;)V

    goto :goto_9
.end method

.method panAngleDegrees(FF)F
    .registers 7
    .parameter "newYawDegrees"
    .parameter "newPitchDegrees"

    .prologue
    .line 154
    iget v1, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPitch:F

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->sinDegrees(F)F

    move-result v1

    invoke-static {p2}, Lcom/google/android/street/StreetMath;->sinDegrees(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPitch:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->cosDegrees(F)F

    move-result v2

    invoke-static {p2}, Lcom/google/android/street/StreetMath;->cosDegrees(F)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointYaw:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->cosDegrees(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 160
    .local v0, radians:F
    invoke-static {v0}, Lcom/google/android/street/StreetMath;->radiansToDegrees(F)F

    move-result v1

    return v1
.end method

.method saveOrientation(Lcom/google/android/street/UserOrientation;)V
    .registers 3
    .parameter "newOrientation"

    .prologue
    .line 106
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/street/ViewpointDetector;->haveOrientation:Z

    .line 107
    iget-boolean v0, p0, Lcom/google/android/street/ViewpointDetector;->haveOrientation:Z

    if-eqz v0, :cond_21

    .line 108
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v0

    iput v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointYaw:F

    .line 109
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getPitchDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointPitch:F

    .line 110
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    iput v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointZoom:F

    .line 111
    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v0

    iput v0, p0, Lcom/google/android/street/ViewpointDetector;->lastViewpointScale:F

    .line 113
    :cond_21
    return-void

    .line 106
    :cond_22
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setHorizontalFovDegrees(F)V
    .registers 2
    .parameter "horizontalFovDegrees"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/street/ViewpointDetector;->horizontalFovDegrees:F

    .line 48
    return-void
.end method
