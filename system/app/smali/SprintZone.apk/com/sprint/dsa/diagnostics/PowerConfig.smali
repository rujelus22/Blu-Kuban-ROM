.class public Lcom/sprint/dsa/diagnostics/PowerConfig;
.super Ljava/lang/Object;
.source "PowerConfig.java"


# static fields
.field public static final LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig; = null

.field public static final LOW_SCREEN_BRIGHTNESS:I = 0x66

.field public static final LOW_SCREEN_TIMEOUT:I = 0x3a98

.field public static final PREF_BLUETOOTH_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.bluetoothEnabled"

.field public static final PREF_GPS_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.gpsEnabled"

.field public static final PREF_PREFIX:Ljava/lang/String; = "com.sprint.dsa.power."

.field public static final PREF_ROAMING_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.roamingEnabled"

.field public static final PREF_SCREEN_BRIGHTNESS:Ljava/lang/String; = "com.sprint.dsa.power.screenBrightness"

.field public static final PREF_SCREEN_TIMEOUT:Ljava/lang/String; = "com.sprint.dsa.power.screenTimeout"

.field public static final PREF_STORED:Ljava/lang/String; = "com.sprint.dsa.power.stored"

.field public static final PREF_SYNC_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.syncEnabled"

.field public static final PREF_WIFI_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.wifiEnabled"

.field public static final PREF_WIMAX_ENABLED:Ljava/lang/String; = "com.sprint.dsa.power.wimaxEnabled"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field public bluetoothEnabled:Z

.field public gpsEnabled:Z

.field public roamingEnabled:Z

.field public screenBrightness:I

.field public screenTimeout:J

.field public syncEnabled:Z

.field public wifiEnabled:Z

.field public wimaxEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getLowPowerMode()Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v0

    sput-object v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    .line 42
    iput v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    .line 48
    return-void
.end method

