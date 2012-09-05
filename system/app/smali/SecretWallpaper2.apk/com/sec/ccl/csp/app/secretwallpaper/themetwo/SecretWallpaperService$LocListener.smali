.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListener"
.end annotation


# instance fields
.field private mLocationUpdated:Z

.field private mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "provider"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mLocationUpdated:Z

    .line 881
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mProvider:Ljava/lang/String;

    .line 882
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mLocationUpdated:Z

    .line 886
    return-void
.end method

.method public isUpdated()Z
    .registers 2

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mLocationUpdated:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 893
    const-string v0, "SecretWallpaper"

    const-string v1, "Location changed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mLocationUpdated:Z

    .line 897
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$LocListener;->mProvider:Ljava/lang/String;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->locationUpdated(Landroid/location/Location;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Landroid/location/Location;Ljava/lang/String;)V

    .line 901
    :goto_19
    return-void

    .line 899
    :cond_1a
    const-string v0, "SecretWallpaper"

    const-string v1, "AccuweatherDaemon - onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 905
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 909
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 913
    return-void
.end method
