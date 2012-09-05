.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 2
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, action:Ljava/lang/String;
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v2, "com.android.wallpaper.livepicker.SET_LIVE_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1154
    const-string v2, "WALLPAPER_PACKAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v2, "com.sec.ccl.csp.app.secretwallpaper.themetwo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1158
    const-string v2, "SecretWallpaper"

    const-string v3, "Ocean Weather GET SET Wallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v2, v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v3, v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1170
    .end local v1           #packageName:Ljava/lang/String;
    :cond_62
    :goto_62
    return-void

    .line 1162
    :cond_63
    const-string v2, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1163
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v2, v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v3, v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    const/16 v4, 0x136

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_62

    .line 1164
    :cond_7d
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1165
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v2, v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v3, v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mWeatherHandler:Landroid/os/Handler;

    const/16 v4, 0x140

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_62

    .line 1166
    :cond_97
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1167
    const-string v2, "SecretWallpaper"

    const-string v3, "ACTION_USER_PRESENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const/4 v3, 0x1

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    goto :goto_62
.end method
