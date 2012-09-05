.class Lcom/google/android/maps/driveabout/app/l;
.super Lcom/google/android/maps/driveabout/app/j;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/j;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .registers 5

    const/4 v3, 0x3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected d()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->a:Landroid/media/AudioManager;

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
