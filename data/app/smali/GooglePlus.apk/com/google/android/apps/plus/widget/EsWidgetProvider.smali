.class public Lcom/google/android/apps/plus/widget/EsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "EsWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "appWidgetId"

    .prologue
    const v7, 0x7f09029d

    .line 47
    const-string v4, "EsWidgetProvider"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 48
    const-string v4, "EsWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureWidget("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2a
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300f5

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v3, rv:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/google/android/apps/plus/widget/EsWidgetService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v3, p2, v7, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 63
    const v4, 0x7f09029e

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 67
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v2, postIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 70
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v7, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 72
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidgetHeader(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/widget/RemoteViews;)V

    .line 73
    invoke-static {p0, p1, v3}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->configureWidgetAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/RemoteViews;)V

    .line 75
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 76
    return-void
.end method

.method private static configureWidgetHeader(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/widget/RemoteViews;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "appWidgetId"
    .parameter "rv"

    .prologue
    const v11, 0x7f09029b

    const/high16 v10, 0x800

    const/4 v9, 0x0

    .line 81
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, circleName:Ljava/lang/String;
    if-nez v3, :cond_80

    .line 83
    const v7, 0x7f080275

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v11, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    :goto_16
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v5

    .line 91
    .local v5, homeIconIntent:Landroid/content/Intent;
    const-string v7, "com.google.android.apps.plus.widget.HOME_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 94
    .local v4, clickIntent:Landroid/app/PendingIntent;
    const v7, 0x7f090297

    invoke-virtual {p3, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 98
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, circleId:Ljava/lang/String;
    if-eqz p1, :cond_4f

    if-eqz v1, :cond_4f

    .line 100
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCirclePostsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 102
    .local v2, circleIntent:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.google.android.apps.plus.widget.CIRCLE_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 106
    .end local v2           #circleIntent:Landroid/content/Intent;
    :cond_4f
    invoke-virtual {p3, v11, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    if-eqz p1, :cond_61

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getWidgetCameraLauncherActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, cameraLauncherActivityIntent:Landroid/content/Intent;
    const-string v7, "com.google.android.apps.plus.widget.CAMERA_ACTION"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {p0, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 116
    .end local v0           #cameraLauncherActivityIntent:Landroid/content/Intent;
    :cond_61
    const v7, 0x7f090299

    invoke-virtual {p3, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    if-eqz p1, :cond_79

    .line 120
    const/4 v7, 0x0

    check-cast v7, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-static {p0, p1, v7}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v6

    .line 122
    .local v6, postActivityIntent:Landroid/content/Intent;
    const-string v7, "com.google.android.apps.plus.widget.POST_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {p0, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 126
    .end local v6           #postActivityIntent:Landroid/content/Intent;
    :cond_79
    const v7, 0x7f09029a

    invoke-virtual {p3, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 127
    return-void

    .line 86
    .end local v1           #circleId:Ljava/lang/String;
    .end local v4           #clickIntent:Landroid/app/PendingIntent;
    .end local v5           #homeIconIntent:Landroid/content/Intent;
    :cond_80
    invoke-virtual {p3, v11, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_16
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 35
    const-string v2, "EsWidgetProvider"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 36
    const-string v2, "EsWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_10
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 40
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v2, p3

    if-ge v1, v2, :cond_20

    .line 41
    aget v2, p3, v1

    invoke-static {p1, v0, v2}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 43
    :cond_20
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 44
    return-void
.end method
