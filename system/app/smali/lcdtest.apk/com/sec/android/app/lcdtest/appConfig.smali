.class public Lcom/sec/android/app/lcdtest/appConfig;
.super Ljava/lang/Object;
.source "appConfig.java"


# static fields
.field private static final instance:Lcom/sec/android/app/lcdtest/appConfig;


# instance fields
.field private prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/sec/android/app/lcdtest/appConfig;

    invoke-direct {v0}, Lcom/sec/android/app/lcdtest/appConfig;-><init>()V

    sput-object v0, Lcom/sec/android/app/lcdtest/appConfig;->instance:Lcom/sec/android/app/lcdtest/appConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    .line 14
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    .line 16
    const-string v1, "ril.model_id"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, product:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    const-string v1, "lcdtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODEL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v1, "I9103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 21
    const-string v1, "lcdtest"

    const-string v2, "I9103 setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/appConfig;->setupI9103()V

    .line 35
    :goto_46
    return-void

    .line 23
    :cond_47
    const-string v1, "I9101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "I9220"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 24
    :cond_57
    const-string v1, "lcdtest"

    const-string v2, "I9101 setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/appConfig;->setupI9101()V

    goto :goto_46

    .line 28
    :cond_62
    const-string v1, "D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/appConfig;->setupD710()V

    goto :goto_46

    .line 30
    :cond_6e
    const-string v1, "I9100G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/appConfig;->setupI9100G()V

    goto :goto_46

    .line 33
    :cond_7a
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/appConfig;->setupI9100()V

    goto :goto_46
.end method

.method public static getInstance()Lcom/sec/android/app/lcdtest/appConfig;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/sec/android/app/lcdtest/appConfig;->instance:Lcom/sec/android/app/lcdtest/appConfig;

    return-object v0
.end method

.method private setupD710()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_SELFTEST"

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_selftest"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_DPS"

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_selftest_dps"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_ACCE_VALUE"

    const-string v2, "/sys/devices/virtual/accelerometer/accelerometer/acc_file"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_VALUE"

    const-string v2, "/sys/class/proximity/proximity/proximity_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_AVG"

    const-string v2, "/sys/class/proximity/proximity/proximity_avg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_PROX_READ_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method private setupI9100()V
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_SELFTEST"

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_selftest"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_RAM_CHECK"

    const-string v2, "/sys/devices/system/soc/soc0/version"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_ACCE_VALUE"

    const-string v2, "/sys/devices/virtual/accelerometer/accelerometer/acc_file"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_PROX_READ_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_VALUE"

    const-string v2, "/sys/class/proximity/proximity/proximity_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_AVG"

    const-string v2, "/sys/class/proximity/proximity/proximity_avg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method private setupI9100G()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_SELFTEST"

    const-string v2, "/sys/class/sensors/gyro_sensor/selftest"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_CMD"

    const-string v2, "/sys/class/input/input4/enable"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sensors/light_sensor/lux"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_RAM_CHECK"

    const-string v2, "/sys/devices/system/soc/soc0/version"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_ACCE_VALUE"

    const-string v2, "/sys/class/sensors/accelerometer_sensor/raw_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_PROX_READ_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_VALUE"

    const-string v2, "/sys/class/sensors/proximity_sensor/state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_AVG"

    const-string v2, "/sys/class/sensors/proximity_sensor/prox_avg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method private setupI9101()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_SELFTEST"

    const-string v2, "/sys/class/sensors/gyro_sensor/selftest"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "GYRO_SENSOR_VENDOR"

    const-string v2, "Invensense"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sensors/light_sensor/lux"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_RAM_CHECK"

    const-string v2, "/sys/devices/system/soc/soc0/version"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_ACCE_VALUE"

    const-string v2, "/sys/class/sensors/accelerometer_sensor/raw_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_STATUS"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_FIRM_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_PART_VER"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSK_UP"

    const-string v2, "/sys/devices/virtual/sec/sec_touchkey/touchkey_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_PROX_READ_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_VALUE"

    const-string v2, "/sys/class/sensors/proximity_sensor/adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_AVG"

    const-string v2, "/sys/class/sensors/proximity_sensor/prox_avg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private setupI9103()V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_GYRO_SELFTEST"

    const-string v2, "/sys/class/sec/sec_mpu3050/gyro_selftest"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sec/sec_cm3663/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_RAM_CHECK"

    const-string v2, "/sys/devices/system/soc/soc0/version"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_STATUS"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_FIRM_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_PART_VER"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_version_panel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_THRESHOLD"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_threshold"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_TSP_UP"

    const-string v2, "sys/class/sec/sec_touchscreen/tsp_firm_update"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_CMD"

    const-string v2, "/sys/class/sec/sec_cm3663/lightsensor_file_cmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_CMD"

    const-string v2, "/sys/class/sec/sec_cm3663/proxsensor_file_cmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_PROX_VALUE"

    const-string v2, "/sys/class/sec/sec_cm3663/proxsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_TSK_SUPPORT"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "BOOL_SENSOR_PROX_READ_SUPPORT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "arg"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/appConfig;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
