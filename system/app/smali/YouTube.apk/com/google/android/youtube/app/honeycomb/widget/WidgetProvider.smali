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
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f080131

    .line 75
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1b

    array-length v0, v2

    if-nez v0, :cond_1f

    .line 82
    :cond_1b
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 103
    :goto_1e
    return-void

    .line 86
    :cond_1f
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->b(Landroid/content/Context;)V

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v3, v4, v4, p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const/4 v0, 0x0

    :goto_2a
    array-length v4, v2

    if-ge v0, v4, :cond_48

    .line 91
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/c;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 92
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_42

    .line 93
    invoke-virtual {v4, v7, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 98
    :goto_3a
    aget v5, v2, v0

    invoke-virtual {v1, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 96
    :cond_42
    aget v5, v2, v0

    invoke-virtual {v4, v5, v7, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    goto :goto_3a

    .line 101
    :cond_48
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2, v7}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_1e
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 110
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 35
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->b(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 38
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 28
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 62
    const-string v0, "com.google.android.youtube.action.widget_update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 63
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 64
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->a(Landroid/content/Context;)V

    .line 68
    :goto_27
    return-void

    .line 66
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_27
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 48
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->a(Landroid/content/Context;)V

    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 50
    return-void
.end method
