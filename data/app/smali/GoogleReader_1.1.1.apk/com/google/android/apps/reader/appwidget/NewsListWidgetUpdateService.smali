.class public Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;
.super Landroid/app/IntentService;
.source "NewsListWidgetUpdateService.java"


# static fields
.field public static final ACTION_BIND:Ljava/lang/String; = "com.google.reader.intent.action.BIND"

.field public static final ACTION_QUERY:Ljava/lang/String; = "com.google.reader.intent.action.QUERY"

.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x1

.field private static final COLUMN_UNREAD_COUNT:I = 0x0

.field public static final EXTRA_REMOTE_VIEWS:Ljava/lang/String; = "com.google.reader.intent.extra.REMOTE_VIEWS"

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const-string v0, "NewsListWidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private getUnreadCountText(II)Ljava/lang/CharSequence;
    .registers 6
    .parameter "unreadCount"
    .parameter "maxUnreadCount"

    .prologue
    .line 81
    if-ge p1, p2, :cond_7

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_6
    return-object v1

    .line 85
    :cond_7
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 88
    .local v0, formatArgs:[Ljava/lang/Object;
    const v1, 0x7f0d0107

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 51
    const-string v0, "com.google.reader.intent.action.BIND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 52
    const-string v0, "com.google.reader.intent.extra.REMOTE_VIEWS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/widget/RemoteViews;

    .line 53
    .local v11, views:Landroid/widget/RemoteViews;
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 55
    .local v6, appWidgetId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_2d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 59
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 60
    .local v9, unreadCount:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 61
    .local v8, maxUnreadCount:I
    invoke-direct {p0, v9, v8}, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->getUnreadCountText(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 62
    .local v10, unreadCountText:Ljava/lang/CharSequence;
    const v0, 0x7f0b0068

    invoke-virtual {v11, v0, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 66
    .end local v8           #maxUnreadCount:I
    .end local v9           #unreadCount:I
    .end local v10           #unreadCountText:Ljava/lang/CharSequence;
    :goto_47
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v6, v11}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_5b

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 78
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #appWidgetId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :cond_51
    :goto_51
    return-void

    .line 64
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appWidgetId:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v11       #views:Landroid/widget/RemoteViews;
    :cond_52
    const v0, 0x7f0b0068

    :try_start_55
    const-string v3, "0"

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    goto :goto_47

    .line 68
    :catchall_5b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 70
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #appWidgetId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :cond_60
    const-string v0, "com.google.reader.intent.action.QUERY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 72
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 75
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 76
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/NewsListWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_51
.end method
