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
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0d01ac

    .line 87
    const-string v0, "EsWidgetProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 88
    const-string v0, "EsWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureWidget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2b
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300b3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/plus/widget/EsWidgetService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, p2, v4, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 103
    const v2, 0x7f0d01ad

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/plus/widget/EsWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v3, "com.google.android.apps.plus.widget.STREAM_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    const/4 v1, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 115
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidgetHeader(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/widget/RemoteViews;)V

    .line 116
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->configureWidgetAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/RemoteViews;)V

    .line 118
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 119
    return-void
.end method

.method private static configureWidgetHeader(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/widget/RemoteViews;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "appWidgetId"
    .parameter "rv"

    .prologue
    .line 124
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, circleName:Ljava/lang/String;
    if-nez v8, :cond_92

    .line 126
    const v0, 0x7f0d01aa

    const v1, 0x7f0701c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 133
    :goto_13
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v10

    .line 134
    .local v10, homeIconIntent:Landroid/content/Intent;
    const-string v0, "com.google.android.apps.plus.widget.HOME_ACTION"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p0, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 137
    .local v9, clickIntent:Landroid/app/PendingIntent;
    const v0, 0x7f0d01a6

    invoke-virtual {p3, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, circleId:Ljava/lang/String;
    if-eqz p1, :cond_58

    if-eqz v2, :cond_58

    .line 143
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "posts"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 145
    .local v7, circleIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.apps.plus.widget.CIRCLE_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p0, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 149
    .end local v7           #circleIntent:Landroid/content/Intent;
    :cond_58
    const v0, 0x7f0d01aa

    invoke-virtual {p3, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    if-eqz p1, :cond_70

    .line 153
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getWidgetCameraLauncherActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v6

    .line 155
    .local v6, cameraLauncherActivityIntent:Landroid/content/Intent;
    const-string v0, "com.google.android.apps.plus.widget.CAMERA_ACTION"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p0, v0, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 159
    .end local v6           #cameraLauncherActivityIntent:Landroid/content/Intent;
    :cond_70
    const v0, 0x7f0d01a8

    invoke-virtual {p3, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 162
    if-eqz p1, :cond_8b

    .line 163
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    .line 165
    .local v11, postActivityIntent:Landroid/content/Intent;
    const-string v0, "com.google.android.apps.plus.widget.POST_ACTION"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p0, v0, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 169
    .end local v11           #postActivityIntent:Landroid/content/Intent;
    :cond_8b
    const v0, 0x7f0d01a9

    invoke-virtual {p3, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 170
    return-void

    .line 129
    .end local v2           #circleId:Ljava/lang/String;
    .end local v9           #clickIntent:Landroid/app/PendingIntent;
    .end local v10           #homeIconIntent:Landroid/content/Intent;
    :cond_92
    const v0, 0x7f0d01aa

    invoke-virtual {p3, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_13
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 33
    const-string v0, "EsWidgetProvider"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    const-string v0, "EsWidgetProvider"

    const-string v3, "onReceive"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, action:Ljava/lang/String;
    const-string v0, "com.google.android.apps.plus.widget.STREAM_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 39
    const-string v0, "com.google.android.apps.plus.widget.ACTIVITY_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, activityId:Ljava/lang/String;
    if-eqz v7, :cond_52

    .line 41
    const/4 v8, 0x0

    .line 42
    .local v8, activityIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 43
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_48

    .line 44
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 45
    const-string v0, "com.google.android.apps.plus.widget.WIDGET_ID"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 46
    .local v9, widgetId:I
    invoke-static {p1, v9}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, circleId:Ljava/lang/String;
    if-nez v2, :cond_40

    .line 48
    const-string v2, "v.all.circles"

    .line 51
    :cond_40
    const/4 v3, 0x0

    const-string v5, "posts"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 58
    .end local v2           #circleId:Ljava/lang/String;
    .end local v9           #widgetId:I
    :cond_48
    :goto_48
    if-eqz v8, :cond_52

    .line 59
    const/high16 v0, 0x1400

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v1           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v7           #activityId:Ljava/lang/String;
    .end local v8           #activityIntent:Landroid/content/Intent;
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 66
    return-void

    .line 54
    .restart local v1       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v7       #activityId:Ljava/lang/String;
    .restart local v8       #activityIntent:Landroid/content/Intent;
    :cond_56
    invoke-static {p1, v1, v7}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_48
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 75
    const-string v2, "EsWidgetProvider"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 76
    const-string v2, "EsWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_10
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 80
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v2, p3

    if-ge v1, v2, :cond_20

    .line 81
    aget v2, p3, v1

    invoke-static {p1, v0, v2}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 83
    :cond_20
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 84
    return-void
.end method
