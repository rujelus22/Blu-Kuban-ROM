.class public abstract Lcom/vlingo/client/widget/VlingoWidgetBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "VlingoWidgetBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract containsBarButton()Z
.end method

.method protected abstract containsOpenVlingoButton()Z
.end method

.method protected abstract containsRecordButton()Z
.end method

.method protected abstract getDefaultLayout()I
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 13
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v8, 0x0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 31
    array-length v0, p3

    .line 33
    .local v0, N:I
    invoke-virtual {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;->onWidgetUpdate()V

    .line 37
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_65

    .line 38
    aget v1, p3, v2

    .line 47
    .local v1, appWidgetId:I
    invoke-virtual {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;->getDefaultLayout()I

    move-result v4

    .line 48
    .local v4, layout:I
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 52
    .local v6, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;->containsRecordButton()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 53
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/widget/WidgetButtonPressReceiver;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v3, intent:Landroid/content/Intent;
    invoke-static {p1, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 55
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    const v7, 0x7f0f00a4

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 58
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_31
    invoke-virtual {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;->containsBarButton()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 59
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {p1, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 61
    .restart local v5       #pendingIntent:Landroid/app/PendingIntent;
    const v7, 0x7f0f017e

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 64
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_48
    invoke-virtual {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;->containsOpenVlingoButton()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {p1, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 67
    .restart local v5       #pendingIntent:Landroid/app/PendingIntent;
    const v7, 0x7f0f017c

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 71
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_5f
    invoke-virtual {p2, v1, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 74
    .end local v1           #appWidgetId:I
    .end local v4           #layout:I
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_65
    return-void
.end method

.method protected abstract onWidgetUpdate()V
.end method
