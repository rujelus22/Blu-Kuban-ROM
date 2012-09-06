.class public Lcom/google/android/maps/driveabout/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    .line 20
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_f

    .line 28
    const-string v0, "a"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 30
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/j;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    .line 31
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/j;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    .line 38
    :cond_9
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    return v0
.end method

.method protected d()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 51
    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected e()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

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
