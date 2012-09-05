.class public Lcom/android/providers/drm/DrmProvider;
.super Landroid/content/ContentProvider;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/DrmProvider$1;,
        Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 277
    new-instance v0, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/drm/DrmProvider$1;)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    .line 404
    const-string v0, "DrmProvider"

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    .line 411
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 414
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 426
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 427
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 111
    const-string v0, "CREATE TABLE audio (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE TABLE images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4d

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 324
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, prefix:Ljava/lang/String;
    :cond_25
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 328
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempted to delete a non-DRM file"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_38

    .line 334
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0

    .line 330
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_38

    move-result v0

    if-nez v0, :cond_25

    .line 334
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :cond_4d
    if-eqz v6, :cond_52

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_52
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 133
    const-string v0, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 8
    .parameter "initialValues"

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 212
    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 213
    const-string v4, "DRM-"

    const-string v5, ".data"

    invoke-static {v4, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 214
    .local v1, file:Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 215
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    .line 219
    .end local v1           #file:Ljava/io/File;
    .end local v2           #parent:Ljava/io/File;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_21
    return-object v3

    .line 217
    :catch_22
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, "Failed to create data file in ensureFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V
    .registers 9
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_a2

    .line 303
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :pswitch_22
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 308
    :goto_26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 317
    :goto_51
    return-void

    .line 289
    :pswitch_52
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    goto :goto_26

    .line 294
    :pswitch_74
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_26

    .line 298
    :pswitch_79
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    goto :goto_26

    .line 312
    :cond_9b
    iput-object p3, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_51

    .line 315
    :cond_9e
    iput-object v0, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_51

    .line 283
    nop

    :pswitch_data_a2
    .packed-switch 0x64
        :pswitch_22
        :pswitch_52
        :pswitch_74
        :pswitch_79
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    .line 344
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_14
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 349
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 351
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v4

    .line 352
    :try_start_23
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p2, v3}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 355
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/drm/DrmProvider;->deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v3, v3, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v3, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, count:I
    monitor-exit v4

    .line 362
    return v0

    .line 360
    .end local v0           #count:I
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 187
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 199
    :cond_b
    :pswitch_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_13
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 195
    return-object v7

    .line 187
    :pswitch_data_30
    .packed-switch 0x65
        :pswitch_13
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.INSTALL_DRM"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_17

    .line 228
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires INSTALL_DRM permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    :cond_17
    sget-object v7, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 233
    .local v1, match:I
    const/4 v2, 0x0

    .line 234
    .local v2, newUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 236
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_2b

    .line 237
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .restart local p2
    :cond_2b
    packed-switch v1, :pswitch_data_88

    .line 262
    :pswitch_2e
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    :pswitch_47
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 243
    .local v5, values:Landroid/content/ContentValues;
    if-nez v5, :cond_4e

    .line 269
    :cond_4d
    :goto_4d
    return-object v6

    .line 244
    :cond_4e
    const-string v7, "audio"

    const-string v8, "title"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 245
    .local v3, rowId:J
    cmp-long v7, v3, v9

    if-lez v7, :cond_60

    .line 246
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 265
    :cond_60
    :goto_60
    if-eqz v2, :cond_6d

    .line 266
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_6d
    move-object v6, v2

    .line 269
    goto :goto_4d

    .line 252
    .end local v3           #rowId:J
    .end local v5           #values:Landroid/content/ContentValues;
    :pswitch_6f
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 253
    .restart local v5       #values:Landroid/content/ContentValues;
    if-eqz v5, :cond_4d

    .line 254
    const-string v7, "images"

    const-string v8, "title"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 255
    .restart local v3       #rowId:J
    cmp-long v7, v3, v9

    if-lez v7, :cond_60

    .line 256
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_60

    .line 240
    :pswitch_data_88
    .packed-switch 0x64
        :pswitch_47
        :pswitch_2e
        :pswitch_6f
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 103
    new-instance v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;-><init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    const-string v1, "w"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "android.permission.INSTALL_DRM"

    .line 397
    .local v0, requiredPermission:Ljava/lang/String;
    :goto_a
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_30

    .line 399
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    .end local v0           #requiredPermission:Ljava/lang/String;
    :cond_2d
    const-string v0, "android.permission.ACCESS_DRM"

    goto :goto_a

    .line 401
    .restart local v0       #requiredPermission:Ljava/lang/String;
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/drm/DrmProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v4, 0x1

    .line 140
    const/4 v5, 0x0

    .line 142
    .local v5, groupBy:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_b8

    .line 164
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_2d
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    :goto_32
    if-eqz p2, :cond_9b

    .line 168
    const/4 v9, 0x0

    .local v9, i:I
    :goto_35
    array-length v2, p2

    if-ge v9, v2, :cond_9b

    .line 169
    aget-object v2, p2, v9

    const-string v3, "_display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 170
    const-string v2, "title AS _display_name"

    aput-object v2, p2, v9

    .line 168
    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 150
    .end local v9           #i:I
    :pswitch_49
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 155
    :pswitch_6f
    const-string v2, "images"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_32

    .line 159
    :pswitch_75
    const-string v2, "images"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 175
    :cond_9b
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 176
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_b7

    .line 179
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 181
    :cond_b7
    return-object v8

    .line 144
    :pswitch_data_b8
    .packed-switch 0x64
        :pswitch_2d
        :pswitch_49
        :pswitch_6f
        :pswitch_75
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    .line 370
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires ACCESS_DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_14
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 375
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 377
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v4

    .line 378
    :try_start_23
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p3, v3}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 382
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v3, v3, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v3, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, count:I
    monitor-exit v4

    .line 388
    return v0

    .line 386
    .end local v0           #count:I
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_36

    throw v3
.end method
