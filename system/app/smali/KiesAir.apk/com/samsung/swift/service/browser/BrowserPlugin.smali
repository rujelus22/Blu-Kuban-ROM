.class public Lcom/samsung/swift/service/browser/BrowserPlugin;
.super Ljava/lang/Object;
.source "BrowserPlugin.java"


# static fields
.field private static final BookmarksFolder:Ljava/lang/String; = "folder"

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final SORT_MOST_VISITED:I = 0x7

.field private static final SORT_TIME_ASCENDING:I = 0x5

.field private static final SORT_TIME_DESCENDING:I = 0x6

.field private static final SORT_TITLE_ASCENDING:I = 0x1

.field private static final SORT_TITLE_DESCENDING:I = 0x2

.field private static final SORT_URL_ASCENDING:I = 0x3

.field private static final SORT_URL_DESCENDING:I = 0x4

.field private static browserObserver:Lcom/samsung/swift/service/browser/BrowserContentObserver; = null

.field private static final editWhereClause:Ljava/lang/String; = "_id = ?"

.field private static final getListWhereClause:Ljava/lang/String; = "bookmark = 1 AND url IS NOT NULL AND url <> \'\' "

.field private static final getWhereClause:Ljava/lang/String; = "bookmark = 1 AND _id = ?"

.field private static final monitor:Ljava/lang/Object;

.field private static final random:Ljava/util/Random;

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter;

.field private static revision:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const-class v0, Lcom/samsung/swift/service/browser/BrowserPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->random:Ljava/util/Random;

    .line 120
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->revision:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->monitor:Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/samsung/swift/service/browser/Bookmark;)Z
    .registers 10
    .parameter "bookmark"

    .prologue
    const/4 v8, 0x1

    .line 206
    sget-object v5, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java add"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "bookmark"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v5, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/samsung/swift/service/browser/Bookmark;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "url"

    invoke-virtual {p0}, Lcom/samsung/swift/service/browser/Bookmark;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_95

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "P1000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "M180S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "M180K"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "M180L"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 225
    :cond_74
    const-string v5, "folder"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_7b
    :try_start_7b
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_80} :catch_9d

    move-result-object v3

    .line 249
    .local v3, resultUri:Landroid/net/Uri;
    :goto_81
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, id:Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0, v2}, Lcom/samsung/swift/service/browser/Bookmark;->setId(Ljava/lang/String;)V

    .line 255
    return v8

    .line 229
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #resultUri:Landroid/net/Uri;
    :cond_95
    const-string v5, "folder"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 238
    :catch_9d
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "IllegalArgument caught - BookmarksFolder is only valid from Android 2.2"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "folder"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 245
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #resultUri:Landroid/net/Uri;
    goto :goto_81
.end method

.method private static buildBookmark(Landroid/database/Cursor;)Lcom/samsung/swift/service/browser/Bookmark;
    .registers 6
    .parameter "c"

    .prologue
    .line 377
    new-instance v0, Lcom/samsung/swift/service/browser/Bookmark;

    invoke-direct {v0}, Lcom/samsung/swift/service/browser/Bookmark;-><init>()V

    .line 380
    .local v0, b:Lcom/samsung/swift/service/browser/Bookmark;
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/browser/Bookmark;->setId(Ljava/lang/String;)V

    .line 387
    :cond_14
    const-string v4, "title"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 390
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/browser/Bookmark;->setName(Ljava/lang/String;)V

    .line 394
    :cond_23
    const-string v4, "url"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 397
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/browser/Bookmark;->setUrl(Ljava/lang/String;)V

    .line 400
    :cond_32
    return-object v0
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static delete(Ljava/lang/String;)Z
    .registers 8
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 264
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_1b

    .line 272
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 275
    const/4 v2, 0x1

    .line 277
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1a
    :goto_1a
    return v2

    .line 266
    :catch_1b
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_1a
.end method

.method private static edit(Lcom/samsung/swift/service/browser/Bookmark;)Z
    .registers 10
    .parameter "bookmark"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 283
    sget-object v5, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v6, "Java edit"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "bookmark"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/samsung/swift/service/browser/Bookmark;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v5, "url"

    invoke-virtual {p0}, Lcom/samsung/swift/service/browser/Bookmark;->url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v6, "_id = ?"

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/swift/service/browser/Bookmark;->id()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, result:I
    if-ne v1, v3, :cond_40

    .line 300
    :goto_3f
    return v3

    :cond_40
    move v3, v4

    goto :goto_3f
.end method

.method private static get(Ljava/lang/String;)Lcom/samsung/swift/service/browser/Bookmark;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 161
    .local v7, c:Landroid/database/Cursor;
    :try_start_6
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java get querying content provider"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "bookmark = 1 AND _id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java get: Moving to start index"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v7, :cond_55

    .line 169
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_39

    .line 171
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java get: No results"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_4e

    .line 196
    if-eqz v7, :cond_38

    .line 198
    :goto_35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_38
    return-object v6

    .line 175
    :cond_39
    :try_start_39
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java get building Bookmark object"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v7}, Lcom/samsung/swift/service/browser/BrowserPlugin;->buildBookmark(Landroid/database/Cursor;)Lcom/samsung/swift/service/browser/Bookmark;

    move-result-object v6

    .line 187
    .local v6, b:Lcom/samsung/swift/service/browser/Bookmark;
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java get returning"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4e

    .line 196
    if-eqz v7, :cond_38

    goto :goto_35

    .end local v6           #b:Lcom/samsung/swift/service/browser/Bookmark;
    :catchall_4e
    move-exception v1

    if-eqz v7, :cond_54

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_54
    throw v1

    :cond_55
    if-eqz v7, :cond_38

    goto :goto_35
