.class public Lcom/vlingo/client/widget/InCarWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "InCarWidget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildWidgetView(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 12
    .parameter "context"
    .parameter "enabled"

    .prologue
    const v9, 0x7f0f0180

    const v8, 0x7f0f0182

    const v7, 0x7f0f0181

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "widget-control"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 54
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030072

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v2, views:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 59
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f0f017f

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v3, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v9, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 71
    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    :goto_4a
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v3, Lcom/vlingo/client/widget/SafeReaderButtonPressReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "widget_clicked"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    invoke-virtual {v2, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 86
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v3

    if-nez v3, :cond_73

    .line 87
    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    :goto_6e
    return-object v2

    .line 73
    :cond_6f
    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4a

    .line 90
    :cond_73
    if-eqz p1, :cond_7c

    .line 91
    invoke-virtual {v2, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6e

    .line 95
    :cond_7c
    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6e
.end method

.method public static updateAllWidgets(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "safereaderEnabled"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/vlingo/client/widget/InCarWidget;->buildWidgetView(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 42
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 43
    .local v0, mgr:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vlingo/client/widget/InCarWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 35
    invoke-static {p1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/vlingo/client/widget/InCarWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method
