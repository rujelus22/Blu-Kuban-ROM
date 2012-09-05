.class public final Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;
.super Landroid/content/ContentProvider;
.source "SecDownloadSaveasProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$1;,
        Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;,
        Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;,
        Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    }
.end annotation


# static fields
.field private static final BASE_URIS:[Landroid/net/Uri;

.field public static final DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

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
.field private LOG_TAG:Ljava/lang/String;

.field private LOG_V:Z

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

    sput-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 87
    sget-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloadsaveas"

    const-string v3, "downloadsaveas"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloadsaveas"

    const-string v3, "downloadsaveas/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    const-string v1, "content://downloadsaveas/downloadsaveas"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    .line 94
    new-array v1, v4, [Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 98
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "hint"

    aput-object v2, v1, v4

    const-string v2, "storagetype"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "status"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4b
    sget-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5c

    .line 109
    sget-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 111
    :cond_5c
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 117
    iput v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mSystemUid:I

    .line 118
    iput v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mDefContainerUid:I

    .line 120
    const-string v0, "SecDownloadSaveasProvider"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 644
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 645
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_9

    .line 646
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    :cond_9
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 658
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 660
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_9
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 274
    :try_start_0
    const-string v1, "CREATE TABLE downloadsaveas( _auto_id INTEGER PRIMARY KEY AUTOINCREMENT,_id INTEGER, hint TEXT, storagetype INTERGER, status INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_d

    .line 285
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SecDownloadSaveasProvider : createTable : Successfully Created Table in the database "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 280
    :catch_d
    move-exception v0

    .line 281
    .local v0, ex:Landroid/database/SQLException;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SecDownloadSaveasProvider : createTable : couldn\'t create table in CDDownloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 294
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS downloadsaveas"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 300
    return-void

    .line 295
    :catch_6
    move-exception v0

    .line 296
    .local v0, ex:Landroid/database/SQLException;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SecDownloadSaveasProvider : dropTable : couldn\'t drop table in CDDownloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    throw v0
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    .registers 10
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "uriMatch"

    .prologue
    .line 370
    new-instance v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;-><init>(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$1;)V

    .line 371
    .local v0, selection:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v1, :cond_25

    .line 374
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecDownloadSaveasProvider : getWhereClause : uriMatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_25
    const/4 v1, 0x2

    if-ne p4, v1, :cond_57

    .line 380
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v1, :cond_48

    .line 381
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecDownloadSaveasProvider : getWhereClause : getDownloadIdFromUri(uri) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_48
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_57
    return-object v0
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "db"

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    if-eqz p5, :cond_11

    .line 493
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_11
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    if-nez p1, :cond_48

    .line 497
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1d
    :goto_1d
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    if-nez p3, :cond_6f

    .line 513
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_31
    :goto_31
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void

    .line 498
    :cond_48
    array-length v2, p1

    if-nez v2, :cond_51

    .line 499
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 501
    :cond_51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_52
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 502
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 514
    .end local v0           #i:I
    :cond_6f
    array-length v2, p3

    if-nez v2, :cond_78

    .line 515
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 517
    :cond_78
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_79
    array-length v2, p3

    if-ge v0, v2, :cond_31

    .line 518
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_79
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .registers 10
    .parameter "uri"
    .parameter "uriMatch"

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, downloadId:Ljava/lang/Long;
    const/4 v5, 0x2

    if-ne p2, v5, :cond_10

    .line 355
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 358
    :cond_10
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->BASE_URIS:[Landroid/net/Uri;

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_31

    aget-object v4, v0, v2

    .line 359
    .local v4, uriToNotify:Landroid/net/Uri;
    if-eqz v1, :cond_22

    .line 360
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 362
    :cond_22
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 364
    .end local v4           #uriToNotify:Landroid/net/Uri;
    :cond_31
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 607
    iget-boolean v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v4, :cond_b

    .line 608
    iget-object v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasProvider : delete : Deletes a row in the database"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_b
    sget-object v4, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 612
    .local v3, match:I
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;

    move-result-object v2

    .line 614
    .local v2, fullSelection:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 617
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_7e

    .line 629
    iget-boolean v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v4, :cond_3a

    .line 630
    iget-object v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadSaveasProvider : delete : deleting unknown/invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_3a
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

    .line 621
    :pswitch_53
    const-string v4, "downloadsaveas"

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 623
    .local v0, count:I
    iget-object v4, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadSaveasProvider : delete : count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 640
    return v0

    .line 617
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 250
    sget-object v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 251
    .local v0, match:I
    packed-switch v0, :pswitch_data_44

    .line 259
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v1, :cond_25

    .line 260
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecDownloadSaveasProvider : getType : getting mimetype for an unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_25
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

    .line 253
    :pswitch_3e
    const-string v1, "vnd.android.cursor.dir/downloadsaveas"

    .line 256
    :goto_40
    return-object v1

    :pswitch_41
    const-string v1, "vnd.android.cursor.item/downloadsaveas"

    goto :goto_40

    .line 251
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 307
    iget-object v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 308
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 309
    .local v2, match:I
    iget-boolean v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v6, :cond_17

    .line 310
    iget-object v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v7, "SecDownloadSaveasProvider : insert : Insert a row in the database "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_17
    const/4 v6, 0x1

    if-eq v2, v6, :cond_4f

    .line 315
    iget-boolean v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v6, :cond_36

    .line 316
    iget-object v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecDownloadSaveasProvider : insert : calling insert on an unknown/invalid URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_36
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown/Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 323
    :cond_4f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v1, filteredValues:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-static {v6, p2, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 326
    const-string v6, "hint"

    invoke-static {v6, p2, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 327
    const-string v6, "storagetype"

    invoke-static {v6, p2, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 328
    const-string v6, "status"

    invoke-static {v6, p2, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 330
    const-string v6, "downloadsaveas"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 332
    .local v4, rowID:J
    const/4 v3, 0x0

    .line 334
    .local v3, ret:Landroid/net/Uri;
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_97

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 336
    invoke-direct {p0, p1, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 344
    :cond_96
    :goto_96
    return-object v3

    .line 338
    :cond_97
    iget-boolean v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v6, :cond_96

    .line 339
    iget-object v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v7, "SecDownloadSaveasProvider : insert : couldn\'t insert into CDDownloads database"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 224
    new-instance v2, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;-><init>(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 227
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mSystemUid:I

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_10
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.defcontainer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1e} :catch_27

    move-result-object v0

    .line 238
    :goto_1f
    if-eqz v0, :cond_25

    .line 239
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mDefContainerUid:I

    .line 241
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 234
    :catch_27
    move-exception v1

    .line 236
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 28
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v5, :cond_82

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecDownloadSaveasProvider : query : query  database on URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecDownloadSaveasProvider : query : query  database begin  Selection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecDownloadSaveasProvider : query : query  database begin  Selection Arg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecDownloadSaveasProvider : query : query  database begin  Sort   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and Projection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 431
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 433
    .local v19, match:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;

    move-result-object v18

    .line 445
    .local v18, fullSelection:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v5, :cond_b3

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 446
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 449
    :cond_b3
    const-string v11, "downloadsaveas"

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p2

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 453
    .local v20, ret:Landroid/database/Cursor;
    if-eqz v20, :cond_d7

    .line 454
    new-instance v21, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/Cursor;)V

    .end local v20           #ret:Landroid/database/Cursor;
    .local v21, ret:Landroid/database/Cursor;
    move-object/from16 v20, v21

    .line 457
    .end local v21           #ret:Landroid/database/Cursor;
    .restart local v20       #ret:Landroid/database/Cursor;
    :cond_d7
    if-eqz v20, :cond_149

    .line 459
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v5, :cond_109

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on behalf of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 473
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v5, :cond_148

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on behalf of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_148
    :goto_148
    return-object v20

    .line 478
    :cond_149
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v5, :cond_148

    .line 479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "query failed in downloads database"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 540
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v8, :cond_b

    .line 541
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v9, "SecDownloadSaveasProvider : update : Updating a row in the database"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_b
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 547
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x0

    .line 548
    .local v4, rowId:J
    const/4 v7, 0x0

    .line 551
    .local v7, startService:Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    if-eq v8, v9, :cond_7c

    .line 552
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v2, filteredValues:Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v8, p2, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 555
    const-string v8, "hint"

    invoke-static {v8, p2, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 556
    const-string v8, "storagetype"

    invoke-static {v8, p2, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 557
    const-string v8, "status"

    invoke-static {v8, p2, v2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 559
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v8, :cond_42

    .line 560
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v9, "SecDownloadSaveasProvider : update : getCallingPid is not equal to my procee id "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_42
    :goto_42
    sget-object v8, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 573
    .local v3, match:I
    packed-switch v3, :pswitch_data_b2

    .line 586
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updating unknown/invalid URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot update URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 564
    .end local v2           #filteredValues:Landroid/content/ContentValues;
    .end local v3           #match:I
    :cond_7c
    move-object v2, p2

    .line 566
    .restart local v2       #filteredValues:Landroid/content/ContentValues;
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v8, :cond_42

    .line 567
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v9, "SecDownloadSaveasProvider : update : getCallingPid is  equal to my procee id "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 576
    .restart local v3       #match:I
    :pswitch_89
    invoke-direct {p0, p1, p3, p4, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;

    move-result-object v6

    .line 577
    .local v6, selection:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_b0

    .line 578
    const-string v8, "downloadsaveas"

    invoke-virtual {v6}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, count:I
    :goto_a1
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 592
    iget-boolean v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z

    if-eqz v8, :cond_af

    .line 593
    iget-object v8, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;

    const-string v9, "SecDownloadSaveasProvider : update : Exiting provider update end "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_af
    return v0

    .line 581
    .end local v0           #count:I
    :cond_b0
    const/4 v0, 0x0

    .line 583
    .restart local v0       #count:I
    goto :goto_a1

    .line 573
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_89
        :pswitch_89
    .end packed-switch
.end method
