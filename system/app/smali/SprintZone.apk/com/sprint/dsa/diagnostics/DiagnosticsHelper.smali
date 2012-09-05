.class public Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;
.super Ljava/lang/Object;
.source "DiagnosticsHelper.java"


# static fields
.field public static final SETTING_4G:I = 0x3

.field public static final SETTING_BLUETOOTH:I = 0x4

.field public static final SETTING_DISPLAY:I = 0x1

.field public static final SETTING_LOCATION:I = 0xa

.field public static final SETTING_MAIN_SETTINGS:I = 0x0

.field public static final SETTING_MICRO_SD:I = 0x6

.field public static final SETTING_MOBILE_ROAMING:I = 0x9

.field public static final SETTING_SYNC:I = 0x7

.field public static final SETTING_USB:I = 0x8

.field public static final SETTING_WIFI:I = 0x5

.field public static final SETTING_WIRELESS_NETWORK:I = 0x2

.field private static mActions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    const-string v2, "android.settings.SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 38
    const-string v2, "android.settings.DISPLAY_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 39
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 40
    const-string v2, "android.settings.SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 41
    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 42
    const-string v2, "android.settings.WIFI_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 43
    const-string v2, "android.settings.MEMORY_CARD_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 44
    const-string v2, "android.settings.SYNC_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 47
    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    aput-object v2, v0, v1

    .line 36
    sput-object v0, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->mActions:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static displaySetting(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 55
    sget-object v1, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->mActions:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 56
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 57
    invoke-static {p0, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->launchSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_9
    :goto_9
    return-void

    .line 58
    :cond_a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 59
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wimax.WimaxSettings"

    invoke-static {p0, v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->launchSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 60
    :cond_15
    const/16 v1, 0x8

    if-ne p1, v1, :cond_21

    .line 61
    const-string v1, "com.htc.android.psclient"

    const-string v2, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-static {p0, v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->launchSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 62
    :cond_21
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    .line 63
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-static {p0, v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticsHelper;->launchSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static launchSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "action"

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 78
    .end local v1           #intent:Landroid/content/Intent;
    :goto_d
    return-void

    .line 75
    :catch_e
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_Diagnostics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Settings not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private static launchSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 85
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v2, toLaunch:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 94
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #toLaunch:Landroid/content/ComponentName;
    :goto_1c
    return-void

    .line 91
    :catch_1d
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SprintZone_Diagnostics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Settings not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public static test3G(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 99
    return-void
.end method

.method public static test4G(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 104
    return-void
.end method
