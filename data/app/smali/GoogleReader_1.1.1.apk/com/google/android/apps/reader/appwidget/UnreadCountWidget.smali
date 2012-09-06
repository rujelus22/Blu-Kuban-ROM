.class public final Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "UnreadCountWidget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static bindLabel(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "streamId"
    .parameter "label"

    .prologue
    const v1, 0x1020014

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 83
    :cond_f
    invoke-static {p0, p2}, Lcom/google/android/apps/reader/res/ReaderResources;->getShortcutLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 85
    :cond_13
    invoke-virtual {p1, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    return-void
.end method

.method private static bindListener(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "context"
    .parameter "views"
    .parameter "account"
    .parameter "streamId"
    .parameter "label"

    .prologue
    .line 91
    invoke-static {p2, p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2, p4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewIntent(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 94
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v3, 0x102

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 95
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1, p3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getAccount(Landroid/content/Context;I)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 48
    invoke-static {p1, p3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStreamId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p1, p3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v4, Landroid/widget/RemoteViews;

    const v5, 0x7f030007

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;->bindLabel(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1, v4, v0, v1, v2}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;->bindListener(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p2, p3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->autoRefresh(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/appwidget/UnreadCountWidgetUpdateService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v0, "remote_views"

    invoke-static {v4}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->clone(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    :cond_48
    return-void
.end method

.method private updateAll(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 101
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    const-string v0, "com.google.reader.intent.action.CONTENT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;->updateAll(Landroid/content/Context;)V

    .line 77
    :goto_f
    return-void

    .line 75
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 41
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget v0, v1, v2

    .line 42
    .local v0, appWidgetId:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/reader/appwidget/UnreadCountWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 44
    .end local v0           #appWidgetId:I
    :cond_d
    return-void
.end method
