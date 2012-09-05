.class public Lcom/sprint/dsa/diagnostics/LocationDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "LocationDiagnostic.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final KEY:Ljava/lang/String; = "location"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics_TEMP"


# instance fields
.field private mAccuracy:D

.field private mFindingLocation:Z

.field private mGpsEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLatitude:D

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLongitude:D

.field private mNetEnabled:Z

.field private mProvider:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 7
    .parameter "context"
    .parameter "stub"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 33
    const-string v0, "location"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 21
    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    .line 22
    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    .line 23
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLatitude:D

    .line 24
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLongitude:D

    .line 25
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mAccuracy:D

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mProvider:Ljava/lang/String;

    .line 27
    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mHandler:Landroid/os/Handler;

    .line 36
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/location/LocationManager;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-eqz v0, :cond_d

    .line 235
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled.gps"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_c
    return-object v0

    .line 236
    :cond_d
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v0, :cond_1a

    .line 237
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled.net"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 239
    :cond_1a
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v0, :cond_b

    .line 222
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHER:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 228
    :goto_a
    return-object v0

    .line 223
    :cond_b
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-eqz v0, :cond_12

    .line 224
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_a

    .line 225
    :cond_12
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v0, :cond_19

    .line 226
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_a

    .line 228
    :cond_19
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_a
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 187
    const/16 v0, 0xa

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 10

    .prologue
    .line 153
    const-string v2, ""

    .line 154
    .local v2, desc:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v3, :cond_c0

    .line 155
    :cond_a
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-eqz v3, :cond_7a

    .line 156
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.enabled.gps"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_16
    :goto_16
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-ne v3, v4, :cond_9a

    .line 161
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mProvider:Ljava/lang/String;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 162
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.enabled.foundvia.gps"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    :cond_2e
    :goto_2e
    iget-wide v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mAccuracy:D

    const-wide v5, 0x400a3f28fd4f4b98L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 168
    .local v0, accFeet:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.test.info"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLongitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .end local v0           #accFeet:J
    :cond_79
    :goto_79
    return-object v2

    .line 157
    :cond_7a
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v3, :cond_16

    .line 158
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.enabled.net"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 163
    :cond_87
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mProvider:Ljava/lang/String;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 164
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.enabled.foundvia.net"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 174
    :cond_9a
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-eq v3, v4, :cond_79

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.test.failed"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_79

    .line 180
    :cond_c0
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.disabled"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_79
.end method

.method public isAvailable()Z
    .registers 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 43
    .local v0, locManager:Landroid/location/LocationManager;
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    .line 49
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    .line 50
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public onCleanup()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 194
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 195
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    .line 198
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    .line 255
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->updateLocation(Landroid/location/Location;)V

    .line 257
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 258
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 263
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 268
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 273
    return-void
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 8

    .prologue
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    .line 70
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    .line 84
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    if-eqz v3, :cond_58

    .line 85
    :cond_1c
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    if-nez v3, :cond_52

    .line 87
    move-object v1, p0

    .line 88
    .local v1, listener:Landroid/location/LocationListener;
    new-instance v2, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;

    invoke-direct {v2, p0, v1}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$1;-><init>(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;Landroid/location/LocationListener;)V

    .line 101
    .local v2, runner:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2f

    .line 102
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 105
    :cond_2f
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    .line 106
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;

    invoke-direct {v4, p0, v1}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;-><init>(Lcom/sprint/dsa/diagnostics/LocationDiagnostic;Landroid/location/LocationListener;)V

    .line 121
    const-wide/16 v5, 0x7530

    .line 106
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 123
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mFindingLocation:Z

    .line 127
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 128
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 131
    .end local v1           #listener:Landroid/location/LocationListener;
    .end local v2           #runner:Ljava/lang/Runnable;
    :cond_52
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_66

    .line 146
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    .line 143
    :goto_57
    return-object v3

    .line 135
    :cond_58
    :try_start_58
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_WARN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 136
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 137
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_66

    .line 146
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    goto :goto_57

    .line 139
    :catch_66
    move-exception v0

    .line 140
    .local v0, ex:Ljava/lang/Exception;
    :try_start_67
    const-string v3, "SprintZone_Diagnostics_TEMP"

    const-string v4, "LocationDiagnostic Exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 142
    sget-object v3, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 143
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_7c

    .line 146
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    goto :goto_57

    .line 145
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_7c
    move-exception v3

    .line 146
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    .line 147
    throw v3
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 201
    if-eqz p1, :cond_26

    .line 204
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLatitude:D

    .line 205
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLongitude:D

    .line 206
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mAccuracy:D

    .line 207
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mProvider:Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 210
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 211
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    .line 215
    :cond_26
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mGpsEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationGpsEnabled:Z

    .line 56
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mNetEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationNetworkEnabled:Z

    .line 57
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLatitude:D

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationLatitude:D

    .line 58
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mLongitude:D

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationLongitude:D

    .line 59
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mAccuracy:D

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationAccuracy:D

    .line 60
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->mProvider:Ljava/lang/String;

    iput-object v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationProvider:Ljava/lang/String;

    .line 61
    return-void
.end method
