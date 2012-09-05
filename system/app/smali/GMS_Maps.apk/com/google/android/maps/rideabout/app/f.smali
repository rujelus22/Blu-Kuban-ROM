.class Lcom/google/android/maps/rideabout/app/f;
.super Lcom/google/android/maps/rideabout/app/e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/f;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    return v2
.end method

.method protected d()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/f;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    const/4 v0, 0x1

    return v0
.end method
