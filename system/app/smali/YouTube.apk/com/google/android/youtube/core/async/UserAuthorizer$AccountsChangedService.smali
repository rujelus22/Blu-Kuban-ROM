.class public Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b()V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;->stopSelf()V

    .line 536
    const/4 v0, 0x2

    return v0
.end method
