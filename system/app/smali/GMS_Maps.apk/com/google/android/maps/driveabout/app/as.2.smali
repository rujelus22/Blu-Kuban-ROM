.class Lcom/google/android/maps/driveabout/app/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aN;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 2
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/D;)V
    .registers 4
    .parameter

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aW;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aW;-><init>(Lcom/google/android/maps/driveabout/app/aS;Lm/D;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 1041
    check-cast p1, Lm/b;

    .line 1042
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aT;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aT;-><init>(Lcom/google/android/maps/driveabout/app/aS;Lm/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;)V

    .line 1046
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1054
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1055
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aU;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aU;-><init>(Lcom/google/android/maps/driveabout/app/aS;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;)V

    .line 1060
    :cond_12
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1068
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1079
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1080
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aS;->a:Lcom/google/android/maps/driveabout/app/aN;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aV;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aV;-><init>(Lcom/google/android/maps/driveabout/app/aS;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;)V

    .line 1085
    :cond_12
    return-void
.end method
