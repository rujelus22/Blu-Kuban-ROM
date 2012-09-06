.class Lcom/google/android/street/StreetView$OrientationSensorListener;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationSensorListener"
.end annotation


# instance fields
.field private final mAcceleration:[F

.field private final mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

.field private mDeclination:F

.field private mHasDeclination:Z

.field private mHasRotationVectorSensor:Z

.field private final mMagneticField:[F

.field private final mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

.field private final mRemappedRotationMatrix:[F

.field private final mRotationMatrix:[F

.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method private constructor <init>(Lcom/google/android/street/StreetView;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x10

    const/high16 v2, 0x3f00

    const/4 v1, 0x3

    .line 332
    iput-object p1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    .line 344
    new-instance v0, Lcom/google/android/street/ExponentialFilter;

    invoke-direct {v0, v2, v1}, Lcom/google/android/street/ExponentialFilter;-><init>(FI)V

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

    .line 348
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    .line 351
    new-instance v0, Lcom/google/android/street/ExponentialFilter;

    invoke-direct {v0, v2, v1}, Lcom/google/android/street/ExponentialFilter;-><init>(FI)V

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

    .line 358
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    .line 359
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;)V

    return-void
.end method

.method private canUseRotationVectorSensor(Landroid/hardware/SensorManager;)Z
    .registers 3
    .parameter "sensorManager"

    .prologue
    .line 374
    invoke-static {}, Lcom/google/mobile/googlenav/android/AndroidBuilds;->isHoneycombSdk()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private orientedRotationMatrix()[F
    .registers 6

    .prologue
    .line 443
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;
    invoke-static {v3}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/street/Street;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 453
    .local v2, orientation:I
    packed-switch v2, :pswitch_data_2a

    .line 467
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    .line 471
    :goto_13
    return-object v3

    .line 455
    :pswitch_14
    const/4 v0, 0x2

    .line 456
    .local v0, deviceXAxis:I
    const/16 v1, 0x81

    .line 469
    .local v1, deviceYAxis:I
    :goto_17
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    invoke-static {v3, v0, v1, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 471
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    goto :goto_13

    .line 459
    .end local v0           #deviceXAxis:I
    .end local v1           #deviceYAxis:I
    :pswitch_21
    const/16 v0, 0x81

    .line 460
    .restart local v0       #deviceXAxis:I
    const/16 v1, 0x82

    .line 461
    .restart local v1       #deviceYAxis:I
    goto :goto_17

    .line 463
    .end local v0           #deviceXAxis:I
    .end local v1           #deviceYAxis:I
    :pswitch_26
    const/16 v0, 0x82

    .line 464
    .restart local v0       #deviceXAxis:I
    const/4 v1, 0x1

    .line 465
    .restart local v1       #deviceYAxis:I
    goto :goto_17

    .line 453
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method private updateOrientation()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    .line 475
    iget-object v2, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #calls: Lcom/google/android/street/StreetView;->okToAct()Z
    invoke-static {v2}, Lcom/google/android/street/StreetView;->access$800(Lcom/google/android/street/StreetView;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 505
    :goto_c
    return-void

    .line 479
    :cond_d
    iget-boolean v2, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mHasRotationVectorSensor:Z

    if-nez v2, :cond_24

    .line 482
    iget-object v2, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    iget-object v7, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    invoke-static {v2, v4, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v12

    .line 484
    .local v12, gotRotationMatrix:Z
    if-nez v12, :cond_24

    .line 485
    const-string v1, "SV couldn\'t get an orientation reading"

    invoke-static {v1}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    goto :goto_c

    .line 490
    .end local v12           #gotRotationMatrix:Z
    :cond_24
    invoke-direct {p0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->orientedRotationMatrix()[F

    move-result-object v0

    .line 491
    .local v0, rotationMatrix:[F
    iget-boolean v2, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mHasDeclination:Z

    if-eqz v2, :cond_32

    .line 494
    iget v2, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mDeclination:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 500
    :cond_32
    const/high16 v8, 0x42b4

    move-object v6, v0

    move v7, v1

    move v9, v5

    move v10, v3

    move v11, v3

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 502
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #calls: Lcom/google/android/street/StreetView;->reportUserActivity()V
    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$900(Lcom/google/android/street/StreetView;)V

    .line 503
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;
    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$1000(Lcom/google/android/street/StreetView;)Lcom/google/android/street/UserOrientation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/street/UserOrientation;->setRotationMatrix([F)V

    .line 504
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #calls: Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$1100(Lcom/google/android/street/StreetView;)V

    goto :goto_c
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 435
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 413
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 430
    :goto_9
    return-void

    .line 415
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/ExponentialFilter;->filter([F[F)V

    goto :goto_9

    .line 418
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/ExponentialFilter;->filter([F[F)V

    .line 423
    invoke-direct {p0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->updateOrientation()V

    goto :goto_9

    .line 426
    :sswitch_21
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->updateOrientation()V

    goto :goto_9

    .line 413
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_14
        0xb -> :sswitch_21
    .end sparse-switch
.end method

.method public register()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 379
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;
    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/street/Street;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v7

    .line 380
    .local v7, sensorManager:Landroid/hardware/SensorManager;
    invoke-direct {p0, v7}, Lcom/google/android/street/StreetView$OrientationSensorListener;->canUseRotationVectorSensor(Landroid/hardware/SensorManager;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 381
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/16 v2, 0x3e80

    invoke-virtual {v7, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 384
    iput-boolean v8, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mHasRotationVectorSensor:Z

    .line 395
    :goto_1e
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;
    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/street/Street;->getApproximateLocation()Landroid/location/Location;

    move-result-object v6

    .line 396
    .local v6, location:Landroid/location/Location;
    if-eqz v6, :cond_4a

    .line 397
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 402
    .local v0, geomagneticField:Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    iput v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mDeclination:F

    .line 403
    iput-boolean v8, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mHasDeclination:Z

    .line 405
    .end local v0           #geomagneticField:Landroid/hardware/GeomagneticField;
    :cond_4a
    return-void

    .line 386
    .end local v6           #location:Landroid/location/Location;
    :cond_4b
    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v7, p0, v1, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 389
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v7, p0, v1, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1e
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    #getter for: Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;
    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/Street;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 409
    return-void
.end method
