.class public Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;
.super Landroid/app/Activity;
.source "IntensityTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;
    }
.end annotation


# static fields
.field private static auto_bright_state:I

.field private static first_sens_value:I

.field private static old_lightsensorvalue:I

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final DARK_BASIS:I

.field private final DARK_BASIS2:I

.field private final DEFAULT_LIGHT_SENSOR_VALUE:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAX_BUFFER_SIZE:I

.field private final NOW:I

.field private final TIMELESS:J

.field private final TIMER_DURATION:I

.field private bgChangeCnt:I

.field private changeCnt:I

.field private changed:Z

.field private first_time_change:Z

.field private info:Landroid/widget/TextView;

.field private mBackgroudLayout:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mHandler:Landroid/os/Handler;

.field private mLcdbrightvalue:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimer:Ljava/util/Timer;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private pass:Z

.field private pass2:Z

.field private vibratoronflg:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->old_lightsensorvalue:I

    .line 57
    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->auto_bright_state:I

    .line 69
    const/4 v0, 0x3

    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->first_sens_value:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "IntensityTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->LOG_TAG:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass:Z

    .line 49
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->TIMER_DURATION:I

    .line 50
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->TIMELESS:J

    .line 51
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->NOW:I

    .line 52
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->MAX_BUFFER_SIZE:I

    .line 53
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->DARK_BASIS:I

    .line 55
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->vibratoronflg:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->DEFAULT_LIGHT_SENSOR_VALUE:I

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->DARK_BASIS2:I

    .line 60
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z

    .line 61
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    .line 62
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->bgChangeCnt:I

    .line 68
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->first_time_change:Z

    .line 70
    const/16 v0, 0x92

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mLcdbrightvalue:I

    .line 436
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getLightSensorValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->isDarkCondition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->isDark(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private getLightSensorValue()Ljava/lang/String;
    .registers 11

    .prologue
    .line 194
    const-string v7, "IntensityTest"

    const-string v8, "getLightSensorValue"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, in:Ljava/io/InputStream;
    const/16 v7, 0x64

    new-array v0, v7, [B

    .line 197
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 198
    .local v4, length:I
    const/4 v5, 0x0

    .line 201
    .local v5, lightValue:Ljava/lang/String;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_73
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1a} :catch_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_53

    .line 202
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 203
    if-eqz v4, :cond_29

    .line 204
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v4, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_81
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_28} :catch_87
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_84

    .end local v5           #lightValue:Ljava/lang/String;
    .local v6, lightValue:Ljava/lang/String;
    move-object v5, v6

    .line 211
    .end local v6           #lightValue:Ljava/lang/String;
    .restart local v5       #lightValue:Ljava/lang/String;
    :cond_29
    if-eqz v3, :cond_8a

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    const/4 v2, 0x0

    .line 214
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_2f
    :goto_2f
    return-object v5

    .line 211
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_30
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_2f

    .line 206
    :catch_33
    move-exception v1

    .line 207
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_34
    :try_start_34
    const-string v7, "IntensityTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileIOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_73

    .line 211
    if-eqz v2, :cond_2f

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_7b

    const/4 v2, 0x0

    goto :goto_2f

    .line 208
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_53
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    :goto_54
    :try_start_54
    const-string v7, "IntensityTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WrtieException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_73

    .line 211
    if-eqz v2, :cond_2f

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7d

    const/4 v2, 0x0

    goto :goto_2f

    .end local v1           #e:Ljava/io/IOException;
    :catchall_73
    move-exception v7

    :goto_74
    if-eqz v2, :cond_7a

    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7f

    const/4 v2, 0x0

    :cond_7a
    :goto_7a
    throw v7

    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_7b
    move-exception v7

    goto :goto_2f

    .local v1, e:Ljava/io/IOException;
    :catch_7d
    move-exception v7

    goto :goto_2f

    .end local v1           #e:Ljava/io/IOException;
    :catch_7f
    move-exception v8

    goto :goto_7a

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_81
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_74

    .line 208
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_84
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_54

    .line 206
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_87
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_34

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_8a
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_2f
.end method

.method private init()V
    .registers 5

    .prologue
    .line 111
    const-string v0, "IntensityTest"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 114
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mLightSensor:Landroid/hardware/Sensor;

    .line 115
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;

    .line 116
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->info:Landroid/widget/TextView;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    .line 121
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    .line 122
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    .line 124
    return-void
.end method

