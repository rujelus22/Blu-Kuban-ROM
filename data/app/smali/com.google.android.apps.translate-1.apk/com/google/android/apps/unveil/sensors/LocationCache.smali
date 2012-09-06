.class public Lcom/google/android/apps/unveil/sensors/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;


# instance fields
.field private cachedEncryptedLocation:Lcom/google/protobuf/ByteString;

.field private cachedLocation:Landroid/location/Location;

.field private cachedProtoLocation:Lcom/google/goggles/LocationProtos$Location;

.field private final encrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

.field private final evictionMeters:F


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Lcom/google/android/apps/unveil/network/LatLngEncrypter;F)V
    .registers 4
    .parameter "locationProvider"
    .parameter "latLngEncrypter"
    .parameter "evictionMeters"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->encrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    .line 33
    iput p3, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->evictionMeters:F

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->registerListener(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;)Z

    .line 35
    return-void
.end method

.method private isClose(Landroid/location/Location;)Z
    .registers 5
    .parameter "newLocation"

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    if-nez v1, :cond_6

    .line 58
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    iget v2, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->evictionMeters:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setCachedLocation(Landroid/location/Location;)V
    .registers 3
    .parameter "newLocation"

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    .line 49
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedProtoLocation:Lcom/google/goggles/LocationProtos$Location;

    .line 50
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedEncryptedLocation:Lcom/google/protobuf/ByteString;

    .line 51
    return-void
.end method

.method private updateEncryptedCache()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    if-nez v0, :cond_5

    .line 98
    :goto_4
    return-void

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->encrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/LocationCache;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/LocationProtos$Location;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->encryptLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedEncryptedLocation:Lcom/google/protobuf/ByteString;

    goto :goto_4
.end method

.method private updateProtoCache()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    if-nez v0, :cond_5

    .line 78
    :goto_4
    return-void

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->toLocationProto(Landroid/location/Location;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedProtoLocation:Lcom/google/goggles/LocationProtos$Location;

    goto :goto_4
.end method


# virtual methods
.method public getEncryptedLocation()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedEncryptedLocation:Lcom/google/protobuf/ByteString;

    if-nez v0, :cond_7

    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/LocationCache;->updateEncryptedCache()V

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedEncryptedLocation:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLocation()Lcom/google/goggles/LocationProtos$Location;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedProtoLocation:Lcom/google/goggles/LocationProtos$Location;

    if-nez v0, :cond_7

    .line 66
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/LocationCache;->updateProtoCache()V

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/LocationCache;->cachedProtoLocation:Lcom/google/goggles/LocationProtos$Location;

    return-object v0
.end method

.method public onLocationChanged(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Landroid/location/Location;)V
    .registers 4
    .parameter "locationProvider"
    .parameter "newLocation"

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/sensors/LocationCache;->isClose(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    :goto_6
    return-void

    .line 44
    :cond_7
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/sensors/LocationCache;->setCachedLocation(Landroid/location/Location;)V

    goto :goto_6
.end method

.method public onLocationDisabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V
    .registers 2
    .parameter "locationProvider"

    .prologue
    .line 103
    return-void
.end method

.method public onLocationEnabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V
    .registers 2
    .parameter "locationProvider"

    .prologue
    .line 108
    return-void
.end method
