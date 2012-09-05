.class Lcom/google/android/maps/rideabout/app/g;
.super Lcom/google/android/maps/rideabout/app/e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/g;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected d()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/g;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
