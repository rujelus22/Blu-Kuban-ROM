.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f0900bd

    .line 72
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 73
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 76
    if-eqz v2, :cond_1b

    array-length v0, v2

    if-nez v0, :cond_1f

    .line 79
    :cond_1b
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 98
    :goto_1e
    return-void

    .line 83
    :cond_1f
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->b(Landroid/content/Context;)V

    .line 86
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v3, v4, v4, p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const/4 v0, 0x0

    :goto_2a
    array-length v4, v2

    if-ge v0, v4, :cond_3e

    .line 88
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 89
    aget v5, v2, v0

    invoke-virtual {v4, v5, v6, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 90
    aget v5, v2, v0

    invoke-virtual {v1, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 96
    :cond_3e
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v2, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_1e
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 34
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->b(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 28
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 59
    const-string v0, "com.google.android.youtube.action.widget_update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 60
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->a(Landroid/content/Context;)V

    .line 65
    :goto_2b
    return-void

    .line 63
    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 46
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method
