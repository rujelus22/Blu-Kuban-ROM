.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;
.super Ljava/util/TimerTask;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayTimerTask"
.end annotation


# instance fields
.field private mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 920
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 921
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->mProvider:Ljava/lang/String;

    .line 922
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 927
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->mProvider:Ljava/lang/String;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 928
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$200()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_47

    .line 929
    const-string v0, "SecretWallpaper"

    const-string v1, "Location(NET) update failed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$308(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    .line 932
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 933
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$400()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 934
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$DelayTimerTask;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkWeather()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    .line 937
    :cond_3c
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$600()Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$200()Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 943
    :cond_47
    :goto_47
    return-void

    .line 941
    :cond_48
    const-string v0, "SecretWallpaper"

    const-string v1, "AccuweatherDaemon - Delay Time Task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method