.end method

.method private static getBookmarkList(III)Lcom/samsung/swift/service/browser/BookmarkList;
    .registers 14
    .parameter "beginIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 306
    new-instance v7, Lcom/samsung/swift/service/browser/BookmarkList;

    invoke-direct {v7}, Lcom/samsung/swift/service/browser/BookmarkList;-><init>()V

    .line 310
    .local v7, bl:Lcom/samsung/swift/service/browser/BookmarkList;
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 314
    .local v8, c:Landroid/database/Cursor;
    :try_start_a
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java getBookmarkList querying content provider"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {p2}, Lcom/samsung/swift/service/browser/BrowserPlugin;->sortClause(I)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, sortClause:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "bookmark = 1 AND url IS NOT NULL AND url <> \'\' "

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java getBookmarkList creating BookmarkList"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/browser/BookmarkList;->setEstimatedResultSize(I)V

    .line 324
    if-eqz v8, :cond_87

    .line 327
    invoke-interface {v8, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 329
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/browser/BookmarkList;->setEstimatedResultSize(I)V

    .line 330
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java getBookmarkList: No results"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_80

    .line 368
    if-eqz v8, :cond_45

    .line 370
    :goto_42
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_45
    return-object v7

    .line 335
    :cond_46
    const/4 v9, 0x0

    .local v9, listSize:I
    move v10, v9

    .line 336
    .end local v9           #listSize:I
    .local v10, listSize:I
    :goto_48
    :try_start_48
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 337
    add-int/lit8 v9, v10, 0x1

    .end local v10           #listSize:I
    .restart local v9       #listSize:I
    if-lt v10, p1, :cond_5c

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/browser/BookmarkList;->setEstimatedResultSize(I)V

    .line 368
    if-eqz v8, :cond_45

    goto :goto_42

    .line 341
    :cond_5c
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java getBookmarkList building Bookmark object"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v8}, Lcom/samsung/swift/service/browser/BrowserPlugin;->buildBookmark(Landroid/database/Cursor;)Lcom/samsung/swift/service/browser/Bookmark;

    move-result-object v6

    .line 343
    .local v6, b:Lcom/samsung/swift/service/browser/Bookmark;
    invoke-virtual {v7, v6}, Lcom/samsung/swift/service/browser/BookmarkList;->add(Lcom/samsung/swift/service/browser/Bookmark;)V

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move v10, v9

    .line 355
    .end local v9           #listSize:I
    .restart local v10       #listSize:I
    goto :goto_48

    .line 357
    .end local v6           #b:Lcom/samsung/swift/service/browser/Bookmark;
    :cond_6f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/browser/BookmarkList;->setEstimatedResultSize(I)V

    .line 359
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java getBookmarkList returning"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_48 .. :try_end_7d} :catchall_80

    .line 368
    if-eqz v8, :cond_45

    goto :goto_42

    .end local v5           #sortClause:Ljava/lang/String;
    .end local v10           #listSize:I
    :catchall_80
    move-exception v1

    if-eqz v8, :cond_86

    .line 370
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_86
    throw v1

    .restart local v5       #sortClause:Ljava/lang/String;
    :cond_87
    if-eqz v8, :cond_45

    goto :goto_42
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 149
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 132
    const-class v1, Lcom/samsung/swift/service/browser/BrowserPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/browser/BrowserPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 134
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/browser/BrowserPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->revision:Ljava/lang/String;

    .line 135
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 136
    monitor-exit v1

    return-void

    .line 135
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 132
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 451
    sget-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Java BrowserPlugin loading called..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/browser/BrowserContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/browser/BrowserContentObserver;

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->browserObserver:Lcom/samsung/swift/service/browser/BrowserContentObserver;

    .line 455
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->browserObserver:Lcom/samsung/swift/service/browser/BrowserContentObserver;

    .line 445
    sget-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 446
    return-void
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    sget-object v1, Lcom/samsung/swift/service/browser/BrowserPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/browser/BrowserPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static sortClause(I)Ljava/lang/String;
    .registers 2
    .parameter "sort"

    .prologue
    .line 405
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 407
    const-string v0, "title ASC"

    .line 435
    :goto_5
    return-object v0

    .line 409
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 411
    const-string v0, "title DESC"

    goto :goto_5

    .line 413
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 415
    const-string v0, "url ASC"

    goto :goto_5

    .line 417
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 419
    const-string v0, "url DESC"

    goto :goto_5

    .line 421
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 423
    const-string v0, "date ASC"

    goto :goto_5

    .line 425
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 427
    const-string v0, "date DESC"

    goto :goto_5

    .line 429
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 431
    const-string v0, "visits DESC"

    goto :goto_5

    .line 433
    :cond_2a
    if-nez p0, :cond_2f

    .line 435
    const-string v0, "_id"

    goto :goto_5

    .line 438
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
