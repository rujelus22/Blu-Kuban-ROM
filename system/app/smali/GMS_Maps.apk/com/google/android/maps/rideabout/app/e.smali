.class public abstract Lcom/google/android/maps/rideabout/app/e;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/e;->a:Landroid/media/AudioManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/rideabout/app/e;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/google/android/maps/rideabout/app/g;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/g;-><init>(Landroid/content/Context;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/maps/rideabout/app/f;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/f;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/e;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    return-void
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/e;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    :cond_9
    return-void
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()Z
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/e;->b:Z

    return v0
.end method