.method public static clearPreferences(Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "prefs"

    .prologue
    .line 211
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->clearPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static clearPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "prefs"
    .parameter "prefix"

    .prologue
    .line 215
    if-nez p1, :cond_4

    const-string p1, ""

    .line 217
    :cond_4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.stored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wifiEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.bluetoothEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wimaxEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.gpsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.syncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    return-void
.end method

.method public static fromPreferences(Landroid/content/SharedPreferences;)Lcom/sprint/dsa/diagnostics/PowerConfig;
    .registers 2
    .parameter "prefs"

    .prologue
    .line 183
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->fromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v0

    return-object v0
.end method

.method public static fromPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/PowerConfig;
    .registers 6
    .parameter "prefs"
    .parameter "prefix"

    .prologue
    const/4 v3, 0x0

    .line 187
    if-nez p1, :cond_5

    const-string p1, ""

    .line 189
    :cond_5
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;-><init>()V

    .line 190
    .local v0, pc:Lcom/sprint/dsa/diagnostics/PowerConfig;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wifiEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.bluetoothEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wimaxEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.gpsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.syncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.roamingEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    .line 198
    return-object v0
.end method

.method public static getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 52
    new-instance v4, Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-direct {v4}, Lcom/sprint/dsa/diagnostics/PowerConfig;-><init>()V

    .line 55
    .local v4, pc:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 57
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 59
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 58
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 60
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 61
    .local v0, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const/4 v10, 0x6

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 63
    .local v7, wimaxInfo:Landroid/net/NetworkInfo;
    const-string v10, "data_roaming"

    invoke-static {v2, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, roamingInfo:Ljava/lang/String;
    if-eqz v6, :cond_76

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_76

    move v10, v8

    :goto_33
    iput-boolean v10, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    .line 67
    if-eqz v0, :cond_78

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_78

    move v10, v8

    :goto_3e
    iput-boolean v10, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    .line 68
    if-eqz v7, :cond_7a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_7a

    move v10, v8

    :goto_49
    iput-boolean v10, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    .line 69
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    iput-boolean v10, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    .line 71
    const-string v10, "gps"

    .line 70
    invoke-static {v2, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 72
    if-eqz v5, :cond_7c

    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    :goto_63
    iput-boolean v8, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    .line 74
    const-string v8, "screen_brightness"

    .line 73
    invoke-static {v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 76
    const-string v8, "screen_off_timeout"

    .line 75
    invoke-static {v2, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_75} :catch_7e

    .line 81
    .end local v0           #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #roamingInfo:Ljava/lang/String;
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v7           #wimaxInfo:Landroid/net/NetworkInfo;
    :goto_75
    return-object v4

    .restart local v0       #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #contentResolver:Landroid/content/ContentResolver;
    .restart local v5       #roamingInfo:Ljava/lang/String;
    .restart local v6       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v7       #wimaxInfo:Landroid/net/NetworkInfo;
    :cond_76
    move v10, v9

    .line 66
    goto :goto_33

    :cond_78
    move v10, v9

    .line 67
    goto :goto_3e

    :cond_7a
    move v10, v9

    .line 68
    goto :goto_49

    :cond_7c
    move v8, v9

    .line 72
    goto :goto_63

    .line 77
    .end local v0           #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #roamingInfo:Ljava/lang/String;
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v7           #wimaxInfo:Landroid/net/NetworkInfo;
    :catch_7e
    move-exception v3

    .line 78
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "SprintZone_Diagnostics"

    const-string v9, "Error getting power configuration..."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75
.end method

.method public static getLowPowerMode()Lcom/sprint/dsa/diagnostics/PowerConfig;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;-><init>()V

    .line 86
    .local v0, pc:Lcom/sprint/dsa/diagnostics/PowerConfig;
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    .line 87
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    .line 88
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    .line 89
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 90
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    .line 91
    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    .line 92
    const/16 v1, 0x66

    iput v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 93
    const-wide/16 v1, 0x3a98

    iput-wide v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    .line 94
    return-object v0
.end method

.method public static inPreferences(Landroid/content/SharedPreferences;)Z
    .registers 2
    .parameter "prefs"

    .prologue
    .line 202
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->inPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static inPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .registers 4
    .parameter "prefs"
    .parameter "prefix"

    .prologue
    .line 206
    if-nez p1, :cond_4

    const-string p1, ""

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sprint.dsa.power.stored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 104
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 109
    .local v0, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const/4 v3, 0x0

    .line 112
    .local v3, updated:Z
    iget-boolean v5, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    .line 116
    iget-boolean v5, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    if-eqz v5, :cond_4f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 117
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    .line 124
    :cond_25
    :goto_25
    iget-boolean v5, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_65

    .line 129
    :try_start_2a
    const-string v5, "gps"

    iget-boolean v6, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 128
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_5e

    .line 136
    :goto_31
    :try_start_31
    const-string v5, "screen_brightness"

    iget v6, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 135
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 140
    const-string v5, "screen_off_timeout"

    iget-wide v6, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    .line 139
    invoke-static {v1, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3

    .line 145
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_4e

    .line 146
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 159
    .end local v0           #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #updated:Z
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4e
    :goto_4e
    return-void

    .line 118
    .restart local v0       #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #updated:Z
    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local p1
    :cond_4f
    iget-boolean v5, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    if-nez v5, :cond_25

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 119
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v3

    goto :goto_25

    .line 130
    :catch_5e
    move-exception v2

    .line 131
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "SprintZone_Diagnostics"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_64} :catch_65

    goto :goto_31

    .line 156
    .end local v0           #bluetooth:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #updated:Z
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local p1
    :catch_65
    move-exception v5

    goto :goto_4e
.end method

.method public copy()Lcom/sprint/dsa/diagnostics/PowerConfig;
    .registers 4

    .prologue
    .line 244
    new-instance v0, Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;-><init>()V

    .line 245
    .local v0, copy:Lcom/sprint/dsa/diagnostics/PowerConfig;
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    .line 246
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    .line 247
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    .line 248
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    .line 249
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    .line 250
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    iput-boolean v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    .line 251
    iget v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    iput v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    .line 252
    iget-wide v1, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    iput-wide v1, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    .line 253
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_10

    instance-of v2, p1, Lcom/sprint/dsa/diagnostics/PowerConfig;

    if-eqz v2, :cond_10

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 261
    .local v0, p:Lcom/sprint/dsa/diagnostics/PowerConfig;
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    if-eq v2, v3, :cond_11

    .line 271
    .end local v0           #p:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :cond_10
    :goto_10
    return v1

    .line 262
    .restart local v0       #p:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :cond_11
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    if-ne v2, v3, :cond_10

    .line 263
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    if-ne v2, v3, :cond_10

    .line 264
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    if-ne v2, v3, :cond_10

    .line 265
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    if-ne v2, v3, :cond_10

    .line 266
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    iget-boolean v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    if-ne v2, v3, :cond_10

    .line 267
    iget v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    iget v3, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    if-ne v2, v3, :cond_10

    .line 268
    iget-wide v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    iget-wide v4, v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 269
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public isHighPower()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    if-eqz v0, :cond_e

    .line 237
    :cond_c
    const/4 v0, 0x1

    .line 239
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isLowPower()Z
    .registers 2

    .prologue
    .line 231
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerConfig;->LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-virtual {v0, p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toPreferences(Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "prefs"

    .prologue
    .line 163
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->toPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public toPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "prefs"
    .parameter "prefix"

    .prologue
    .line 167
    if-nez p2, :cond_4

    const-string p2, ""

    .line 169
    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.stored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wifiEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.bluetoothEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.wimaxEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.gpsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.syncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.roamingEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprint.dsa.power.screenTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
