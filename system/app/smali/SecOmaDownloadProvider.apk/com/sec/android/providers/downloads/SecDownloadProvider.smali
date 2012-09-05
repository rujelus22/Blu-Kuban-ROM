.class public final Lcom/sec/android/providers/downloads/SecDownloadProvider;
.super Landroid/content/ContentProvider;
.source "SecDownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/providers/downloads/SecDownloadProvider$1;,
        Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;,
        Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;,
        Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;
    }
.end annotation


# static fields
.field private static final BASE_URIS:[Landroid/net/Uri;

.field private static final sAppReadableColumnsArray:[Ljava/lang/String;

.field private static sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDefContainerUid:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSystemUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 86
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "sisodownloads"

    const-string v3, "sisodownloads"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "sisodownloads"

    const-string v3, "sisodownloads/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sput-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 94
    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "entity"

    aput-object v2, v1, v4

    const-string v2, "_data"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mimetype"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "destination"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "control"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "notificationclass"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "downloadmethod"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "state"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "dd_primaryMimeType"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "dd_SecondaryMimeType1"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "dd_SecondaryMimeType2"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "dd_fileName"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "dd_vendor"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "dd_description"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "dd_contentSize"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "dd_objUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "dd_notifyurl"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "dd_majorVersion"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "storagetype"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "scanned"

    aput-object v3, v1, v2

    sput-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_dc
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_ed

    .line 131
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 133
    :cond_ed
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 139
    iput v1, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mSystemUid:I

    .line 140
    iput v1, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mDefContainerUid:I

    .line 1009
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 982
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 983
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    :cond_9
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 996
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 998
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_9
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "from"
    .parameter "to"
    .parameter "defaultValue"

    .prologue
    .line 1004
    invoke-static {p0, p1, p2}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1005
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1006
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_c
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 293
    :try_start_0
    const-string v1, "CREATE TABLE sisodownloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, downloadmethod INTEGER, state INTEGER, storagetype INTERGER, dd_primaryMimeType TEXT, dd_SecondaryMimeType1 TEXT, dd_SecondaryMimeType2 TEXT, dd_fileName TEXT, dd_vendor TEXT, dd_description TEXT, dd_contentSize INTEGER, dd_objUrl TEXT, dd_notifyurl TEXT, dd_majorVersion TEXT, scanned BOOLEAN);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_d

    .line 342
    const-string v1, "SecDownloader"

    const-string v2, "SecDownloadProvider : createTable : Successfully Created Table in the database "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 337
    :catch_d
    move-exception v0

    .line 338
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "SecDownloader"

    const-string v2, "SecDownloadProvider : createTable : couldn\'t create table in CDDownloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 351
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS sisodownloads"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 357
    return-void

    .line 352
    :catch_6
    move-exception v0

    .line 353
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "SecDownloader"

    const-string v2, "SecDownloadProvider : dropTable : couldn\'t drop table in CDDownloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    throw v0
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;
    .registers 10
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "uriMatch"

    .prologue
    .line 564
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;-><init>(Lcom/sec/android/providers/downloads/SecDownloadProvider$1;)V

    .line 565
    .local v0, selection:Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1b

    .line 568
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :cond_1b
    return-object v0
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .registers 11
    .parameter "uri"
    .parameter "uriMatch"

    .prologue
    .line 545
    const-string v5, "SecDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " uriMatch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, downloadId:Ljava/lang/Long;
    const/4 v5, 0x2

    if-ne p2, v5, :cond_28

    .line 548
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 551
    :cond_28
    sget-object v0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v3, :cond_65

    aget-object v4, v0, v2

    .line 552
    .local v4, uriToNotify:Landroid/net/Uri;
    if-eqz v1, :cond_3a

    .line 553
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 555
    :cond_3a
    const-string v5, "SecDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " notifyChange is called"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 558
    .end local v4           #uriToNotify:Landroid/net/Uri;
    :cond_65
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 819
    sget-object v4, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p2, v4}, Lcom/sec/android/providers/downloads/SecHelpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 824
    sget-object v4, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 825
    .local v3, match:I
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;

    move-result-object v2

    .line 827
    .local v2, fullSelection:Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 830
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_5c

    .line 860
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    :pswitch_31
    const-string v4, "sisodownloads"

    invoke-virtual {v2}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 849
    .local v0, count:I
    const-string v4, "SecDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadProvider : delete : count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0, p1, v3}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 866
    return v0

    .line 830
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 269
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 270
    .local v0, match:I
    packed-switch v0, :pswitch_data_28

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :pswitch_22
    const-string v1, "vnd.android.cursor.dir/download"

    .line 275
    :goto_24
    return-object v1

    :pswitch_25
    const-string v1, "vnd.android.cursor.item/download"

    goto :goto_24

    .line 270
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 364
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 365
    sget-object v0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 371
    if-eq v4, v10, :cond_2a

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown/Invalid URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 382
    const-string v0, "uri"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 383
    const-string v0, "entity"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 384
    const-string v0, "hint"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 385
    const-string v0, "mimetype"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 388
    const-string v0, "no_integrity"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_a4

    .line 390
    const-string v1, "no_integrity"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    :goto_50
    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_5d

    .line 397
    const-string v0, "_data"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 399
    :cond_5d
    const-string v0, "destination"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_b3

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v1, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_85

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_85

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_ae

    .line 406
    :cond_85
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting destination to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not allowed, unless PERMISSION_ACCESS_ADVANCED is granted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_a4
    const-string v0, "no_integrity"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_50

    .line 410
    :cond_ae
    const-string v1, "destination"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    :cond_b3
    const-string v0, "visibility"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 422
    const-string v1, "visibility"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v0, "control"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 427
    const-string v0, "status"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 428
    const-string v0, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    const-string v0, "notificationpackage"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    const-string v1, "notificationclass"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    if-eqz v0, :cond_106

    if-eqz v1, :cond_106

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 434
    if-eqz v6, :cond_fc

    :try_start_eb
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v6, :cond_106

    .line 436
    :cond_fc
    const-string v6, "notificationpackage"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "notificationclass"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_eb .. :try_end_106} :catch_241

    .line 443
    :cond_106
    :goto_106
    const-string v0, "notificationextras"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 444
    const-string v0, "cookiedata"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 446
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_118
    :goto_118
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    const-string v7, "http_header_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 452
    const-string v1, ":"

    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 453
    aget-object v1, v0, v9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, "cookie"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 455
    const-string v1, "cookiedata"

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 462
    :cond_163
    const-string v0, "useragent"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 463
    const-string v0, "referer"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17e

    .line 467
    const-string v0, "otheruid"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 469
    :cond_17e
    const-string v0, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_196

    .line 471
    const-string v0, "uid"

    invoke-static {v0, p2, v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 477
    :cond_196
    const-string v0, "title"

    const-string v1, ""

    invoke-static {v0, p2, v5, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 479
    const-string v0, "description"

    const-string v1, ""

    invoke-static {v0, p2, v5, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 481
    const-string v0, "total_bytes"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string v0, "current_bytes"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v0, "downloadmethod"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 498
    if-nez v0, :cond_22f

    .line 499
    const-string v0, "downloadmethod"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :goto_1c8
    const-string v0, "storagetype"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 505
    if-nez v0, :cond_235

    .line 506
    const-string v0, "storagetype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    :goto_1d9
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 512
    if-nez v0, :cond_23b

    .line 513
    const-string v0, "state"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    :goto_1ea
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 521
    const-string v1, "sisodownloads"

    invoke-virtual {v3, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 525
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_244

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    invoke-direct {p0, p1, v4}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 536
    :goto_22e
    return-object v0

    .line 501
    :cond_22f
    const-string v1, "downloadmethod"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c8

    .line 508
    :cond_235
    const-string v1, "storagetype"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d9

    .line 515
    :cond_23b
    const-string v1, "state"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1ea

    .line 439
    :catch_241
    move-exception v0

    goto/16 :goto_106

    :cond_244
    move-object v0, v2

    goto :goto_22e
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 243
    new-instance v2, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;-><init>(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 246
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mSystemUid:I

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_10
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.defcontainer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1e} :catch_27

    move-result-object v0

    .line 257
    :goto_1f
    if-eqz v0, :cond_25

    .line 258
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mDefContainerUid:I

    .line 260
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 253
    :catch_27
    move-exception v1

    .line 255
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 938
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 939
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 940
    .local v7, count:I
    :goto_17
    if-eq v7, v12, :cond_54

    .line 942
    if-eqz v6, :cond_1e

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 945
    :cond_1e
    if-nez v7, :cond_3b

    .line 946
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7           #count:I
    :cond_39
    move v7, v11

    .line 939
    goto :goto_17

    .line 948
    .restart local v7       #count:I
    :cond_3b
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 952
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 953
    .local v8, path:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 954
    if-nez v8, :cond_68

    .line 955
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_68
    invoke-static {v8}, Lcom/sec/android/providers/downloads/SecHelpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 958
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Invalid filename."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_76
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 962
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_a1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 967
    .local v9, ret:Landroid/os/ParcelFileDescriptor;
    if-nez v9, :cond_b6

    .line 972
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_b6
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    invoke-virtual {p0, p1, v10, v3, v3}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 978
    return-object v9
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 615
    sget-object v3, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/sec/android/providers/downloads/SecHelpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 617
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 619
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 621
    .local v11, match:I
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v0, v1, v11}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;

    move-result-object v10

    .line 637
    .local v10, fullSelection:Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;
    const-string v3, "sisodownloads"

    invoke-virtual {v10}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 641
    .local v12, ret:Landroid/database/Cursor;
    if-eqz v12, :cond_37

    .line 642
    new-instance v13, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;

    invoke-direct {v13, p0, v12}, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;-><init>(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/Cursor;)V

    .end local v12           #ret:Landroid/database/Cursor;
    .local v13, ret:Landroid/database/Cursor;
    move-object v12, v13

    .line 645
    .end local v13           #ret:Landroid/database/Cursor;
    .restart local v12       #ret:Landroid/database/Cursor;
    :cond_37
    if-eqz v12, :cond_44

    .line 646
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v12, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 657
    :cond_44
    return-object v12
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xbe

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 713
    sget-object v0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p3, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 725
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_86

    .line 726
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 727
    const-string v0, "entity"

    invoke-static {v0, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 728
    const-string v0, "visibility"

    invoke-static {v0, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 729
    const-string v0, "control"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_136

    .line 731
    const-string v2, "control"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v6

    .line 738
    :goto_37
    const-string v2, "control"

    invoke-static {v2, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 739
    const-string v2, "title"

    invoke-static {v2, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 740
    const-string v2, "description"

    invoke-static {v2, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 741
    const-string v2, "status"

    invoke-static {v2, p2, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    move-object p2, v1

    .line 775
    :goto_4c
    sget-object v1, Lcom/sec/android/providers/downloads/SecDownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 776
    packed-switch v1, :pswitch_data_13a

    .line 789
    const-string v0, "SecDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating unknown/invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_86
    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 753
    if-eqz v9, :cond_bd

    .line 754
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 757
    :cond_ac
    const-string v1, "title"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_ba
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_bd
    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 763
    if-eqz v1, :cond_e2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_e2

    move v0, v6

    .line 766
    :goto_cc
    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_dd

    .line 767
    const-string v1, "scanned"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    :cond_dd
    if-eqz v0, :cond_133

    move v0, v6

    .line 771
    goto/16 :goto_4c

    :cond_e2
    move v0, v7

    .line 763
    goto :goto_cc

    .line 779
    :pswitch_e4
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;

    move-result-object v2

    .line 780
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_fc

    .line 781
    const-string v3, "sisodownloads"

    invoke-virtual {v2}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/providers/downloads/SecDownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v3, p2, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 794
    :cond_fc
    const-string v2, "SecDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecDownloadProvider : update : uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0, p1, v1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 798
    if-eqz v0, :cond_132

    .line 799
    const-string v0, "SecDownloader"

    const-string v1, " start service is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 801
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 809
    :cond_132
    return v7

    :cond_133
    move v0, v7

    goto/16 :goto_4c

    :cond_136
    move v0, v7

    goto/16 :goto_37

    .line 776
    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_e4
    .end packed-switch
.end method
