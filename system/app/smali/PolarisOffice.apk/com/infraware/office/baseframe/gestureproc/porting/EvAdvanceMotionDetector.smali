.class public Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;
.super Ljava/lang/Object;
.source "EvAdvanceMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvAdvanceMotinDetector"


# instance fields
.field protected mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

.field private mMRListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;)V
    .registers 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    .line 18
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 19
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMRListener:Landroid/hardware/motion/MRListener;

    .line 34
    :try_start_a
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMRListener:Landroid/hardware/motion/MRListener;

    .line 73
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMRListener:Landroid/hardware/motion/MRListener;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_2d

    .line 74
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    .line 75
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 76
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMRListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V
    :try_end_2d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_2d} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_2d} :catch_39

    .line 84
    :cond_2d
    :goto_2d
    return-void

    .line 79
    :catch_2e
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v1, "EvAdvanceMotinDetector"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 81
    .end local v0           #e:Ljava/lang/NoClassDefFoundError;
    :catch_39
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "EvAdvanceMotinDetector"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private addEventLog(ILandroid/hardware/motion/MREvent;)V
    .registers 11
    .parameter "appId"
    .parameter "motionEvent"

    .prologue
    .line 94
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 96
    .local v2, str:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    .local v3, time:J
    const-string v0, "HH:mm:ss.SSS"

    .line 98
    .local v0, fmt:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    invoke-virtual {p2}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v5, "EvAdvanceMotinDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addEventLog : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public Motionfinalize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMRListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 89
    :cond_c
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    .line 90
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 91
    return-void
.end method
