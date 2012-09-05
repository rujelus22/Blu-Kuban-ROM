.class public Lcom/sprint/w/installer/ContentProvider;
.super Landroid/content/ContentProvider;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/ContentProvider$SqlArguments;,
        Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;,
        Lcom/sprint/w/installer/ContentProvider$Delivery;,
        Lcom/sprint/w/installer/ContentProvider$Favorites;
    }
.end annotation


# static fields
.field public static final AUTHOR:Ljava/lang/String; = "author"

.field static final AUTHORITY:Ljava/lang/String; = "com.sprint.installer"

.field public static final CONTACT_EMAIL:Ljava/lang/String; = "contEmail"

.field public static final CONTACT_PHONE:Ljava/lang/String; = "contPhone"

.field public static final CONTACT_URL:Ljava/lang/String; = "contUrl"

.field private static final DATABASE_NAME:Ljava/lang/String; = "content.db"

.field private static final DATABASE_VERSION:I = 0xb

.field public static final DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final DESCRIPTION:Ljava/lang/String; = "descr"

.field public static final DL_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final DL_DETAILS_INTENT:Ljava/lang/String; = "detailsIntent"

.field public static final DL_FILE_PATH:Ljava/lang/String; = "filepath"

.field public static final DL_INSTALL_INTENT:Ljava/lang/String; = "installIntent"

.field public static final DL_LOCKED:Ljava/lang/String; = "isLocked"

.field public static final DL_PACK_ID:Ljava/lang/String; = "packId"

.field public static final DL_PERCENT_COMPLETE:Ljava/lang/String; = "percentComplete"

.field public static final DL_TITLE:Ljava/lang/String; = "title"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field static final ITEM_TYPE_APP:I = 0x0

.field static final ITEM_TYPE_FILE:I = 0x5

.field static final ITEM_TYPE_LAYOUT:I = 0x4

.field static final ITEM_TYPE_RINGTONE:I = 0x1

.field static final ITEM_TYPE_WALLPAPER:I = 0x2

.field static final ITEM_TYPE_WALLPAPER_THUMB:I = 0x3

.field public static final KEEP:Ljava/lang/String; = "keep"

.field public static final LOCKED:Ljava/lang/String; = "isLocked"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PACK_ID:Ljava/lang/String; = "packId"

.field public static final PACK_NAME:Ljava/lang/String; = "packName"

.field public static final PACK_VERSION:Ljava/lang/String; = "packVersion"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PSI_ID:Ljava/lang/String; = "psiId"

.field public static final SRC_URL:Ljava/lang/String; = "srcUrl"

.field public static final SWITCHER_ICON:Ljava/lang/String; = "swIcon"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URI:Landroid/net/Uri; = null

.field public static final URI_DELIVERY:Landroid/net/Uri; = null

.field public static final URI_DOWNLOADS:Landroid/net/Uri; = null

.field public static final URI_INSTALLER_FAVORITES:Landroid/net/Uri; = null

.field public static final URI_PACKS:Landroid/net/Uri; = null

.field public static final VERSION_CODE:Ljava/lang/String; = "verCode"

.field public static final VERSION_NAME:Ljava/lang/String; = "verName"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sprint/w/installer/ContentProvider;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->log:Lcom/sprint/id/logger/Logger;

    .line 35
    const-string v0, "content://com.sprint.installer/components"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.sprint.installer/packs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.sprint.installer/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.sprint.installer/downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sprint.installer/delivery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentProvider;->URI_DELIVERY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 396
    return-void
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/sprint/w/installer/ContentProvider;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 514
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 516
    :cond_10
    invoke-virtual {p0}, Lcom/sprint/w/installer/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 518
    :cond_1c
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 495
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 496
    .local v0, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    iget-object v4, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 497
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 499
    :try_start_e
    array-length v3, p2

    .line 500
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_29

    .line 501
    iget-object v4, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    .line 502
    const/4 v4, 0x0

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 510
    :goto_25
    return v4

    .line 500
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 505
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 507
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 509
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider;->sendNotify(Landroid/net/Uri;)V

    .line 510
    array-length v4, p2

    goto :goto_25

    .line 507
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_34
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 431
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 432
    .local v0, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    iget-object v3, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 433
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 435
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider;->sendNotify(Landroid/net/Uri;)V

    .line 437
    :cond_1a
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 442
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    .local v0, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    iget-object v1, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/vnd.sprint."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    :goto_23
    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/vnd.sprint."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 452
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 453
    .local v0, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    iget-object v5, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 454
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 455
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_19

    .line 460
    :goto_18
    return-object v4

    .line 458
    :cond_19
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 459
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 460
    goto :goto_18
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 467
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sprint/w/installer/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, path:Ljava/lang/String;
    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    :try_start_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_18} :catch_1a

    move-result-object v1

    .line 531
    :goto_19
    return-object v1

    .line 528
    :catch_1a
    move-exception v0

    .line 529
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 473
    new-instance v8, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    .local v8, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 475
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 477
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 478
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sprint/w/installer/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 479
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 484
    new-instance v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/sprint/w/installer/ContentProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 485
    .local v0, args:Lcom/sprint/w/installer/ContentProvider$SqlArguments;
    iget-object v3, p0, Lcom/sprint/w/installer/ContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 486
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sprint/w/installer/ContentProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 488
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider;->sendNotify(Landroid/net/Uri;)V

    .line 490
    :cond_1a
    return v1
.end method
