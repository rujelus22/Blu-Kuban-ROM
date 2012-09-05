.class Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/SensorTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/lcdtest/SensorTest;Lcom/sec/android/app/lcdtest/SensorTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    return-void
.end method

.method private changeAcceleroMeter(Landroid/hardware/Sensor;[F)V
    .registers 15
    .parameter "sensor"
    .parameter "values"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 391
    const/16 v1, 0x18

    .line 392
    .local v1, m_Rev_Convert:I
    iget-object v6, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v6

    const-string v7, "PATH_SENSOR_ACCE_VALUE"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, sysfsPath:Ljava/lang/String;
    if-eqz v5, :cond_54

    .line 395
    invoke-direct {p0, v5}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, rawData:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, rawDatas:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACC Raw Data - x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", z: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtAccelerometer:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/SensorTest;->access$700(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .end local v2           #rawData:Ljava/lang/String;
    .end local v3           #rawDatas:[Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    :goto_53
    return-void

    .line 403
    :cond_54
    const/4 v6, 0x3

    new-array v0, v6, [I

    .line 404
    .local v0, data:[I
    aget v6, p2, v9

    float-to-int v6, v6

    mul-int/lit16 v6, v6, 0x333

    add-int/lit16 v6, v6, 0x800

    aput v6, v0, v9

    .line 405
    aget v6, p2, v10

    float-to-int v6, v6

    mul-int/lit16 v6, v6, 0x333

    add-int/lit16 v6, v6, 0x800

    aput v6, v0, v10

    .line 406
    aget v6, p2, v11

    float-to-int v6, v6

    mul-int/lit16 v6, v6, 0x333

    add-int/lit16 v6, v6, 0x800

    aput v6, v0, v11

    .line 407
    iget-object v6, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtAccelerometer:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/SensorTest;->access$700(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACCELEROMETER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", z: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53
.end method

.method private changeGyroField(Landroid/hardware/Sensor;[F)V
    .registers 8
    .parameter "sensor"
    .parameter "values"

    .prologue
    const v4, 0x42654ca3

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtGyro:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1300(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GYROSCOPE: Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x0

    aget v3, p2, v3

    mul-float/2addr v3, v4

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", P: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x1

    aget v3, p2, v3

    mul-float/2addr v3, v4

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", R: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x2

    aget v3, p2, v3

    mul-float/2addr v3, v4

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method private changeMagneticField(Landroid/hardware/Sensor;[F)V
    .registers 7
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtMagnetic:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1200(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAGNETIC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x0

    aget v3, p2, v3

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x1

    aget v3, p2, v3

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x2

    aget v3, p2, v3

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method private changeOrientation([F)V
    .registers 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationAzi:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$900(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AZIMUTH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    aget v3, p1, v4

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationPitch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1000(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x1

    aget v3, p1, v3

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationRoll:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1100(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROLL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const/4 v3, 0x2

    aget v3, p1, v3

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->cv:Lcom/sec/android/app/lcdtest/SensorArrow;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$600(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/SensorArrow;

    move-result-object v0

    aget v1, p1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/SensorArrow;->setDirection(F)V

    .line 439
    return-void
.end method

.method private changeProximity([F)V
    .registers 8
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 455
    aget v2, p1, v5

    float-to-int v2, v2

    if-nez v2, :cond_df

    .line 456
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1400(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-virtual {v3}, Lcom/sec/android/app/lcdtest/SensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 457
    const/4 v2, 0x2

    new-array v1, v2, [J

    fill-array-data v1, :array_10a

    .line 458
    .local v1, pattern:[J
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1500(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 459
    const-string v0, "PROXIMITY: 1.0"

    .line 460
    .local v0, displayText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const-string v3, "1.0"

    #setter for: Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1602(Lcom/sec/android/app/lcdtest/SensorTest;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .end local v1           #pattern:[J
    :goto_34
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I9100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "M250S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SC02C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I9100P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I9100T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v2

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I9100G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 470
    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROXIMITY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1600(Lcom/sec/android/app/lcdtest/SensorTest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     ADC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->sProximityAdcValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1700(Lcom/sec/android/app/lcdtest/SensorTest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_d5
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->txtProximity:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1800(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    return-void

    .line 462
    .end local v0           #displayText:Ljava/lang/String;
    :cond_df
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1400(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-virtual {v3}, Lcom/sec/android/app/lcdtest/SensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1500(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 464
    const-string v0, "PROXIMITY: 0.0"

    .line 465
    .restart local v0       #displayText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const-string v3, "0.0"

    #setter for: Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->access$1602(Lcom/sec/android/app/lcdtest/SensorTest;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_34

    .line 457
    nop

    :array_10a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filepath"

    .prologue
    .line 413
    const-string v3, ""

    .line 414
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 416
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_26

    .line 417
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 418
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_44

    move-result-object v3

    .line 423
    :cond_19
    if-eqz v1, :cond_47

    .line 425
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    move-object v0, v1

    .line 431
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    return-object v3

    .line 426
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_20
    move-exception v2

    .line 427
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 428
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 420
    .end local v2           #e:Ljava/io/IOException;
    :catch_26
    move-exception v2

    .line 421
    .local v2, e:Ljava/lang/Exception;
    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    .line 423
    if-eqz v0, :cond_1f

    .line 425
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 426
    :catch_30
    move-exception v2

    .line 427
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 423
    .end local v2           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v4

    :goto_36
    if-eqz v0, :cond_3b

    .line 425
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 428
    :cond_3b
    :goto_3b
    throw v4

    .line 426
    :catch_3c
    move-exception v2

    .line 427
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 423
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_41
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_36

    .line 420
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_44
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_27

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_47
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->cv:Lcom/sec/android/app/lcdtest/SensorArrow;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$600(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/SensorArrow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/lcdtest/SensorArrow;->setCurrentCal(I)V

    .line 368
    :cond_10
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 371
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 388
    :goto_9
    :pswitch_9
    return-void

    .line 373
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->changeAcceleroMeter(Landroid/hardware/Sensor;[F)V

    goto :goto_9

    .line 376
    :pswitch_12
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->changeOrientation([F)V

    goto :goto_9

    .line 379
    :pswitch_18
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->changeMagneticField(Landroid/hardware/Sensor;[F)V

    goto :goto_9

    .line 382
    :pswitch_20
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->changeGyroField(Landroid/hardware/Sensor;[F)V

    goto :goto_9

    .line 385
    :pswitch_28
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;->changeProximity([F)V

    goto :goto_9

    .line 371
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_18
        :pswitch_12
        :pswitch_20
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method
