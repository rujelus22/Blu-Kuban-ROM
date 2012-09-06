.class public Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;
.super Landroid/app/IntentService;
.source "NewsTickerWidgetUpdateService.java"


# static fields
.field public static final ACTION_BIND:Ljava/lang/String; = "com.google.reader.intent.action.BIND"

.field public static final ACTION_QUERY:Ljava/lang/String; = "com.google.reader.intent.action.QUERY"

.field private static final COLUMN_DATE:I = 0x2

.field private static final COLUMN_ITEM_ID:I = 0x3

.field private static final COLUMN_SOURCE:I = 0x1

.field private static final COLUMN_TITLE:I = 0x0

.field public static final EXTRA_LABEL:Ljava/lang/String; = "com.google.reader.intent.extra.LABEL"

.field public static final EXTRA_REMOTE_VIEWS:Ljava/lang/String; = "com.google.reader.intent.extra.REMOTE_VIEWS"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NewsTickerWidgetUpdateService"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title_plaintext"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "source_title_plaintext"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const-string v0, "NewsTickerWidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private bindIcon(Landroid/widget/RemoteViews;Landroid/net/Uri;)V
    .registers 8
    .parameter "views"
    .parameter "uri"

    .prologue
    .line 90
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 91
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, streamId:Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->getSubscriptionCount(Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    move-result v3

    .line 93
    .local v3, subscriptionCount:I
    invoke-static {v2, v3}, Lcom/google/android/apps/reader/res/ReaderResources;->getShortcutIconResource(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, icon:I
    const v4, 0x7f0b0017

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 95
    return-void
.end method

.method private bindViewFlipper(Landroid/widget/RemoteViews;Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 12
    .parameter "views"
    .parameter "uri"
    .parameter "label"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    .line 102
    const v1, 0x7f0b000c

    const/16 v2, 0x8

    :try_start_15
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 104
    const v1, 0x7f0b001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    const v1, 0x7f0b001a

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 106
    const/4 v7, 0x0

    .local v7, position:I
    :goto_2c
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 107
    const v1, 0x7f0b001a

    invoke-direct {p0, v6, p2, p3}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->createItemView(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 109
    :cond_3f
    const v1, 0x7f0b0019

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_5b

    .line 115
    .end local v7           #position:I
    :goto_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_4a
    return-void

    .line 111
    :cond_4b
    const v1, 0x7f0b001a

    const/16 v2, 0x8

    :try_start_50
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    const v1, 0x7f0b0019

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_5b

    goto :goto_47

    .line 115
    :catchall_5b
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private createItemView(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .registers 16
    .parameter "cursor"
    .parameter "streamUri"
    .parameter "label"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, packageName:Ljava/lang/String;
    new-instance v9, Landroid/widget/RemoteViews;

    const v10, 0x7f030006

    invoke-direct {v9, v4, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v9, views:Landroid/widget/RemoteViews;
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, title:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, source:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 134
    .local v7, updated:J
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 135
    .local v2, itemId:J
    invoke-static {p0, v7, v8}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->formatDateTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, date:Ljava/lang/CharSequence;
    const v10, 0x7f0b001b

    invoke-virtual {v9, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 137
    const v10, 0x7f0b001d

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    const v10, 0x7f0b001c

    invoke-virtual {v9, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    invoke-static {p2, v2, v3, p3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewItemIntent(Landroid/net/Uri;JLjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, intent:Landroid/content/Intent;
    const v10, 0x7f0b0012

    invoke-static {p0, v1}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    return-object v9
.end method

.method private getSubscriptionCount(Lcom/google/android/accounts/Account;Ljava/lang/String;)I
    .registers 11
    .parameter "account"
    .parameter "streamId"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 147
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 148
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "subscription_count"

    aput-object v4, v2, v7

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_38

    .line 156
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 157
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_33

    move-result v3

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_2d
    return v3

    .line 162
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v3, v7

    goto :goto_2d

    :catchall_33
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_38
    move v3, v7

    .line 165
    goto :goto_2d

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3a
    move v3, v7

    .line 168
    goto :goto_2d
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 63
    const-string v0, "com.google.reader.intent.action.BIND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 64
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 65
    .local v8, manager:Landroid/appwidget/AppWidgetManager;
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 67
    .local v6, appWidgetId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "com.google.reader.intent.extra.LABEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, label:Ljava/lang/CharSequence;
    const-string v0, "com.google.reader.intent.extra.REMOTE_VIEWS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/widget/RemoteViews;

    .line 70
    .local v9, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v9, v1}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->bindIcon(Landroid/widget/RemoteViews;Landroid/net/Uri;)V

    .line 71
    invoke-direct {p0, v9, v1, v7}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->bindViewFlipper(Landroid/widget/RemoteViews;Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v8, v6, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 81
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #appWidgetId:I
    .end local v7           #label:Ljava/lang/CharSequence;
    .end local v8           #manager:Landroid/appwidget/AppWidgetManager;
    .end local v9           #views:Landroid/widget/RemoteViews;
    :cond_33
    :goto_33
    return-void

    .line 73
    :cond_34
    const-string v0, "com.google.reader.intent.action.QUERY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 75
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 78
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 79
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsTickerWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_33
.end method
