.class Lcom/google/android/maps/driveabout/app/aQ;
.super Ljava/lang/Object;

# interfaces
.implements Ls/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aL;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls/C;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aU;-><init>(Lcom/google/android/maps/driveabout/app/aQ;Ls/C;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    check-cast p1, Ls/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aR;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aR;-><init>(Lcom/google/android/maps/driveabout/app/aQ;Ls/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aS;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aS;-><init>(Lcom/google/android/maps/driveabout/app/aQ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aT;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aT;-><init>(Lcom/google/android/maps/driveabout/app/aQ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
