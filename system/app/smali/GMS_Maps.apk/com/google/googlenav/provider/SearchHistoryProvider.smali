.class public Lcom/google/googlenav/provider/SearchHistoryProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/google/googlenav/provider/h;

.field private c:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "content://com.google.android.maps.SearchHistoryProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 111
    return-void
.end method

.method private a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    if-gez p4, :cond_9

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 234
    :cond_9
    if-lez p4, :cond_48

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT _id FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DESC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LIMIT -1 OFFSET "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_44
    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void

    :cond_48
    move-object v0, v1

    goto :goto_44
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lat/B;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/provider/g;

    invoke-direct {v2, p2, p1, p0, p3}, Lcom/google/googlenav/provider/g;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lat/B;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 373
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/google/googlenav/provider/SearchHistoryProvider;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 376
    .line 379
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "data1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_27

    move-result-object v1

    .line 382
    if-eqz v1, :cond_31

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    move-result v0

    if-lez v0, :cond_31

    move v0, v7

    .line 386
    :goto_21
    if-eqz v1, :cond_26

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_26
    return v0

    .line 386
    :catchall_27
    move-exception v0

    move-object v1, v6

    :goto_29
    if-eqz v1, :cond_2e

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v0

    .line 386
    :catchall_2f
    move-exception v0

    goto :goto_29

    :cond_31
    move v0, v8

    goto :goto_21
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->b:Lcom/google/googlenav/provider/h;

    invoke-virtual {v1}, Lcom/google/googlenav/provider/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 201
    sget-object v2, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 204
    const-string v0, "suggestions"

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 207
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/provider/SearchHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 210
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 251
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 252
    :cond_c
    const-string v0, "suggestions"

    .line 253
    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    .line 254
    const/16 v2, 0x14

    .line 260
    iget-object v3, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->b:Lcom/google/googlenav/provider/h;

    invoke-virtual {v3}, Lcom/google/googlenav/provider/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 261
    invoke-virtual {p0}, Lcom/google/googlenav/provider/SearchHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 264
    invoke-virtual {v3, v0, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 265
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_4f

    .line 269
    invoke-direct {p0, v4, v0, p1, v2}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 272
    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 274
    return-object v0

    .line 256
    :cond_36
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_4f
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 184
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v4}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->c:Landroid/content/UriMatcher;

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->c:Landroid/content/UriMatcher;

    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suggestions"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->c:Landroid/content/UriMatcher;

    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suggestions/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    new-instance v0, Lcom/google/googlenav/provider/h;

    invoke-virtual {p0}, Lcom/google/googlenav/provider/SearchHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/provider/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->b:Lcom/google/googlenav/provider/h;

    .line 192
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x3

    .line 284
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 287
    if-nez p5, :cond_58

    const-string v7, "_id desc"

    .line 290
    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 291
    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    if-ne v1, v3, :cond_5a

    .line 292
    :cond_16
    const-string v2, "suggestions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 293
    if-ne v1, v3, :cond_3e

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 301
    :cond_3e
    iget-object v1, p0, Lcom/google/googlenav/provider/SearchHistoryProvider;->b:Lcom/google/googlenav/provider/h;

    invoke-virtual {v1}, Lcom/google/googlenav/provider/h;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 302
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/google/googlenav/provider/SearchHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 307
    return-object v0

    :cond_58
    move-object v7, p5

    .line 287
    goto :goto_b

    .line 297
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t match Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No updates allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
