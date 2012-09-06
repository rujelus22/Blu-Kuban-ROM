.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;,
        Landroid/hardware/SensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x0

.field public static final SENSOR_DELAY_NORMAL:I = 0x0

.field public static final SENSOR_DELAY_UI:I = 0x0

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 373
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 377
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 9
    .parameter "mainLooper"

    .prologue
    .line 710
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 711
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 714
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 715
    :try_start_f
    sget-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_8f

    .line 716
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 718
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 720
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    sput-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 722
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_91

    if-eqz v3, :cond_37

    .line 726
    :try_start_2a
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v3

    sput v3, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_94

    .line 738
    :cond_37
    :goto_37
    :try_start_37
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 739
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 740
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 742
    .local v1, i:I
    :cond_3d
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 743
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 744
    const-string v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====>>>>>Num Sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-ltz v1, :cond_77

    .line 748
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 749
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v3, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 752
    :cond_77
    if-gtz v1, :cond_3d

    .line 754
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, p0, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(Landroid/hardware/SensorManager;I)V

    sput-object v3, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 755
    new-instance v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 757
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_8f
    monitor-exit v4

    .line 758
    return-void

    .line 757
    :catchall_91
    move-exception v3

    monitor-exit v4
    :try_end_93
    .catchall {:try_start_37 .. :try_end_93} :catchall_91

    throw v3

    .line 733
    :catch_94
    move-exception v3

    goto :goto_37
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 93
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Landroid/hardware/SensorManager$SensorEventPool;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    return-object v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .registers 14
    .parameter "sensor"

    .prologue
    const/4 v8, 0x1

    .line 1119
    const/4 v6, 0x0

    .line 1120
    .local v6, result:Z
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1121
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1122
    .local v0, handle:I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    .line 1125
    .local v7, type:I
    const v4, 0x30d40

    .line 1126
    .local v4, minDelay:I
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1127
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1128
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v9

    if-le v4, v9, :cond_33

    .line 1129
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v4

    .line 1130
    :cond_33
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set min delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1135
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_4c
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1136
    .restart local v1       #i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1138
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1139
    .local v3, listener_name:Ljava/lang/String;
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Before sending... delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    sget v9, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v9, v3, v0, v4}, Landroid/hardware/SensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 1148
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :goto_8a
    return v8

    .line 1144
    :cond_8b
    if-eq v7, v8, :cond_93

    const/4 v8, 0x2

    if-eq v7, v8, :cond_93

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b6

    .line 1145
    :cond_93
    sget v8, Landroid/hardware/SensorManager;->sQueue:I

    const-string v9, "Sending .. normal delay 200ms"

    const v10, 0x30d40

    invoke-static {v8, v9, v0, v10}, Landroid/hardware/SensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 1146
    const-string v8, "SensorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set normal delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_b6
    sget v8, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v9, -0x1

    invoke-static {v8, v5, v0, v9}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v8

    goto :goto_8a
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .registers 9
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1106
    const/4 v4, 0x0

    .line 1107
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1108
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1109
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1111
    .local v0, handle:I
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1115
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_27
    return v4
.end method

