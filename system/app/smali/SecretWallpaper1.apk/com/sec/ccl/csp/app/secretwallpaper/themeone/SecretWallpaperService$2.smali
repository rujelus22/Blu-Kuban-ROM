.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;
.super Landroid/os/Handler;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)V
    .registers 2
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1133
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_44

    .line 1158
    :cond_6
    :goto_6
    return-void

    .line 1135
    :sswitch_7
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1136
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->updateWeatherInfo()Z

    goto :goto_6

    .line 1140
    :sswitch_15
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$700(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->showLocationConsentAlertDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$800(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Landroid/content/Context;)V

    goto :goto_6

    .line 1143
    :sswitch_21
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 1144
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->startCurrentLocationWeatherDataService()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$900(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)V

    goto :goto_6

    .line 1146
    :cond_2f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkNetAccessable()Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1147
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkUpdate(Z)Z

    goto :goto_6

    .line 1152
    :sswitch_3d
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setImageSetChange(Z)V

    goto :goto_6

    .line 1133
    nop

    :sswitch_data_44
    .sparse-switch
        0x12c -> :sswitch_15
        0x136 -> :sswitch_7
        0x140 -> :sswitch_21
        0x14a -> :sswitch_3d
    .end sparse-switch
.end method
