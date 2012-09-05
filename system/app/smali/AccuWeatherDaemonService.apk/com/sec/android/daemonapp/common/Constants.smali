.class public Lcom/sec/android/daemonapp/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field public static final ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.AUTOREFRESH"

.field public static final ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

.field public static final ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

.field public static final ACTION_SEC_SYNC_DATA_WITH_DAEMON:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

.field public static final ACTION_SYNC_DATA_WITH_WIDGET:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

.field public static final ACTION_SYNC_SETTING_WITH_WIDGET:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

.field public static final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

.field public static final ACTIVITY_FLAG_ADD_TO_MAP:I = 0x61a7

.field public static final ACTIVITY_RESULT_OK:I = 0x12c

.field public static final AUTO_REFRESH_12HOUR:I = 0x4

.field public static final AUTO_REFRESH_1HOUR:I = 0x1

.field public static final AUTO_REFRESH_24HOUR:I = 0x5

.field public static final AUTO_REFRESH_3HOUR:I = 0x2

.field public static final AUTO_REFRESH_6HOUR:I = 0x3

.field public static final AUTO_REFRESH_NONE:I = 0x0

.field public static final AUTO_REFRESH_TIME_12HOUR:J = 0x2932e00L

.field public static final AUTO_REFRESH_TIME_1HOUR:J = 0x36ee80L

.field public static final AUTO_REFRESH_TIME_24HOUR:J = 0x5265c00L

.field public static final AUTO_REFRESH_TIME_3HOUR:J = 0xa4cb80L

.field public static final AUTO_REFRESH_TIME_6HOUR:J = 0x1499700L

.field public static final CITY_PROVIDER_DEFAULT:I = 0x0

.field public static final CITY_PROVIDER_GPS:I = 0x1

.field public static final CITY_RESULT:Ljava/lang/String; = "CITY_RESULT"

.field public static final COLLAB_MODE:Ljava/lang/String; = "COLLAB_MODE"

.field public static final DB_FULL_EXCEPTION_ERR:I = -0x1

.field public static final DB_PROCESS_NONE:I = 0x0

.field public static final DB_PROCESS_SUCCESS:I = 0x1

.field public static final DEB_PRINT:Z = true

.field public static final DEB_TAG:Ljava/lang/String; = "AccuWeatherDaemonService"

.field public static final DEFAULT_TEMP_SCALE:I = 0x0

.field public static final GET_CURRENT_LOCATION_ERROR:I = 0xca

.field public static final GET_CURRENT_LOCATION_OK:I = 0xc8

.field public static final GET_CURRENT_LOCATION_PROVIDER_ERR:I = 0xc9

.field public static final GET_DATA_NETWORK_ERROR:I = 0x3f2

.field public static final GET_DATA_OK:I = 0x3f3

.field public static final HOUR:J = 0x36ee80L

.field public static final KEY_APP_SERVICE_STATUS:Ljava/lang/String; = "aw_daemon_service_key_app_service_status"

.field public static final KEY_AUTOREFRESH_INTERVAL:Ljava/lang/String; = "aw_daemon_service_key_autorefresh_interval"

.field public static final KEY_CITY_NAME:Ljava/lang/String; = "aw_daemon_service_key_city_name"

.field public static final KEY_CITY_STATE:Ljava/lang/String; = "aw_daemon_service_key_city_state"

.field public static final KEY_COUNTRY_NAME:Ljava/lang/String; = "aw_daemon_service_key_country_name"

.field public static final KEY_CURRENT_LOC:Ljava/lang/String; = "aw_daemon_service_key_current_location_setting"

.field public static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field public static final KEY_DETAIL_INFO:Ljava/lang/String; = "aw_daemon_service_key_detail_info"

.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_icon_num"

.field public static final KEY_LOC_CODE:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field public static final KEY_SERVICE_STATUS:Ljava/lang/String; = "aw_daemon_service_key_service_status"

.field public static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field public static final KEY_UPDATE_TIME:Ljava/lang/String; = "aw_daemon_service_key_updated_time"

.field public static final KEY_WEATHER_TEXT:Ljava/lang/String; = "aw_daemon_service_key_weather_text"

.field public static final LAUNCH_MODE:Ljava/lang/String; = "LAUNCH_MODE"

.field public static final MAX_CITIES:I = 0xa

.field public static final MIN:J = 0xea60L

.field public static final NOT_ENOUGHT_SPACE_ERR:I = 0x3e7

.field public static final REQCODE_SEARCHCITY:I = 0x21

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1

.field public static final SET_DISABLE:I = 0x0

.field public static final SET_ENABLE:I = 0x1

.field public static final SET_TIMEOUT:I = -0x13d30

.field public static final TEMP_SCALE_CENTIGRADE:I = 0x1

.field public static final TEMP_SCALE_FAHRENHEIT:I = 0x0

.field public static final TIME_EXCEEDED:I = -0x140b4

.field public static final USE_FAHRENHEIT:Z

.field public static final USE_THREE_HOURS_AUTO_REFRESH:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "sprint"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "verizon"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "uscc"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "cs"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "ATT"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "MPCS"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    sput-boolean v0, Lcom/sec/android/daemonapp/common/Constants;->USE_FAHRENHEIT:Z

    .line 102
    const-string v0, "cs"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/daemonapp/common/Constants;->USE_THREE_HOURS_AUTO_REFRESH:Z

    return-void

    .line 8
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
