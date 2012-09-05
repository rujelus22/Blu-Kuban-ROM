.class Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;
.super Ljava/lang/Object;
.source "BookmarkWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookmarkFactory"
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private mBookmarks:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mAppWidgetId:I

    .line 85
    new-instance v0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    .line 86
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    invoke-virtual {v0}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    return-void
.end method


# virtual methods
.method checkBookmarksDB()V
    .registers 16

    .prologue
    .line 205
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "appWidgetId"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, widgetselection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mAppWidgetId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 208
    .local v4, widgetselectionArgs:[Ljava/lang/String;
    :try_start_26
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 209
    .local v14, widgetcursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_b1

    .line 210
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3f
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v13, v0, :cond_b1

    .line 212
    const-string v0, "%s = ? AND %s = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "deleted"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, bookmarkselection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 214
    .local v9, bookmarkselectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 215
    .local v11, bookmarkcursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a8

    .line 216
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->deleteBookmarkId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 218
    :cond_a8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 219
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 211
    add-int/lit8 v13, v13, 0x1

    goto :goto_3f

    .line 222
    .end local v8           #bookmarkselection:Ljava/lang/String;
    .end local v9           #bookmarkselectionArgs:[Ljava/lang/String;
    .end local v11           #bookmarkcursor:Landroid/database/Cursor;
    .end local v13           #i:I
    :cond_b1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_b4} :catch_b5

    .line 226
    .end local v14           #widgetcursor:Landroid/database/Cursor;
    :goto_b4
    return-void

    .line 223
    :catch_b5
    move-exception v12

    .line 224
    .local v12, e:Ljava/lang/Exception;
    const-string v0, "BookmarkWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    const-string v2, "bookmarks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] DB is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040011

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 20
    .parameter "position"

    .prologue
    .line 108
    const-string v2, "BookmarkWidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bookmarks real count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 110
    const/4 v1, 0x0

    .line 161
    :goto_2d
    return-object v1

    .line 113
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 114
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 115
    .local v17, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, title:Ljava/lang/String;
    move-object/from16 v9, v16

    .line 119
    .local v9, displayTitle:Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040011

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 121
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 123
    move-object/from16 v9, v17

    .line 125
    :cond_63
    const v2, 0x7f0d001f

    invoke-virtual {v1, v2, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 129
    const/4 v15, 0x0

    .local v15, thumbnail:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 130
    .local v10, favicon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 131
    .local v8, blob:[B
    const v2, 0x7f0d0021

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 132
    if-eqz v8, :cond_d7

    array-length v2, v8

    if-lez v2, :cond_d7

    .line 133
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 135
    const v2, 0x7f0d0021

    invoke-virtual {v1, v2, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 141
    :goto_9a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 142
    if-eqz v8, :cond_e1

    array-length v2, v8

    if-lez v2, :cond_e1

    .line 143
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 145
    const v2, 0x7f0d0004

    invoke-virtual {v1, v2, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 153
    :goto_b4
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 154
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    .line 160
    .local v11, fillin:Landroid/content/Intent;
    :goto_cf
    const v2, 0x7f0d002e

    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_2d

    .line 137
    .end local v11           #fillin:Landroid/content/Intent;
    :cond_d7
    const v2, 0x7f0d0021

    const v3, 0x7f020019

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_9a

    .line 147
    :cond_e1
    const v2, 0x7f0d0004

    const v3, 0x7f020002

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_b4

    .line 158
    :cond_eb
    new-instance v11, Landroid/content/Intent;

    const-string v2, "show_browser"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11       #fillin:Landroid/content/Intent;
    goto :goto_cf
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method loadBookmarks()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 229
    const-string v0, "%s = ?"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "appWidgetId"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, selection:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v0, "%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mAppWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 232
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_23
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mHelper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_35

    .line 237
    :goto_34
    return-void

    .line 233
    :catch_35
    move-exception v9

    .line 234
    .local v9, e:Ljava/lang/Exception;
    iput-object v10, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 235
    const-string v0, "bookmarkwidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public onDataSetChanged()V
    .registers 5

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 193
    .local v0, token:J
    const-string v2, "BookmarkWidgetService"

    const-string v3, "onDataSetChanged  called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v2, :cond_17

    .line 196
    iget-object v2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 199
    :cond_17
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->checkBookmarksDB()V

    .line 200
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->loadBookmarks()V

    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_15

    .line 186
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetService$BookmarkFactory;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 188
    :cond_15
    return-void
.end method
