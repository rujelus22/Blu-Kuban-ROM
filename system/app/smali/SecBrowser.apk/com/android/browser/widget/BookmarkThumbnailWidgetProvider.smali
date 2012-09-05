.class public Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkThumbnailWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x800

    const v9, 0x7f0d0048

    const/4 v1, 0x0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "show_browser"

    const/4 v3, 0x0

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 87
    array-length v3, p3

    move v0, v1

    :goto_16
    if-ge v0, v3, :cond_5e

    aget v4, p3, v0

    .line 88
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040017

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    const v7, 0x7f0d0049

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 94
    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p2, v4, v9}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 96
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/android/browser/widget/BookmarkWidgetProxy;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-static {p1, v1, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 100
    invoke-virtual {p2, v4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 102
    :cond_5e
    return-void
.end method

.method public static refreshWidgets(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 60
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_10

    aget v3, v0, v1

    .line 61
    .local v3, widgetId:I
    invoke-static {p1, v3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 63
    .end local v3           #widgetId:I
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 44
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 45
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 50
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :goto_1b
    return-void

    .line 48
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "context"
    .parameter "mngr"
    .parameter "ids"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 55
    return-void
.end method

.method removeOrphanedFiles(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 77
    .local v1, wm:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    .local v0, ids:[I
    invoke-static {p1, v0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->removeOrphanedStates(Landroid/content/Context;[I)V

    .line 79
    return-void
.end method
