.class public Lcom/google/android/maps/rideabout/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    .line 22
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/e;->a:Landroid/media/AudioManager;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 27
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/e;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    .line 29
    return-void

    .line 27
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/e;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    .line 36
    :cond_d
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    return v0
.end method
