.class public Lcom/google/googlenav/android/background/MapWorkerService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    const-string v0, "MapWorkerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 37
    invoke-virtual {p0}, Lcom/google/googlenav/android/background/MapWorkerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/googlenav/android/background/MapWorkerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 39
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "com.google.googlenav.android.background.ON_PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 47
    new-instance v0, Lcom/google/googlenav/android/background/a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/background/a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/background/a;->a()V

    .line 58
    :cond_18
    :goto_18
    return-void

    .line 48
    :cond_19
    const-string v1, "com.google.android.apps.maps.PREFETCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    new-instance v0, Lcom/google/googlenav/android/background/b;

    invoke-direct {v0, p1}, Lcom/google/googlenav/android/background/b;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/background/b;->a()V

    goto :goto_18
.end method
