.class Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookmarkAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookmarkAppWidgetDatabase"
.end annotation


# static fields
.field static final BOOKMARKWIDGET_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thumbnail"

    aput-object v1, v0, v4

    const-string v1, "favicon"

    aput-object v1, v0, v5

    const-string v1, "url"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->PROJECTION:[Ljava/lang/String;

    .line 255
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bookmarkId"

    aput-object v1, v0, v3

    const-string v1, "appWidgetId"

    aput-object v1, v0, v4

    const-string v1, "bookmarkThumbnail"

    aput-object v1, v0, v5

    const-string v1, "bookmarkFavicon"

    aput-object v1, v0, v6

    const-string v1, "bookmarkUrl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bookmarkTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->BOOKMARKWIDGET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 261
    const-string v0, "BookmarkAppWidgetDatabase"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 262
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "BookmarkAppWidgetDatabase() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput-object p1, p0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->mContext:Landroid/content/Context;

    .line 264
    return-void
.end method


# virtual methods
.method public deleteBookmarkId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 9
    .parameter "db"
    .parameter "bookmarkId"

    .prologue
    .line 293
    const-string v1, "BookmarkAppWidgetProvider"

    const-string v2, "deleteBookmarkId called."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "bookmarkId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, whereClause:Ljava/lang/String;
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public deleteWidgetId(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8
    .parameter "db"
    .parameter "appWidgetId"

    .prologue
    .line 285
    const-string v1, "BookmarkAppWidgetProvider"

    const-string v2, "deleteWidgetId called."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appWidgetId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, whereClause:Ljava/lang/String;
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 268
    const-string v0, "CREATE TABLE bookmarks (_ID INTEGER PRIMARY KEY AUTOINCREMENT,bookmarkId INTEGER,appWidgetId INTEGER,bookmarkThumbnail BLOB,bookmarkFavicon FAVICON,bookmarkUrl TEXT,bookmarkTitle TITLE,folder FOLDER,parent PARENT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 275
    move v0, p2

    .line 276
    .local v0, version:I
    const-string v1, "BookmarkAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade() called oldversion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "newversion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    .line 278
    const-string v1, "BookmarkAppWidgetProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    :cond_35
    return-void
.end method

.method public saveBookmarkWidgetDB(I[JZ)V
    .registers 17
    .parameter "appWidgetId"
    .parameter "checkedBookmarkIds"
    .parameter "tabFlag"

    .prologue
    .line 325
    :try_start_0
    const-string v0, "BookmarkAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBookmarkWidgetDB  called with appWidgetId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 327
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, p0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 329
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v12, values:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 331
    .local v8, count:I
    const/4 v0, 0x0

    sput v0, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    .line 332
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_da

    .line 333
    if-eqz p3, :cond_48

    .line 334
    invoke-virtual {p0, v10, p1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->deleteWidgetId(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 336
    :cond_48
    const/4 v7, 0x0

    .local v7, bookmarkId:I
    :goto_49
    array-length v0, p2

    if-ge v7, v0, :cond_da

    .line 337
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "saveBookmarkWidgetDB  insert bookmark"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 339
    const/4 v8, 0x0

    :goto_57
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_cf

    .line 341
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aget-wide v2, p2, v7

    cmp-long v0, v0, v2

    if-nez v0, :cond_d3

    .line 343
    const-string v0, "bookmarkId"

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string v0, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string v0, "bookmarkThumbnail"

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 346
    const-string v0, "bookmarkFavicon"

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 347
    const-string v0, "bookmarkUrl"

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "bookmarkTitle"

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "folder"

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string v0, "parent"

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    sget v0, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/browser/BookmarkAppWidgetProvider;->mDbCount:I

    .line 353
    const-string v0, "bookmarks"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 336
    :cond_cf
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_49

    .line 356
    :cond_d3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 339
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_57

    .line 360
    .end local v7           #bookmarkId:I
    :cond_da
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 361
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 362
    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "saveBookmarkWidgetDB  insert bookmark finished"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e7} :catch_101

    .line 366
    .end local v8           #count:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #values:Landroid/content/ContentValues;
    :goto_e7
    iget-object v0, p0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 368
    .local v6, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const v0, 0x7f0d0014

    invoke-virtual {v6, p1, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 370
    iget-object v0, p0, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/BookmarkAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/browser/BookmarkAppWidgetProvider;->updateBookmarkWidget(Landroid/appwidget/AppWidgetManager;[I)V

    .line 371
    return-void

    .line 363
    .end local v6           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :catch_101
    move-exception v11

    .line 364
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BookmarkAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not write BookmarkWidget from database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7
.end method
