.class public Lcom/google/android/maps/driveabout/app/RouteFetcherService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lo/r;

.field private b:Lcom/google/android/maps/driveabout/app/cU;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/cU;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cU;->d()V

    .line 54
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->b:Lcom/google/android/maps/driveabout/app/cU;

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lo/r;

    if-eqz v0, :cond_17

    .line 57
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lo/r;

    invoke-virtual {v0}, Lo/r;->b()V

    .line 58
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->a:Lo/r;

    .line 60
    :cond_17
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/RouteFetcherService;->stopSelf(I)V

    .line 71
    const/4 v0, 0x2

    return v0
.end method
