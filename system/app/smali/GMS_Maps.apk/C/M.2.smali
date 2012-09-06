.class public LC/M;
.super LC/b;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Lg/c;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "network"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 36
    iput-object p2, p0, LC/M;->c:Landroid/content/Context;

    .line 37
    iput-object p3, p0, LC/M;->d:Lcom/google/googlenav/common/a;

    .line 38
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, LC/M;->a:Landroid/location/LocationManager;

    .line 39
    return-void
.end method

.method private static a()I
    .registers 1

    .prologue
    .line 121
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->c:I

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/google/android/location/clientlib/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public b()V
    .registers 8

    .prologue
    .line 68
    invoke-virtual {p0}, LC/M;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    :cond_6
    :goto_6
    return-void

    .line 71
    :cond_7
    invoke-static {}, LC/M;->a()I

    move-result v2

    .line 72
    iget-object v0, p0, LC/M;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 76
    iget-object v0, p0, LC/M;->c:Landroid/content/Context;

    invoke-static {v0}, LC/M;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 78
    iget-object v0, p0, LC/M;->b:Lg/c;

    if-eqz v0, :cond_31

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_31
    new-instance v0, Lg/c;

    iget-object v1, p0, LC/M;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, v6}, Lg/c;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, LC/M;->b:Lg/c;

    .line 88
    :goto_3a
    invoke-super {p0}, LC/b;->b()V

    goto :goto_6

    .line 85
    :cond_3e
    const-string v1, "network"

    .line 86
    iget-object v0, p0, LC/M;->a:Landroid/location/LocationManager;

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_3a
.end method

.method public d()V
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, LC/M;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    :cond_6
    :goto_6
    return-void

    .line 106
    :cond_7
    invoke-super {p0}, LC/b;->d()V

    .line 107
    iget-object v0, p0, LC/M;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 108
    iget-object v0, p0, LC/M;->b:Lg/c;

    if-eqz v0, :cond_6

    .line 109
    iget-object v0, p0, LC/M;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->c()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, LC/M;->b:Lg/c;

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 45
    new-instance v0, LC/R;

    invoke-direct {v0, p1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 46
    sget-object v1, LC/S;->b:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    .line 47
    iget-object v1, p0, LC/M;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LC/R;->setTime(J)V

    .line 48
    invoke-super {p0, v0}, LC/b;->a(LC/R;)V

    .line 49
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p1}, LC/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p1}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p1, p2}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method
