.class public Lcom/sec/android/app/servicemodeapp/appConfig;
.super Ljava/lang/Object;
.source "appConfig.java"


# static fields
.field private static final instance:Lcom/sec/android/app/servicemodeapp/appConfig;


# instance fields
.field private prop:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/sec/android/app/servicemodeapp/appConfig;

    invoke-direct {v0}, Lcom/sec/android/app/servicemodeapp/appConfig;-><init>()V

    sput-object v0, Lcom/sec/android/app/servicemodeapp/appConfig;->instance:Lcom/sec/android/app/servicemodeapp/appConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    .line 16
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    .line 18
    const-string v1, "ril.model_id"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, product:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    const-string v1, "I9103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 22
    :cond_2c
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupI9103()V

    .line 48
    :goto_2f
    return-void

    .line 25
    :cond_30
    const-string v1, "I9100G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupI9100G()V

    goto :goto_2f

    .line 29
    :cond_3c
    const-string v1, "I9101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupI9101()V

    goto :goto_2f

    .line 33
    :cond_48
    const-string v1, "E110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "I717"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 34
    :cond_58
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupE110S()V

    goto :goto_2f

    .line 37
    :cond_5c
    const-string v1, "I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "SC02C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 38
    :cond_6c
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupI9100()V

    goto :goto_2f

    .line 41
    :cond_70
    const-string v1, "D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "D705"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 42
    :cond_80
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupD710()V

    goto :goto_2f

    .line 46
    :cond_84
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/appConfig;->setupI9101()V

    goto :goto_2f
.end method

.method public static getInstance()Lcom/sec/android/app/servicemodeapp/appConfig;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/sec/android/app/servicemodeapp/appConfig;->instance:Lcom/sec/android/app/servicemodeapp/appConfig;

    return-object v0
.end method

.method private setupD710()V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sensors/light_sensor/lux"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEST_MODE"

    const-string v2, "/sys/class/power_supply/battery/batt_test_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/backlight/pwm-backlight/device/lcd_power"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_radc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_V_F_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_v_f_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VFOCV"

    const-string v2, "/sys/devices/platform/sec-battery/power_supply/battery/batt_vfocv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method private setupE110S()V
    .registers 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_CMD"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_cmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/pwm-backlight/device/lcd_power"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_avg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VFOCV"

    const-string v2, "/sys/devices/platform/sec-battery/power_supply/battery/batt_vfocv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private setupI9100()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_CMD"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_cmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEST_MODE"

    const-string v2, "/sys/class/power_supply/battery/batt_test_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/backlight/pwm-backlight/device/lcd_power"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_V_F_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_v_f_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VFOCV"

    const-string v2, "/sys/devices/platform/sec-battery/power_supply/battery/batt_vfocv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private setupI9100G()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sensors/light_sensor/lux"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEST_MODE"

    const-string v2, "/sys/class/power_supply/battery/batt_test_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/backlight/pwm-backlight/device/lcd_power"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_V_F_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_v_f_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VFOCV"

    const-string v2, "/sys/devices/platform/sec-battery/power_supply/battery/batt_vfocv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private setupI9101()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/sensors/light_sensor/lux"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEST_MODE"

    const-string v2, "/sys/class/power_supply/battery/batt_test_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/backlight/pwm-backlight/device/lcd_power"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_vol_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_CAL"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP_ADC_AVER"

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc_aver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_V_F_ADC"

    const-string v2, "/sys/class/power_supply/battery/batt_v_f_adc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VFOCV"

    const-string v2, "/sys/devices/platform/sec-battery/power_supply/battery/batt_vfocv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private setupI9103()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_VALUE"

    const-string v2, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_SENSOR_LIGH_CMD"

    const-string v2, "/sys/class/sec/sec_cm3663/lightsensor_file_cmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_RESET"

    const-string v2, "/sys/class/power_supply/battery/batt_reset_soc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_LCD_POWER"

    const-string v2, "/sys/class/sec/sec_tune_lcd/lcd_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_VOL"

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_TEMP"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_CAPA"

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    const-string v1, "PATH_BATT_THERMAL"

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "arg"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/appConfig;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
