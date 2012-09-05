.class public abstract Lcom/google/android/maps/driveabout/app/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/j;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/google/android/maps/driveabout/app/l;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/l;-><init>(Landroid/content/Context;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/maps/driveabout/app/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/k;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_f

    const-string v0, "a"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/j;->a:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/j;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/j;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    :cond_9
    return-void
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()Z
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/j;->b:Z

    return v0
.end method
