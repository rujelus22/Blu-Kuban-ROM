.class Lcom/google/android/maps/driveabout/app/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lm/b;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 1083
    :goto_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v2, Lm/b;

    invoke-direct {v2, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lm/b;)Lm/b;

    .line 1084
    if-nez v0, :cond_1a

    .line 1085
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 1087
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/bL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lm/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bL;->a(Lm/b;)V

    .line 1088
    return-void

    .line 1082
    :cond_2a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1090
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1092
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1094
    return-void
.end method
