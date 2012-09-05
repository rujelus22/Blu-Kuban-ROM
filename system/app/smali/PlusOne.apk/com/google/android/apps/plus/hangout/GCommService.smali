.class public Lcom/google/android/apps/plus/hangout/GCommService;
.super Landroid/app/Service;
.source "GCommService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/GCommService$1;,
        Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;,
        Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;
    }
.end annotation


# instance fields
.field private final eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

.field private final localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    .line 59
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;Lcom/google/android/apps/plus/hangout/GCommService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    .line 115
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    const-class v1, Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    const-string v0, "GCommService.onCreate called"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 72
    const-string v0, "GCommService.onDestroy called"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 74
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public removeHangoutNotification()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 113
    return-void
.end method

.method public showHangoutNotification(Landroid/content/Intent;)V
    .registers 8
    .parameter "notificationIntent"

    .prologue
    .line 98
    const-string v2, "GCommService.showHangoutNotification"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 101
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 102
    .local v0, notification:Landroid/app/Notification;
    const v2, 0x7f02004c

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 103
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 104
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->startForeground(ILandroid/app/Notification;)V

    .line 109
    return-void
.end method
