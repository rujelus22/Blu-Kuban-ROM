.class public Lcom/samsung/stri/ui3dglobe/MotionDetector;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/MotionDetector$MotionListener;
    }
.end annotation


# static fields
.field public static STATE_MOVE:I

.field public static STATE_NONE:I

.field public static STATE_TILT:I


# instance fields
.field public mBaseTilt:I

.field public mBaseX:I

.field public mBaseY:I

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/hardware/motion/MRListener;

.field public mMotionCallCount:J

.field public mMotionCenterAdjust:Z

.field public mMotionDegreeX:I

.field public mMotionDegreeY:I

.field private mMotionPanningMove:I

.field private mMotionPanningUse:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMotionTiltMove:F

.field private mMotionTiltUse:Z

.field private mMotionUse:Z

.field public mState:I

.field public mTiltAdjustDegree:I

.field public mZoomoutStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_MOVE:I

    .line 77
    const/4 v0, 0x2

    sput v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_TILT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/stri/ui3dglobe/MotionDetector$MotionListener;)V
    .registers 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 79
    sget v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 81
    iput-wide v3, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mZoomoutStart:J

    .line 83
    iput-wide v3, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionCallCount:J

    .line 85
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionCenterAdjust:Z

    .line 91
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    .line 93
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 94
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 96
    iput-wide v3, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mZoomoutStart:J

    .line 97
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 98
    return-void
.end method


# virtual methods
.method public getMotionPanningMove()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionPanningMove:I

    return v0
.end method

.method public getMotionPanningUse()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionPanningUse:Z

    return v0
.end method

.method public getMotionTiltMove()F
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionTiltMove:F

    return v0
.end method

.method public getMotionTiltUse()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionTiltUse:Z

    return v0
.end method

.method public isMotionPanningUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionPanningUse:Z

    .line 173
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionPanningUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 171
    goto :goto_10
.end method

.method public isMotionTiltUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionTiltUse:Z

    .line 159
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionTiltUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 157
    goto :goto_10
.end method

.method public isMotionUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionUse:Z

    .line 149
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 147
    goto :goto_10
.end method

.method public registerMotionListener()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->setMotionTiltMove(I)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->isMotionUse()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->isMotionTiltUse()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->isMotionPanningUse()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 107
    :cond_25
    const-string v0, "MotionDetector"

    const-string v1, "Motion register skip!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2c
    :goto_2c
    return-void

    .line 111
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->isMotionPanningUse()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 112
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->setMotionPanningMove(I)V

    .line 116
    :cond_42
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mBaseX:I

    .line 117
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mBaseY:I

    .line 118
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mBaseTilt:I

    .line 120
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionDegreeX:I

    .line 121
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionDegreeY:I

    .line 122
    iput-wide v4, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mZoomoutStart:J

    .line 123
    iput-wide v4, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionCallCount:J

    .line 124
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionCenterAdjust:Z

    .line 127
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2c

    .line 128
    const-string v0, "MotionDetector"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    goto :goto_2c
.end method

.method public setMotionPanningMove(I)V
    .registers 2
    .parameter "mMotionPanningMove"

    .prologue
    .line 197
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .end local p1
    :cond_3
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionPanningMove:I

    .line 198
    return-void
.end method

.method public setMotionTiltMove(I)V
    .registers 3
    .parameter "mMotionTiltMove"

    .prologue
    .line 189
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionTiltMove:F

    .line 190
    return-void
.end method

.method public unregisterMotionListener()V
    .registers 3

    .prologue
    .line 140
    const-string v0, "MotionDetector"

    const-string v1, "unregisterMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_16

    .line 142
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 144
    :cond_16
    return-void
.end method
