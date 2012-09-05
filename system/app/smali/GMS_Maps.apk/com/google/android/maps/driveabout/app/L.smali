.class Lcom/google/android/maps/driveabout/app/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/L;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/L;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/L;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Ls/b;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/L;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v2, Ls/b;

    invoke-direct {v2, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ls/b;)Ls/b;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/L;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
