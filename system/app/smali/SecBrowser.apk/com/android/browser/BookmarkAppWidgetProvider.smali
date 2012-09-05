.class public Lcom/android/browser/BookmarkAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    }
.end annotation


# static fields
.field static mDbCount:I

.field private static mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 226
    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/browser/BookmarkAppWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getDbCount(I)V
    .registers 13
    .parameter "appWidgetId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    const-string v1, "BookmarkAppWidgetProvider"

    const-string v2, "getDbCount called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v11, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    sget-object v1, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 164
    .local v11, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    invoke-virtual {v11}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = ?"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v5, "appWidgetId"

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, selection:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 170
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_32
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 171
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_46} :catch_4c

    .line 177
    if-eqz v0, :cond_4b

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 180
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4b
    :goto_4b
    return-void

    .line 173
    :catch_4c
    move-exception v10

    .line 174
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_4e
    sput v1, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    .line 175
    const-string v1, "bookmarkwidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_6e

    .line 177
    if-eqz v0, :cond_4b

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4b

    .line 177
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v1

    if-eqz v0, :cond_74

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_74
    throw v1
.end method

.method public static refreshWidgets(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 183
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "refreshWidgets called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/browser/BookmarkAppWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public static updateBookmarkWidget(Landroid/appwidget/AppWidgetManager;[I)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x800

    const/16 v11, 0x8

    const/4 v10, 0x1

    const v9, 0x7f0d0014

    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "show_browser"

    const/4 v4, 0x0

    sget-object v5, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    const-class v6, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 130
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v2, "updateBookmarkWidget called"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    array-length v2, p1

    move v0, v1

    :goto_23
    if-ge v0, v2, :cond_b1

    aget v3, p1, v0

    .line 133
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    const-class v6, Lcom/android/browser/BookmarkWidgetService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    const-class v7, Lcom/android/browser/BookmarkAppWidgetConfigure;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v6, "isEdit"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    sget-object v6, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-static {v6, v3, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 138
    const-string v6, "appWidgetId"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {v4, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    new-instance v6, Landroid/widget/RemoteViews;

    sget-object v7, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040004

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 142
    const v7, 0x7f0d001a

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 145
    invoke-static {v3}, Lcom/android/browser/BookmarkAppWidgetProvider;->getDbCount(I)V

    .line 146
    sget v4, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    if-lez v4, :cond_9e

    .line 147
    const v4, 0x7f0d0015

    invoke-virtual {v6, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    const v4, 0x7f0d0019

    invoke-virtual {v6, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    :goto_83
    invoke-virtual {p0, v3, v9}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 155
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    const-class v7, Lcom/android/browser/BookmarksWidgetProxy;

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    sget-object v5, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-static {v5, v1, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 157
    invoke-virtual {p0, v3, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 150
    :cond_9e
    const v4, 0x7f0d0015

    invoke-virtual {v6, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    const v4, 0x7f0d0019

    invoke-virtual {v6, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    const v4, 0x7f0d0016

    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_83

    .line 159
    :cond_b1
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 11
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 113
    const-string v6, "BookmarkAppWidgetProvider"

    const-string v7, "BookmarkAppWidgetProvider onDeleted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    sget-object v6, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 115
    .local v2, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    invoke-virtual {v2}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 116
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, p2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v4, :cond_22

    aget v5, v0, v3

    .line 117
    .local v5, widgetId:I
    invoke-virtual {v2, v1, v5}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->deleteWidgetId(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 119
    .end local v5           #widgetId:I
    :cond_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 120
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    sput-object p1, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 93
    const-string v2, "BookmarkAppWidgetProvider"

    const-string v3, "onReceive ACTION_BOOKMARK_APPWIDGET_UPDATE called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_15
    sget-object v2, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 97
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    const-string v2, "BookmarkAppWidgetProvider"

    const-string v3, "BookmarkAppWidgetProvider onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v2, Lcom/android/browser/BookmarkAppWidgetProvider;->mWidgetContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/browser/BookmarkAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/BookmarkAppWidgetProvider;->updateBookmarkWidget(Landroid/appwidget/AppWidgetManager;[I)V

    .line 101
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 105
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "BookmarkAppWidgetProvider onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p2, p3}, Lcom/android/browser/BookmarkAppWidgetProvider;->updateBookmarkWidget(Landroid/appwidget/AppWidgetManager;[I)V

    .line 108
    return-void
.end method
