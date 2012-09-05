.class public Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;
.super Landroid/app/Service;
.source "DigitalClockService.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService$1;-><init>(Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    const-string v2, "DigitalClockAppWidgetService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v2, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    invoke-static {}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockWidgetProvider;->getWidgetRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 99
    const-string v0, "DigitalClockAppWidgetService"

    const-string v1, "onDestroy : The widget is alive. service will be reStarted!!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "digitalclock.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/digitalclock/DigitalClockService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    :goto_1d
    return-void

    .line 103
    :cond_1e
    const-string v0, "DigitalClockAppWidgetService"

    const-string v1, "onDestroy : End"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/digitalclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method
