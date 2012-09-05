.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;
.super Landroid/app/Activity;
.source "SecretWallpaperSetting.java"


# static fields
.field public static bSettingStarted:Z


# instance fields
.field private final REQUEST_SETTINGS:I

.field private final WEATHER_DEMON_WALLPAPER_SETTING:I

.field private mIsAccuweatherDaemon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->bSettingStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->WEATHER_DEMON_WALLPAPER_SETTING:I

    .line 56
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->REQUEST_SETTINGS:I

    .line 58
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->mIsAccuweatherDaemon:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->finish()V

    .line 104
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sput-boolean v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->bSettingStarted:Z

    .line 66
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    :try_start_a
    const-string v1, "com.sec.android.daemonapp.accuweather"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_11} :catch_3f

    .line 77
    :goto_11
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->mIsAccuweatherDaemon:Z

    if-ne v0, v4, :cond_4e

    .line 78
    const-string v0, "SecretWallpaper"

    const-string v1, "com.sec.android.daemonapp.accuweather found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.daemonapp.accuweather"

    const-string v2, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "SETTING_MODE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    :goto_3e
    return-void

    .line 71
    :catch_3f
    move-exception v0

    .line 72
    const-string v1, "SecretWallpaper"

    const-string v2, "com.sec.android.daemonapp.accuweather not found!!!! error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->mIsAccuweatherDaemon:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11

    .line 91
    :cond_4e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, v0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3e
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperSetting;->bSettingStarted:Z

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    return-void
.end method
