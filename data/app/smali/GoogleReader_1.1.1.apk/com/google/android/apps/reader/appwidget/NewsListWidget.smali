.class public final Lcom/google/android/apps/reader/appwidget/NewsListWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "NewsListWidget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private bindListView(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b006a

    .line 64
    invoke-static {p1, p4, p5}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/appwidget/NewsListWidgetRemoteViewsService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p2, p3, v3, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 69
    const v1, 0x7f0b006b

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 71
    invoke-static {v0, p6}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewItemIntentTemplate(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 73
    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 74
    return-void
.end method

.method private bindLogo(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;)V
    .registers 7
    .parameter "context"
    .parameter "views"
    .parameter "account"

    .prologue
    .line 88
    invoke-static {p1, p3}, Lcom/google/android/apps/reader/fragment/MainScreen;->intent(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b0066

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    return-void
.end method

.method private bindRefreshButton(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "views"
    .parameter "account"
    .parameter "streamId"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->createRefreshIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 106
    .local v1, refresh:Landroid/app/PendingIntent;
    const v2, 0x7f0b0069

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 107
    return-void
.end method

.method private bindTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 10
    .parameter "context"
    .parameter "views"
    .parameter "account"
    .parameter "streamId"
    .parameter "label"

    .prologue
    const v3, 0x7f0b0067

    .line 95
    invoke-static {p1, p3, p4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2, p5}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewIntent(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 98
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 100
    return-void
.end method

.method private bindUnreadCount(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p4, p5}, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.reader.intent.action.BIND"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    const-class v0, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v0, "com.google.reader.intent.extra.REMOTE_VIEWS"

    invoke-static {p2}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->clone(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method private createAutoRefreshIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p1, p3, p4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->autoRefresh(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.reader.intent.action.QUERY"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const-class v0, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    return-object v1
.end method

.method private createRefreshIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->refresh(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.reader.intent.action.QUERY"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    const-class v0, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    return-object v1
.end method

.method private updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getAccount(Landroid/content/Context;I)Lcom/google/android/accounts/Account;

    move-result-object v8

    .line 46
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStreamId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 47
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 48
    if-eqz v8, :cond_76

    if-eqz v9, :cond_76

    .line 49
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030044

    invoke-direct {v7, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->bindLogo(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 51
    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->bindTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->bindRefreshButton(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move/from16 v14, p3

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 53
    invoke-direct/range {v11 .. v17}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->bindListView(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v7

    move/from16 v13, p3

    move-object v14, v8

    move-object v15, v9

    .line 54
    invoke-direct/range {v10 .. v15}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->bindUnreadCount(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->createAutoRefreshIntent(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    :cond_76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.google.reader.intent.action.CONTENT_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 130
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 131
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v3, componentName:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 133
    .local v1, appWidgetIds:[I
    const v4, 0x7f0b006a

    .line 134
    .local v4, viewId:I
    invoke-static {v2, v1, v4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;[II)V

    .line 138
    .end local v1           #appWidgetIds:[I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #componentName:Landroid/content/ComponentName;
    .end local v4           #viewId:I
    :goto_23
    return-void

    .line 136
    :cond_24
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_23
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 39
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget v0, v1, v2

    .line 40
    .local v0, appWidgetId:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/reader/appwidget/NewsListWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 42
    .end local v0           #appWidgetId:I
    :cond_d
    return-void
.end method
