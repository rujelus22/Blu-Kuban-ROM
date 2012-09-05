.class Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;
.super Ljava/lang/Object;
.source "GrassRS.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/grass/GrassRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/grass/GrassRS;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/grass/GrassRS;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/grass/GrassRS;Lcom/android/wallpaper/grass/GrassRS$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;-><init>(Lcom/android/wallpaper/grass/GrassRS;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    #getter for: Lcom/android/wallpaper/grass/GrassRS;->mLocationUpdater:Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;
    invoke-static {v0}, Lcom/android/wallpaper/grass/GrassRS;->access$200(Lcom/android/wallpaper/grass/GrassRS;)Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 363
    iget-object v0, p0, Lcom/android/wallpaper/grass/GrassRS$LocationUpdater;->this$0:Lcom/android/wallpaper/grass/GrassRS;

    #calls: Lcom/android/wallpaper/grass/GrassRS;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/wallpaper/grass/GrassRS;->access$300(Lcom/android/wallpaper/grass/GrassRS;Landroid/location/Location;)V

    .line 368
    :goto_d
    return-void

    .line 365
    :cond_e
    const-string v0, "Grass"

    const-string v1, "mLocationUpdate is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 377
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 374
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 371
    return-void
.end method