.method public static getAltitude(FF)F
    .registers 9
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1794
    const v0, 0x3e42dcae

    .line 1795
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .registers 33
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 2131
    const/4 v11, 0x0

    .local v11, rd1:F
    const/4 v12, 0x0

    .local v12, rd4:F
    const/4 v13, 0x0

    .local v13, rd6:F
    const/4 v14, 0x0

    .local v14, rd7:F
    const/4 v15, 0x0

    .line 2132
    .local v15, rd8:F
    const/16 v16, 0x0

    .local v16, ri0:F
    const/16 v17, 0x0

    .local v17, ri1:F
    const/16 v18, 0x0

    .local v18, ri2:F
    const/16 v19, 0x0

    .local v19, ri3:F
    const/16 v20, 0x0

    .local v20, ri4:F
    const/16 v21, 0x0

    .local v21, ri5:F
    const/16 v22, 0x0

    .local v22, ri6:F
    const/16 v23, 0x0

    .local v23, ri7:F
    const/16 v24, 0x0

    .line 2133
    .local v24, ri8:F
    const/4 v2, 0x0

    .local v2, pri0:F
    const/4 v3, 0x0

    .local v3, pri1:F
    const/4 v4, 0x0

    .local v4, pri2:F
    const/4 v5, 0x0

    .local v5, pri3:F
    const/4 v6, 0x0

    .local v6, pri4:F
    const/4 v7, 0x0

    .local v7, pri5:F
    const/4 v8, 0x0

    .local v8, pri6:F
    const/4 v9, 0x0

    .local v9, pri7:F
    const/4 v10, 0x0

    .line 2136
    .local v10, pri8:F
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_35

    .line 2137
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "R array length must be 3"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2139
    :cond_35
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10a

    .line 2140
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2141
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2142
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2143
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 2144
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 2145
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 2146
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 2147
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 2148
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 2165
    :goto_66
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_145

    .line 2166
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2167
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2168
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2169
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 2170
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 2171
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 2172
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 2173
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 2174
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 2194
    :goto_97
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 2195
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 2196
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 2197
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 2198
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 2200
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2201
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2202
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2204
    return-void

    .line 2149
    :cond_10a
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13d

    .line 2150
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2151
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2152
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2153
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 2154
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 2155
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 2156
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 2157
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 2158
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_66

    .line 2162
    :cond_13d
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "R array length must be 9 or 16"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2175
    :cond_145
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_178

    .line 2176
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2177
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2178
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2179
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 2180
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 2181
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 2182
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 2183
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 2184
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_97

    .line 2188
    :cond_178
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "prevR array length must be 9 or 16"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25
.end method

