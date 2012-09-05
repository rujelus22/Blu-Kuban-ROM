.class public Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotateListener"
.end annotation


# instance fields
.field protected mGeoMagnetic:[F

.field protected mGravity:[F

.field protected mIncMatrix:[F

.field protected mIsCheckUser:Z

.field protected mIsMute:Z

.field protected mRollValues:[F

.field protected mRotateMatrix:[F

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "c"

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 728
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 729
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 720
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRotateMatrix:[F

    .line 721
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIncMatrix:[F

    .line 724
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRollValues:[F

    .line 725
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIsCheckUser:Z

    .line 726
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIsMute:Z

    .line 731
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 733
    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 734
    const-string v0, "AlarmPlayer"

    const-string v1, "Rotate Listener CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_30
    return-void
.end method

.method private Radian2Degree(F)F
    .registers 4
    .parameter "radian"

    .prologue
    .line 810
    const/high16 v0, 0x4334

    mul-float/2addr v0, p1

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 738
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 741
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_a6

    .line 754
    :goto_a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGravity:[F

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGeoMagnetic:[F

    if-eqz v1, :cond_6a

    .line 755
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 756
    const-string v1, "AlarmPlayer"

    const-string v2, "Get Sensor Rotate Info !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRotateMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIncMatrix:[F

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGravity:[F

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGeoMagnetic:[F

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRotateMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRollValues:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 763
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mRollValues:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->Radian2Degree(F)F

    move-result v0

    .line 764
    .local v0, fDegree:F
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 765
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEGREE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_5c
    const/high16 v1, -0x3d74

    cmpl-float v1, v0, v1

    if-lez v1, :cond_81

    const/high16 v1, 0x428c

    cmpg-float v1, v0, v1

    if-gez v1, :cond_81

    .line 767
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIsCheckUser:Z

    .line 779
    .end local v0           #fDegree:F
    :cond_6a
    :goto_6a
    return-void

    .line 743
    :pswitch_6b
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGravity:[F

    goto :goto_a

    .line 746
    :pswitch_76
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mGeoMagnetic:[F

    goto :goto_a

    .line 769
    .restart local v0       #fDegree:F
    :cond_81
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIsCheckUser:Z

    if-ne v1, v5, :cond_6a

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 771
    const-string v1, "AlarmPlayer"

    const-string v2, "Alarm Sound MUTE !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_94
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->mIsMute:Z

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6a

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    goto :goto_6a

    .line 741
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_76
    .end packed-switch
.end method
