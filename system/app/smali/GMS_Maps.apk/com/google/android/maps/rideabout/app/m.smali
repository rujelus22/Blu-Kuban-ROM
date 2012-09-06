.class Lcom/google/android/maps/rideabout/app/m;
.super Lcom/google/android/maps/rideabout/app/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 3
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/k;-><init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/l;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected d()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    const/16 v1, 0xc3b

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/m;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 203
    return-void
.end method

.method protected e()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/m;->b:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 212
    return-void
.end method
