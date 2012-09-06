.class public Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;
.super Landroid/app/IntentService;
.source "UnreadCountWidgetUpdateService.java"


# static fields
.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x1

.field private static final COLUMN_STREAM_ID:I = 0x3

.field private static final COLUMN_SUBSCRIPTION_COUNT:I = 0x2

.field private static final COLUMN_UNREAD_COUNT:I = 0x0

.field public static final EXTRA_REMOTE_VIEWS:Ljava/lang/String; = "remote_views"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UnreadCountWidgetUpdateService"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "subscription_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "UnreadCountWidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private bindIcon(Landroid/widget/RemoteViews;Landroid/database/Cursor;)V
    .registers 7
    .parameter "views"
    .parameter "cursor"

    .prologue
    .line 108
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, streamId:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 110
    .local v2, subscriptionCount:I
    invoke-static {v1, v2}, Lcom/google/android/apps/reader/res/ReaderResources;->getShortcutIconResource(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, icon:I
    const v3, 0x1020006

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    return-void
.end method

.method private bindUnreadCount(Landroid/widget/RemoteViews;Landroid/database/Cursor;)V
    .registers 9
    .parameter "views"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    const v4, 0x1020015

    .line 84
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 85
    .local v1, unreadCount:I
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 86
    .local v0, maxUnreadCount:I
    if-lez v1, :cond_1a

    .line 87
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->getUnreadCountString(II)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, unreadCountString:Ljava/lang/String;
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    .end local v2           #unreadCountString:Ljava/lang/String;
    :goto_19
    return-void

    .line 91
    :cond_1a
    const/16 v3, 0x8

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_19
.end method

.method private bindViews(Landroid/widget/RemoteViews;Landroid/net/Uri;)V
    .registers 10
    .parameter "views"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    .line 73
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 74
    invoke-direct {p0, p1, v6}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->bindIcon(Landroid/widget/RemoteViews;Landroid/database/Cursor;)V

    .line 75
    invoke-direct {p0, p1, v6}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->bindUnreadCount(Landroid/widget/RemoteViews;Landroid/database/Cursor;)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 78
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1f
    return-void

    .line 78
    :catchall_20
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getUnreadCountString(II)Ljava/lang/String;
    .registers 6
    .parameter "unreadCount"
    .parameter "maxUnreadCount"

    .prologue
    .line 96
    if-ge p1, p2, :cond_7

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_6
    return-object v1

    .line 100
    :cond_7
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    .local v0, formatArgs:[Ljava/lang/Object;
    const v1, 0x7f0d0107

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, appWidgetId:I
    const-string v3, "remote_views"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 64
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;->bindViews(Landroid/widget/RemoteViews;Landroid/net/Uri;)V

    .line 65
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 66
    return-void
.end method
