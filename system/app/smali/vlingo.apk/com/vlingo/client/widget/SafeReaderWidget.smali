.class public Lcom/vlingo/client/widget/SafeReaderWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SafeReaderWidget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildWidgetView(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 10
    .parameter "context"
    .parameter "enabled"

    .prologue
    const v7, 0x7f0f0183

    const/4 v6, 0x0

    .line 37
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030073

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 39
    .local v3, views:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v4

    const-string v5, "widget-safereader"

    invoke-virtual {v4, v5}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vlingo/client/widget/SafeReaderButtonPressReceiver;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "widget_clicked"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 45
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 46
    if-eqz p1, :cond_36

    const v0, 0x7f02007a

    .line 47
    .local v0, imageResId:I
    :goto_32
    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 49
    return-object v3

    .line 46
    .end local v0           #imageResId:I
    :cond_36
    const v0, 0x7f020079

    goto :goto_32
.end method

.method public static updateAllWidgets(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "safereaderEnabled"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/vlingo/client/widget/SafeReaderWidget;->buildWidgetView(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 31
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 32
    .local v0, mgr:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vlingo/client/widget/SafeReaderWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 26
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/vlingo/client/widget/SafeReaderWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 27
    return-void
.end method
