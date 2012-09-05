.class public Lcom/sec/android/widgetapp/apnews/engine/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;
    }
.end annotation


# instance fields
.field private mDateFormatObserver:Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;-><init>(Lcom/sec/android/widgetapp/apnews/engine/WidgetService;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/WidgetService;->mDateFormatObserver:Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/WidgetService;->mDateFormatObserver:Lcom/sec/android/widgetapp/apnews/engine/WidgetService$DateFormatObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 108
    const-string v0, ""

    const-string v1, "Serviece Start"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0
.end method