.method public static getInclination([F)F
    .registers 5
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1539
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 1540
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1542
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_12
.end method

.method private getLegacySensorType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 761
    packed-switch p1, :pswitch_data_10

    .line 771
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 763
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 765
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 767
    :pswitch_a
    const/16 v0, 0x80

    goto :goto_4

    .line 769
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 761
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .registers 11
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1752
    array-length v0, p0

    if-ne v0, v8, :cond_34

    .line 1753
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1754
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1755
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1761
    :goto_33
    return-object p1

    .line 1757
    :cond_34
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1758
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1759
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_33
.end method

.method public static getQuaternionFromVector([F[F)V
    .registers 9
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2298
    array-length v0, p1

    if-eq v0, v6, :cond_14

    array-length v0, p1

    if-eq v0, v1, :cond_14

    .line 2299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rv array length must be 9 or 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2300
    :cond_14
    array-length v0, p0

    if-eq v0, v1, :cond_1f

    .line 2301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Q array length must be 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :cond_1f
    array-length v0, p1

    if-ne v0, v1, :cond_33

    .line 2304
    aget v0, p1, v6

    aput v0, p0, v3

    .line 2309
    :goto_26
    aget v0, p1, v3

    aput v0, p0, v4

    .line 2310
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2311
    aget v0, p1, v5

    aput v0, p0, v6

    .line 2312
    return-void

    .line 2306
    :cond_33
    const/high16 v0, 0x3f80

    aget v1, p1, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    .line 2307
    aget v0, p0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5b

    aget v0, p0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_58
    aput v0, p0, v3

    goto :goto_26

    :cond_5b
    const/4 v0, 0x0

    goto :goto_58
.end method

.method static getRotation()I
    .registers 2

    .prologue
    .line 1809
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1810
    :try_start_3
    sget v0, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v1

    return v0

    .line 1811
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .registers 31
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1464
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 1465
    .local v2, Ax:F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 1466
    .local v3, Ay:F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 1467
    .local v4, Az:F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 1468
    .local v5, Ex:F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 1469
    .local v6, Ey:F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 1470
    .local v7, Ez:F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 1471
    .local v8, Hx:F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 1472
    .local v9, Hy:F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 1473
    .local v10, Hz:F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1474
    .local v18, normH:F
    const v20, 0x3dcccccd

    cmpg-float v20, v18, v20

    if-gez v20, :cond_4c

    .line 1477
    const/16 v20, 0x0

    .line 1521
    :goto_4b
    return v20

    .line 1479
    :cond_4c
    const/high16 v20, 0x3f80

    div-float v17, v20, v18

    .line 1480
    .local v17, invH:F
    mul-float v8, v8, v17

    .line 1481
    mul-float v9, v9, v17

    .line 1482
    mul-float v10, v10, v17

    .line 1483
    const/high16 v20, 0x3f80

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 1484
    .local v15, invA:F
    mul-float/2addr v2, v15

    .line 1485
    mul-float/2addr v3, v15

    .line 1486
    mul-float/2addr v4, v15

    .line 1487
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 1488
    .local v11, Mx:F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 1489
    .local v12, My:F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 1490
    .local v13, Mz:F
    if-eqz p0, :cond_ba

    .line 1491
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_134

    .line 1492
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 1493
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 1494
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 1502
    :cond_ba
    :goto_ba
    if-eqz p1, :cond_130

    .line 1506
    const/high16 v20, 0x3f80

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 1507
    .local v16, invE:F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 1508
    .local v14, c:F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 1509
    .local v19, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_191

    .line 1510
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1511
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1512
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1521
    .end local v14           #c:F
    .end local v16           #invE:F
    .end local v19           #s:F
    :cond_130
    :goto_130
    const/16 v20, 0x1

    goto/16 :goto_4b

    .line 1495
    :cond_134
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ba

    .line 1496
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1497
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1498
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1499
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p0, v20

    goto/16 :goto_ba

    .line 1513
    .restart local v14       #c:F
    .restart local v16       #invE:F
    .restart local v19       #s:F
    :cond_191
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_130

    .line 1514
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1515
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1516
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1517
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1518
    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    goto/16 :goto_130
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .registers 20
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2228
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x3

    if-eq v14, v15, :cond_14

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-eq v14, v15, :cond_14

    .line 2229
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "R array length must be 3 or 4"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2232
    :cond_14
    const/4 v14, 0x0

    aget v2, p1, v14

    .line 2233
    .local v2, q1:F
    const/4 v14, 0x1

    aget v6, p1, v14

    .line 2234
    .local v6, q2:F
    const/4 v14, 0x2

    aget v9, p1, v14

    .line 2236
    .local v9, q3:F
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_8f

    .line 2237
    const/4 v14, 0x3

    aget v1, p1, v14

    .line 2243
    .local v1, q0:F
    :goto_26
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v11, v14, v2

    .line 2244
    .local v11, sq_q1:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v12, v14, v6

    .line 2245
    .local v12, sq_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v13, v14, v9

    .line 2246
    .local v13, sq_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v4, v14, v6

    .line 2247
    .local v4, q1_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v10, v14, v1

    .line 2248
    .local v10, q3_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v5, v14, v9

    .line 2249
    .local v5, q1_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v7, v14, v1

    .line 2250
    .local v7, q2_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v8, v14, v9

    .line 2251
    .local v8, q2_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v3, v14, v1

    .line 2253
    .local v3, q1_q0:F
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_a9

    .line 2254
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2255
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2256
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2258
    const/4 v14, 0x3

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2259
    const/4 v14, 0x4

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2260
    const/4 v14, 0x5

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2262
    const/4 v14, 0x6

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2263
    const/4 v14, 0x7

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2264
    const/16 v14, 0x8

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2288
    :goto_8e
    return-void

    .line 2239
    .end local v1           #q0:F
    .end local v3           #q1_q0:F
    .end local v4           #q1_q2:F
    .end local v5           #q1_q3:F
    .end local v7           #q2_q0:F
    .end local v8           #q2_q3:F
    .end local v10           #q3_q0:F
    .end local v11           #sq_q1:F
    .end local v12           #sq_q2:F
    .end local v13           #sq_q3:F
    :cond_8f
    const/high16 v14, 0x3f80

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    mul-float v15, v6, v6

    sub-float/2addr v14, v15

    mul-float v15, v9, v9

    sub-float v1, v14, v15

    .line 2240
    .restart local v1       #q0:F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_a7

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    :goto_a6
    goto :goto_26

    :cond_a7
    const/4 v1, 0x0

    goto :goto_a6

    .line 2265
    .restart local v3       #q1_q0:F
    .restart local v4       #q1_q2:F
    .restart local v5       #q1_q3:F
    .restart local v7       #q2_q0:F
    .restart local v8       #q2_q3:F
    .restart local v10       #q3_q0:F
    .restart local v11       #sq_q1:F
    .restart local v12       #sq_q2:F
    .restart local v13       #sq_q3:F
    :cond_a9
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ne v14, v15, :cond_108

    .line 2266
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2267
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2268
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2269
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2271
    const/4 v14, 0x4

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2272
    const/4 v14, 0x5

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2273
    const/4 v14, 0x6

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2274
    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2276
    const/16 v14, 0x8

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2277
    const/16 v14, 0x9

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2278
    const/16 v14, 0xa

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2279
    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2281
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0x0

    aput v17, p0, v16

    aput v17, p0, v15

    aput v17, p0, v14

    .line 2282
    const/16 v14, 0xf

    const/high16 v15, 0x3f80

    aput v15, p0, v14

    goto :goto_8e

    .line 2286
    :cond_108
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "R array length must be 9 or 16"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method static native gyro_factory_test([I[S[F)I
.end method

.method static native mag_factory_test([I[I[I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 13
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 924
    if-nez p3, :cond_4

    .line 925
    const/4 v3, 0x0

    .line 952
    :cond_3
    :goto_3
    return v3

    .line 927
    :cond_4
    const/4 v3, 0x0

    .line 929
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_3

    .line 931
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 932
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_3

    .line 936
    const/4 v1, 0x0

    .line 937
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 938
    :try_start_13
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 939
    if-nez v1, :cond_2a

    .line 942
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_33

    .line 943
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_24
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_36

    move-object v1, v2

    .line 945
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2a
    :try_start_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_33

    .line 947
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 949
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    goto :goto_3

    .line 945
    :catchall_33
    move-exception v5

    :goto_34
    :try_start_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_36
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_34
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .registers 8
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1624
    if-ne p0, p3, :cond_1a

    .line 1625
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1626
    .local v2, temp:[F
    monitor-enter v2

    .line 1628
    :try_start_5
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1629
    array-length v1, p3

    .line 1630
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_16

    .line 1631
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1630
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1632
    :cond_16
    const/4 v3, 0x1

    monitor-exit v2

    .line 1636
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_18
    return v3

    .line 1634
    .restart local v2       #temp:[F
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1f

    .line 1636
    .end local v2           #temp:[F
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_18

    .line 1634
    .restart local v2       #temp:[F
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .registers 26
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1653
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1654
    .local v6, length:I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_a

    .line 1655
    const/4 v15, 0x0

    .line 1697
    :goto_9
    return v15

    .line 1656
    :cond_a
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_12

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_14

    .line 1657
    :cond_12
    const/4 v15, 0x0

    goto :goto_9

    .line 1658
    :cond_14
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_1c

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_1e

    .line 1659
    :cond_1c
    const/4 v15, 0x0

    goto :goto_9

    .line 1660
    :cond_1e
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 1661
    const/4 v15, 0x0

    goto :goto_9

    .line 1666
    :cond_28
    xor-int v1, p1, p2

    .line 1669
    .local v1, Z:I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1670
    .local v12, x:I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1671
    .local v13, y:I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1674
    .local v14, z:I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1675
    .local v2, axis_y:I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1676
    .local v3, axis_z:I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_48

    .line 1677
    xor-int/lit16 v1, v1, 0x80

    .line 1679
    :cond_48
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_94

    const/4 v9, 0x1

    .line 1680
    .local v9, sx:Z
    :goto_4f
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_96

    const/4 v10, 0x1

    .line 1681
    .local v10, sy:Z
    :goto_56
    const/16 v15, 0x80

    if-lt v1, v15, :cond_98

    const/4 v11, 0x1

    .line 1684
    .local v11, sz:Z
    :goto_5b
    const/16 v15, 0x10

    if-ne v6, v15, :cond_9a

    const/4 v8, 0x4

    .line 1685
    .local v8, rowLength:I
    :goto_60
    const/4 v5, 0x0

    .local v5, j:I
    :goto_61
    const/4 v15, 0x3

    if-ge v5, v15, :cond_ae

    .line 1686
    mul-int v7, v5, v8

    .line 1687
    .local v7, offset:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_67
    const/4 v15, 0x3

    if-ge v4, v15, :cond_ab

    .line 1688
    if-ne v12, v4, :cond_77

    add-int v16, v7, v4

    if-eqz v9, :cond_9c

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_75
    aput v15, p3, v16

    .line 1689
    :cond_77
    if-ne v13, v4, :cond_84

    add-int v16, v7, v4

    if-eqz v10, :cond_a1

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_82
    aput v15, p3, v16

    .line 1690
    :cond_84
    if-ne v14, v4, :cond_91

    add-int v16, v7, v4

    if-eqz v11, :cond_a6

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8f
    aput v15, p3, v16

    .line 1687
    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1679
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #offset:I
    .end local v8           #rowLength:I
    .end local v9           #sx:Z
    .end local v10           #sy:Z
    .end local v11           #sz:Z
    :cond_94
    const/4 v9, 0x0

    goto :goto_4f

    .line 1680
    .restart local v9       #sx:Z
    :cond_96
    const/4 v10, 0x0

    goto :goto_56

    .line 1681
    .restart local v10       #sy:Z
    :cond_98
    const/4 v11, 0x0

    goto :goto_5b

    .line 1684
    .restart local v11       #sz:Z
    :cond_9a
    const/4 v8, 0x3

    goto :goto_60

    .line 1688
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v7       #offset:I
    .restart local v8       #rowLength:I
    :cond_9c
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_75

    .line 1689
    :cond_a1
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_82

    .line 1690
    :cond_a6
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_8f

    .line 1685
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 1693
    .end local v4           #i:I
    .end local v7           #offset:I
    :cond_ae
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d1

    .line 1694
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1695
    const/16 v15, 0xf

    const/high16 v16, 0x3f80

    aput v16, p3, v15

    .line 1697
    :cond_d1
    const/4 v15, 0x1

    goto/16 :goto_9
.end method

.method static native send_delay(ILjava/lang/String;II)Z
.end method

.method static native sensor_accel_calibrate(I)I
.end method

.method static native sensor_gyro_calibrate(I)I
.end method

.method static native sensors_calibration_available()I
.end method

.method static native sensors_calibration_get_gyro(DDDI)[F
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method static native sensors_get_supported_func()I
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method static native sensors_set_delay(II)I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 14
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 986
    if-nez p3, :cond_3

    .line 1025
    :cond_2
    :goto_2
    return-void

    .line 990
    :cond_3
    const/4 v4, 0x0

    .line 991
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 992
    :try_start_7
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 993
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_54

    .line 994
    if-eqz v4, :cond_2

    .line 996
    and-int v6, p4, p1

    if-eqz v6, :cond_2

    .line 998
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 999
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_2

    .line 1002
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1004
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1007
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1008
    const/4 v1, 0x0

    .line 1009
    .local v1, found:Z
    :try_start_2b
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1010
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_31

    .line 1011
    const/4 v1, 0x1

    .line 1015
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_44
    if-nez v1, :cond_4f

    .line 1016
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_51

    .line 1017
    :try_start_49
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_57

    .line 1020
    :cond_4f
    :try_start_4f
    monitor-exit v7

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v6

    .line 993
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_54
    move-exception v6

    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v6

    .line 1018
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_57
    move-exception v6

    :try_start_58
    monitor-exit v8
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_51
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .registers 11
    .parameter "listener"

    .prologue
    .line 1307
    if-nez p1, :cond_3

    .line 1326
    :goto_2
    return-void

    .line 1310
    :cond_3
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1311
    :try_start_6
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1312
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_6d

    .line 1313
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1314
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_6a

    .line 1315
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1317
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1318
    .local v3, sensor:Landroid/hardware/Sensor;
    const v5, 0x7fffffff

    invoke-virtual {v2, v3, v5}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1319
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1320
    const-string v5, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterListener:: disable all sensors for this listener,  name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1325
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_67
    move-exception v5

    monitor-exit v6
    :try_end_69
    .catchall {:try_start_6 .. :try_end_69} :catchall_67

    throw v5

    .line 1312
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1325
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_6d
    :try_start_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_67

    goto :goto_2
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .registers 10
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1283
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1304
    :cond_4
    :goto_4
    return-void

    .line 1286
    :cond_5
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1287
    :try_start_8
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1288
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v2, :cond_30

    .line 1289
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1290
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_6d

    .line 1291
    const v3, 0x7fffffff

    invoke-virtual {v1, p2, v3}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1293
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v3

    if-nez v3, :cond_30

    .line 1296
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1301
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_30
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1302
    const-string v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener:: handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Listener= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    monitor-exit v4

    goto :goto_4

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_6a
    move-exception v3

    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6a

    throw v3

    .line 1288
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4
    .parameter "type"

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 854
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_b
.end method

.method public getSensorList(I)Ljava/util/List;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 818
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 819
    :try_start_3
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 820
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1a

    .line 821
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1c

    .line 822
    move-object v3, v0

    .line 830
    :cond_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 831
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 833
    :cond_1a
    monitor-exit v0

    .line 834
    return-object v3

    .line 824
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 826
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 827
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 833
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method public getSensors()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    const/4 v3, 0x0

    .line 782
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 783
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 784
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_26

    goto :goto_7

    .line 786
    :pswitch_1b
    or-int/lit8 v3, v3, 0x2

    .line 787
    goto :goto_7

    .line 789
    :pswitch_1e
    or-int/lit8 v3, v3, 0x8

    .line 790
    goto :goto_7

    .line 792
    :pswitch_21
    or-int/lit16 v3, v3, 0x81

    goto :goto_7

    .line 797
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_24
    return v3

    .line 784
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public getSupportedFunction()I
    .registers 3

    .prologue
    .line 1897
    const-string v0, "SensorManager"

    const-string/jumbo v1, "sensors_get_supported_func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_get_supported_func()I

    move-result v0

    return v0
.end method

.method public onRotationChanged(I)V
    .registers 4
    .parameter "rotation"

    .prologue
    .line 1803
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1804
    :try_start_3
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1805
    monitor-exit v1

    .line 1806
    return-void

    .line 1805
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 11
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1185
    if-gez p3, :cond_b

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate must be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z
    .registers 18
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"
    .parameter "gyroCalibrationLevel"

    .prologue
    .line 1194
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1195
    :cond_4
    const/4 v7, 0x0

    .line 1279
    :goto_5
    return v7

    .line 1197
    :cond_6
    if-gez p3, :cond_11

    .line 1199
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "rate must be >=0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1202
    :cond_11
    const/4 v7, 0x1

    .line 1203
    .local v7, result:Z
    const/4 v1, -0x1

    .line 1204
    .local v1, delay:I
    packed-switch p3, :pswitch_data_102

    .line 1218
    move v1, p3

    .line 1222
    :goto_17
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1224
    const/4 v4, 0x0

    .line 1225
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_1b
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1226
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_df

    move-result-object v8

    if-ne v8, p1, :cond_21

    .line 1227
    move-object v4, v2

    move-object v5, v4

    .line 1232
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v5, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_35
    :try_start_35
    const-string v8, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerListener :: handle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  name= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delay= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Listener= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    if-nez v5, :cond_eb

    .line 1238
    move v6, v1

    .line 1239
    .local v6, minDelay:I
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7d
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1240
    .restart local v2       #i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 1241
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v8

    if-le v6, v8, :cond_7d

    .line 1242
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v6

    goto :goto_7d

    .line 1206
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v6           #minDelay:I
    :pswitch_9a
    const/16 v1, 0x2710

    .line 1207
    goto/16 :goto_17

    .line 1209
    :pswitch_9e
    const/16 v1, 0x4e20

    .line 1210
    goto/16 :goto_17

    .line 1212
    :pswitch_a2
    const v1, 0x1046b

    .line 1213
    goto/16 :goto_17

    .line 1215
    :pswitch_a7
    const v1, 0x30d40

    .line 1216
    goto/16 :goto_17

    .line 1248
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v6       #minDelay:I
    :cond_ac
    new-instance v4, Landroid/hardware/SensorManager$ListenerDelegate;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, p2, v0}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_b3
    .catchall {:try_start_35 .. :try_end_b3} :catchall_fa

    .line 1249
    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_b3
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e9

    .line 1252
    sget-object v8, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v8}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 1253
    invoke-direct {p0, p2, v6}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_d4

    .line 1255
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1256
    const/4 v7, 0x0

    .line 1275
    .end local v6           #minDelay:I
    :cond_d4
    :goto_d4
    invoke-virtual {v4, p2, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1276
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->setGyroCalibrationLevel(I)V

    .line 1277
    monitor-exit v9

    goto/16 :goto_5

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_df
    move-exception v8

    :goto_e0
    monitor-exit v9
    :try_end_e1
    .catchall {:try_start_b3 .. :try_end_e1} :catchall_df

    throw v8

    .line 1260
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #minDelay:I
    :cond_e2
    :try_start_e2
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_df

    .line 1261
    const/4 v7, 0x0

    goto :goto_d4

    .line 1265
    :cond_e9
    const/4 v7, 0x0

    goto :goto_d4

    .line 1268
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v6           #minDelay:I
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_eb
    :try_start_eb
    invoke-virtual {v5, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1269
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_fd

    .line 1271
    invoke-virtual {v5, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_f7
    .catchall {:try_start_eb .. :try_end_f7} :catchall_fa

    .line 1272
    const/4 v7, 0x0

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_d4

    .line 1277
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_fa
    move-exception v8

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_e0

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_fd
    move-object v4, v5

    .end local v5           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_d4

    :cond_ff
    move-object v5, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto/16 :goto_35

    .line 1204
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
        :pswitch_a7
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 16
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 903
    if-nez p1, :cond_7

    .line 917
    :goto_6
    return v10

    .line 906
    :cond_7
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 907
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v9, :cond_54

    :cond_14
    move v9, v2

    .line 909
    :goto_15
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz v9, :cond_56

    :cond_24
    move v9, v2

    .line 911
    :goto_25
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz v9, :cond_58

    :cond_34
    move v9, v2

    :goto_35
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 913
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_42

    if-eqz v9, :cond_5a

    :cond_42
    move v9, v2

    .line 915
    :goto_43
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_51

    if-eqz v9, :cond_5c

    :cond_51
    move v9, v2

    :goto_52
    move v10, v9

    .line 917
    goto :goto_6

    :cond_54
    move v9, v10

    .line 907
    goto :goto_15

    :cond_56
    move v9, v10

    .line 909
    goto :goto_25

    :cond_58
    move v9, v10

    .line 911
    goto :goto_35

    :cond_5a
    move v9, v10

    .line 913
    goto :goto_43

    :cond_5c
    move v9, v10

    .line 915
    goto :goto_52
.end method

.method public runAccCalibration(I)I
    .registers 10
    .parameter "sensors"

    .prologue
    const/4 v4, -0x1

    .line 1830
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runAccCalibration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v5, "SPH-D710"

    const-string v6, "GT-I9100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SPH-D710"

    const-string v6, "GT-I9100P"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SPH-D710"

    const-string v6, "GT-I9100T"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SPH-D710"

    const-string v6, "GT-N7000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SPH-D710"

    const-string v6, "GT-I9220"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "SPH-D710"

    const-string v6, "SPH-D710"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1839
    :cond_56
    const/4 v2, 0x0

    .line 1842
    .local v2, out:Ljava/io/OutputStream;
    :try_start_57
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_63} :catch_6d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_79

    .line 1848
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    if-nez v3, :cond_8a

    .line 1849
    :try_start_65
    const-string v5, "SensorManager"

    const-string v6, "Output file is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_a6

    .line 1870
    .end local v3           #out:Ljava/io/OutputStream;
    :goto_6c
    return v4

    .line 1843
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_6d
    move-exception v0

    .line 1844
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_6e
    const-string v5, "SensorManager"

    const-string v6, "File not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_78} :catch_79

    goto :goto_6c

    .line 1856
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_79
    move-exception v0

    .line 1857
    .local v0, e:Ljava/io/IOException;
    :goto_7a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1858
    if-eqz v2, :cond_82

    .line 1860
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_9c

    .line 1865
    :cond_82
    :goto_82
    const-string v5, "SensorManager"

    const-string v6, "File write fail!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1852
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_8a
    const/16 v5, 0x31

    :try_start_8c
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 1853
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1854
    const-string v5, "SensorManager"

    const-string/jumbo v6, "runAccCalibration Complete!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9a} :catch_a6

    .line 1855
    const/4 v4, 0x0

    goto :goto_6c

    .line 1861
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_9c
    move-exception v1

    .line 1862
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    .line 1870
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    :cond_a1
    invoke-static {p1}, Landroid/hardware/SensorManager;->sensor_accel_calibrate(I)I

    move-result v4

    goto :goto_6c

    .line 1856
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_a6
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_7a
.end method

.method public runGyroCalibration(I)I
    .registers 5
    .parameter "sensors"

    .prologue
    .line 1821
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runGyroCalibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-static {p1}, Landroid/hardware/SensorManager;->sensor_gyro_calibrate(I)I

    move-result v0

    return v0
.end method

.method public runGyroFactoryTest([I[S[F)I
    .registers 6
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 1879
    const-string v0, "SensorManager"

    const-string v1, "Gyro sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-static {p1, p2, p3}, Landroid/hardware/SensorManager;->gyro_factory_test([I[S[F)I

    move-result v0

    return v0
.end method

.method public runMagFactoryTest([I[I[I)I
    .registers 6
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 1888
    const-string v0, "SensorManager"

    const-string v1, "Mag sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-static {p1, p2, p3}, Landroid/hardware/SensorManager;->mag_factory_test([I[I[I)I

    move-result v0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 1071
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1056
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 1057
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1039
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1040
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 970
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 972
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 974
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 976
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 978
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 980
    return-void
.end method
