.class public Lcom/google/android/maps/driveabout/app/RouteFetcherService;
.super Landroid/app/Service;


# instance fields
.field private a:Lu/r;

.field private b:Lcom/google/android/maps/driveabout/app/dg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/dg;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/dg;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dg;->d()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/dg;

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lu/r;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lu/r;

    invoke-virtual {v0}, Lu/r;->b()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lu/r;

    :cond_17
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->stopSelf(I)V

    const/4 v0, 0x2

    return v0
.end method
