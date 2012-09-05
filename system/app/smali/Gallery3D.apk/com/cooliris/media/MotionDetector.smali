.class public Lcom/cooliris/media/MotionDetector;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MotionDetector$MotionListener;
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

.field private mMotionDialogOff:Z

.field public mMotionPanningMove:I

.field public mMotionPanningUse:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public mMotionTiltMove:F

.field public mMotionTiltUse:Z

.field private mMotionUse:Z

.field public mState:I

.field public mTiltAdjustDegree:I

.field public mZoomoutStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/cooliris/media/MotionDetector;->STATE_MOVE:I

    .line 80
    const/4 v0, 0x2

    sput v0, Lcom/cooliris/media/MotionDetector;->STATE_TILT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/MotionDetector$MotionListener;)V
    .registers 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 82
    sget v0, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    iput v0, p0, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 84
    iput-wide v3, p0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    .line 86
    iput-wide v3, p0, Lcom/cooliris/media/MotionDetector;->mMotionCallCount:J

    .line 88
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionCenterAdjust:Z

    .line 94
    iput-object p1, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/cooliris/media/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    .line 96
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 97
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 99
    iput-wide v3, p0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    .line 100
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 101
    return-void
.end method


# virtual methods
.method public isMotionDialogOff()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionDialogOff:Z

    return v0
.end method

.method public isMotionPanningUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_g_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionPanningUse:Z

    .line 180
    iget-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionPanningUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 178
    goto :goto_10
.end method

.method public isMotionTiltUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionTiltUse:Z

    .line 166
    iget-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionTiltUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 164
    goto :goto_10
.end method

.method public isMotionUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_10
    iput-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionUse:Z

    .line 156
    iget-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionUse:Z

    return v0

    :cond_15
    move v0, v1

    .line 154
    goto :goto_10
.end method

.method public registerMotionListener(II)V
    .registers 9
    .parameter "mTouchPosX"
    .parameter "mTouchPosY"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    iget-object v0, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v1, Lcom/cooliris/media/Gallery$MotionType;->MOTION_PREVIEW:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v0, v1, :cond_31

    .line 107
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    iget v0, v0, Lcom/cooliris/media/Gallery;->mMotionPreviewMove:I

    invoke-virtual {p0, v0}, Lcom/cooliris/media/MotionDetector;->setMotionTiltMove(I)V

    .line 113
    :goto_17
    invoke-virtual {p0}, Lcom/cooliris/media/MotionDetector;->isMotionUse()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/cooliris/media/MotionDetector;->isMotionTiltUse()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/cooliris/media/MotionDetector;->isMotionPanningUse()Z

    move-result v0

    if-nez v0, :cond_41

    .line 114
    :cond_29
    const-string v0, "MotionDetector"

    const-string v1, "Motion register skip!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_30
    :goto_30
    return-void

    .line 109
    :cond_31
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/MotionDetector;->setMotionTiltMove(I)V

    goto :goto_17

    .line 118
    :cond_41
    invoke-virtual {p0}, Lcom/cooliris/media/MotionDetector;->isMotionPanningUse()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 119
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_g_panning_sensitivity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/MotionDetector;->setMotionPanningMove(I)V

    .line 123
    :cond_56
    iput p1, p0, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    .line 124
    iput p2, p0, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    .line 125
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mBaseTilt:I

    .line 127
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mMotionDegreeX:I

    .line 128
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mMotionDegreeY:I

    .line 129
    iput-wide v4, p0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    .line 130
    iput-wide v4, p0, Lcom/cooliris/media/MotionDetector;->mMotionCallCount:J

    .line 131
    iput v2, p0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionCenterAdjust:Z

    .line 134
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_30

    .line 135
    const-string v0, "MotionDetector"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/cooliris/media/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    goto :goto_30
.end method

.method public setMotionDialogOff(Z)V
    .registers 2
    .parameter "mMotionDialogOff"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/cooliris/media/MotionDetector;->mMotionDialogOff:Z

    .line 213
    return-void
.end method

.method public setMotionPanningMove(I)V
    .registers 2
    .parameter "mMotionPanningMove"

    .prologue
    .line 204
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .end local p1
    :cond_3
    iput p1, p0, Lcom/cooliris/media/MotionDetector;->mMotionPanningMove:I

    .line 205
    return-void
.end method

.method public setMotionTiltMove(I)V
    .registers 3
    .parameter "mMotionTiltMove"

    .prologue
    .line 196
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionTiltMove:F

    .line 197
    return-void
.end method

.method public setMotionUse(Z)V
    .registers 2
    .parameter "mMotionUse"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/cooliris/media/MotionDetector;->mMotionUse:Z

    .line 161
    return-void
.end method

.method public unregisterMotionListener()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "MotionDetector"

    const-string v1, "unregisterMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_16

    .line 149
    iget-object v0, p0, Lcom/cooliris/media/MotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/cooliris/media/MotionDetector;->mListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 151
    :cond_16
    return-void
.end method

.method public updateFocusPoint(II)V
    .registers 3
    .parameter "mTouchPosX"
    .parameter "mTouchPosY"

    .prologue
    .line 142
    iput p1, p0, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    .line 143
    iput p2, p0, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    .line 144
    return-void
.end method
