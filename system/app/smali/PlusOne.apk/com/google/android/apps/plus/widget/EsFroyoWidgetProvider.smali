.class public Lcom/google/android/apps/plus/widget/EsFroyoWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "EsFroyoWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static configureWidget(Landroid/content/Context;I)V
    .registers 13
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/high16 v10, 0x800

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 48
    const-string v5, "EsFroyoWidgetProvider"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 49
    const-string v5, "EsFroyoWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureWidget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2b
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0300b1

    invoke-direct {v4, v5, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v4, rv:Landroid/widget/RemoteViews;
    invoke-static {p0, v6}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 57
    .local v2, homeIconIntent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.plus.widget.HOME_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 60
    .local v1, clickIntent:Landroid/app/PendingIntent;
    const v5, 0x7f0d01a6

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v5, v6

    .line 63
    check-cast v5, Landroid/net/Uri;

    invoke-static {p0, v6, v5}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 65
    .local v3, postActivityIntent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.plus.widget.POST_ACTION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 70
    const v5, 0x7f0d01a7

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    invoke-static {p0, v6}, Lcom/google/android/apps/plus/phone/Intents;->getWidgetCameraLauncherActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, cameraLauncherActivityIntent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.plus.widget.CAMERA_ACTION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v5, "account"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    const v5, 0x7f0d01a8

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 31
    const-string v1, "EsFroyoWidgetProvider"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    const-string v1, "EsFroyoWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p3

    if-ge v0, v1, :cond_1c

    .line 36
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/google/android/apps/plus/widget/EsFroyoWidgetProvider;->configureWidget(Landroid/content/Context;I)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 38
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 39
    return-void
.end method
