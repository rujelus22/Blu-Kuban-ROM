.class public final LC/c;
.super LC/b;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private final b:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 32
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/a;

    iput-object v0, p0, LC/c;->b:Lcom/google/googlenav/common/a;

    .line 33
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, LC/c;->a:Landroid/location/LocationManager;

    .line 34
    return-void
.end method

.method private static a()I
    .registers 1

    .prologue
    .line 89
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->c:I

    return v0
.end method


# virtual methods
.method public b()V
    .registers 8

    .prologue
    .line 61
    invoke-virtual {p0}, LC/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    :cond_6
    :goto_6
    return-void

    .line 64
    :cond_7
    iget-object v0, p0, LC/c;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    invoke-static {}, LC/c;->a()I

    move-result v2

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 69
    iget-object v0, p0, LC/c;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 71
    invoke-super {p0}, LC/b;->b()V

    goto :goto_6
.end method

.method public d()V
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, LC/c;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 81
    :goto_6
    return-void

    .line 79
    :cond_7
    invoke-super {p0}, LC/b;->d()V

    .line 80
    iget-object v0, p0, LC/c;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 38
    new-instance v0, LC/R;

    invoke-direct {v0, p1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 39
    sget-object v1, LC/S;->a:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    .line 40
    iget-object v1, p0, LC/c;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LC/R;->setTime(J)V

    .line 41
    invoke-super {p0, v0}, LC/b;->a(LC/R;)V

    .line 42
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p1}, LC/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p1}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p1, p2}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method