.method private declared-synchronized isDark(Z)V
    .registers 4
    .parameter "dark"

    .prologue
    .line 445
    monitor-enter p0

    :try_start_1
    const-string v0, "IntensityTest"

    const-string v1, "isDark"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;

    invoke-direct {v1, p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 469
    monitor-exit p0

    return-void

    .line 445
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isDarkCondition(I)Z
    .registers 6
    .parameter "lightsensorValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    monitor-enter p0

    :try_start_3
    const-string v2, "IntensityTest"

    const-string v3, "isDarkCondition"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/16 v2, 0xa

    if-gt p1, v2, :cond_1a

    .line 426
    const-string v1, "IntensityTest"

    const-string v2, "isDarkCondition ::: true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1f

    .line 432
    :goto_18
    monitor-exit p0

    return v0

    .line 431
    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    move v0, v1

    .line 432
    goto :goto_18

    .line 423
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLcdBrightnessValue(I)V
    .registers 5
    .parameter "lcd_bright_value"

    .prologue
    .line 218
    const-string v1, "IntensityTest"

    const-string v2, "setLcdBrightnessValue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_7
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 222
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_16

    .line 223
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 228
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_16
    :goto_16
    return-void

    .line 225
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private startSensing()V
    .registers 3

    .prologue
    .line 165
    const-string v0, "IntensityTest"

    const-string v1, "startSensing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 370
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 371
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 372
    const/4 v0, 0x1

    .line 378
    :goto_24
    return v0

    .line 376
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevKey:I

    .line 377
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevTime:J

    .line 378
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 82
    const-string v0, "IntensityTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pm:Landroid/os/PowerManager;

    .line 89
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 90
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pm:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "IntensityTest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 91
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 93
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_55

    .line 95
    const-string v0, "IntensityTest"

    const-string v1, "WakeLock acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    :cond_55
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevKey:I

    .line 100
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mPrevTime:J

    .line 101
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrKey:I

    .line 102
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrTime:J

    .line 104
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changeCnt:I

    .line 105
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->bgChangeCnt:I

    .line 106
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->init()V

    .line 108
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 258
    const-string v0, "IntensityTest"

    const-string v1, "onEXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_10

    .line 260
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 263
    :cond_10
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_19

    .line 264
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 266
    :cond_19
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mLcdbrightvalue:I

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->setLcdBrightnessValue(I)V

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->setResult(I)V

    .line 269
    const-string v0, "IntensityTest"

    const-string v1, "setResult(RESULT_CANCELED);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 272
    const-string v0, "IntensityTest"

    const-string v1, "WakeLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    :cond_3d
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->finish()V

    .line 278
    return-void
.end method

.method public onFinish()V
    .registers 4

    .prologue
    .line 231
    const-string v1, "IntensityTest"

    const-string v2, "onFinish!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_10

    .line 234
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 239
    :cond_10
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_19

    .line 240
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 242
    :cond_19
    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mLcdbrightvalue:I

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->setLcdBrightnessValue(I)V

    .line 244
    const/16 v1, 0xe2

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->setResult(I)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.4dmech.enablehomekeyforkeypadtest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    sget-object v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 250
    const-string v1, "IntensityTest"

    const-string v2, "WakeLock release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 253
    :cond_46
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->finish()V

    .line 255
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 343
    const-string v0, "IntensityTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v0, "IntensityTest"

    const-string v1, "ksk check ok key..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrKey:I

    .line 346
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mCurrTime:J

    .line 348
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4a

    .line 349
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_4a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 351
    const-string v0, "IntensityTest"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->onExit()V

    .line 355
    :cond_4a
    const/16 v0, 0x17

    if-ne p1, v0, :cond_5a

    .line 356
    const-string v0, "IntensityTest"

    const-string v1, "This is DPAD_CENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->onFinish()V

    .line 366
    :cond_58
    :goto_58
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_5a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_65

    .line 360
    const-string v0, "IntensityTest"

    const-string v1, "KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 361
    :cond_65
    const/16 v0, 0x54

    if-ne p1, v0, :cond_71

    .line 362
    const-string v0, "IntensityTest"

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 363
    :cond_71
    const/16 v0, 0x52

    if-ne p1, v0, :cond_58

    .line 364
    const-string v0, "IntensityTest"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 396
    const-string v1, "IntensityTest"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 398
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_13

    .line 399
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 403
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 404
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 409
    :cond_2b
    :goto_2b
    return-void

    .line 406
    :catch_2c
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2b
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 382
    const-string v1, "IntensityTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 386
    :try_start_a
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 387
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_26

    .line 392
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->startSensing()V

    .line 393
    return-void

    .line 389
    :catch_26
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method
