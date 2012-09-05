.class public final Lcom/cooliris/picasa/PicasaContentProvider;
.super Lcom/cooliris/picasa/TableContentProvider;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;,
        Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;,
        Lcom/cooliris/picasa/PicasaContentProvider$Database;
    }
.end annotation


# static fields
.field public static final ALBUMS_URI:Landroid/net/Uri;

.field public static final BASE_URI:Landroid/net/Uri;

.field private static final ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

.field private static final ID_EDITED_PROJECTION:[Ljava/lang/String;

.field public static final PHOTOS_URI:Landroid/net/Uri;


# instance fields
.field private mActiveAccount:Landroid/accounts/Account;

.field private final mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

.field private final mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;

.field private mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    const-string v0, "content://com.cooliris.picasa.contentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_edited"

    aput-object v1, v0, v3

    sput-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->ID_EDITED_PROJECTION:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_edited"

    aput-object v1, v0, v3

    const-string v1, "display_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/picasa/PicasaContentProvider;->ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cooliris/picasa/TableContentProvider;-><init>()V

    .line 58
    new-instance v0, Lcom/cooliris/picasa/PhotoEntry;

    invoke-direct {v0}, Lcom/cooliris/picasa/PhotoEntry;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;

    .line 60
    new-instance v0, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v0}, Lcom/cooliris/picasa/AlbumEntry;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    .line 677
    return-void
.end method

.method private deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 574
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->deleteAlbumPhotos(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 577
    sget-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cooliris/picasa/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 578
    return-void
.end method

.method private deleteAlbumPhotos(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 14
    .parameter "db"
    .parameter "albumId"

    .prologue
    const/4 v5, 0x0

    .line 581
    const-string v0, "PicasaContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAlbumPhotos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-object v0, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, photoTableName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 586
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 588
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2f
    sget-object v2, Lcom/cooliris/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "album_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 594
    :cond_41
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/cooliris/picasa/PicasaContentProvider;->deletePhotoCache(J)V

    .line 595
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_41

    .line 598
    :cond_4f
    const-string v0, "album_id=?"

    invoke-virtual {p1, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_54} :catch_5a

    .line 602
    if-eqz v8, :cond_59

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_59
    :goto_59
    return-void

    .line 599
    :catch_5a
    move-exception v9

    .line 600
    .local v9, e:Ljava/lang/Exception;
    :try_start_5b
    const-string v0, "PicasaContentProvider"

    const-string v2, "deleteAlbumPhotos::"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_68

    .line 602
    if-eqz v8, :cond_59

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_59

    .line 602
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_68
    move-exception v0

    if-eqz v8, :cond_6e

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v0
.end method

.method private deletePhoto(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5
    .parameter "db"
    .parameter "photoId"

    .prologue
    .line 609
    sget-object v0, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cooliris/picasa/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 610
    invoke-direct {p0, p2, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->deletePhotoCache(J)V

    .line 611
    return-void
.end method

.method private deletePhotoCache(J)V
    .registers 6
    .parameter "photoId"

    .prologue
    .line 615
    const-string v0, "PicasaContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePhotoCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 14
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 540
    const-string v0, "PicasaContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, albumTableName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v3

    .line 547
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 549
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_2b
    sget-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cooliris/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_account=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 553
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 555
    :cond_43
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/cooliris/picasa/PicasaContentProvider;->deleteAlbumPhotos(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 556
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_43

    .line 559
    :cond_51
    const-string v0, "sync_account=?"

    invoke-virtual {p1, v8, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    sget-object v0, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_61} :catch_67

    .line 566
    if-eqz v9, :cond_66

    .line 567
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_66
    :goto_66
    return-void

    .line 563
    :catch_67
    move-exception v10

    .line 564
    .local v10, e:Ljava/lang/Exception;
    :try_start_68
    const-string v0, "PicasaContentProvider"

    const-string v1, "deleteUser::"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_75

    .line 566
    if-eqz v9, :cond_66

    .line 567
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_66

    .line 566
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_75
    move-exception v0

    if-eqz v9, :cond_7b

    .line 567
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v0
.end method

.method public static isSyncEnabled(Ljava/lang/String;Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;)Z
    .registers 8
    .parameter "accountName"
    .parameter "context"

    .prologue
    .line 225
    iget-object v4, p1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    if-nez v4, :cond_7

    .line 226
    invoke-virtual {p1}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 228
    :cond_7
    iget-object v1, p1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 229
    .local v1, accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    array-length v3, v1

    .line 230
    .local v3, numAccounts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_23

    .line 231
    aget-object v0, v1, v2

    .line 232
    .local v0, account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    iget-object v4, v0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 233
    iget-object v4, v0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    const-string v5, "com.cooliris.picasa.contentprovider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 236
    .end local v0           #account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :goto_1f
    return v4

    .line 230
    .restart local v0       #account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 236
    .end local v0           #account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :cond_23
    const/4 v4, 0x1

    goto :goto_1f
.end method

.method private syncAlbumPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/cooliris/picasa/AlbumEntry;Landroid/content/SyncResult;)V
    .registers 33
    .parameter "context"
    .parameter "account"
    .parameter "album"
    .parameter "syncResult"

    .prologue
    .line 427
    const-string v4, "PicasaContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Syncing Picasa album: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/cooliris/picasa/AlbumEntry;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 430
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/cooliris/picasa/Entry;->id:J

    move-wide/from16 v18, v0

    .line 431
    .local v18, albumId:J
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 434
    .local v7, albumIdArgs:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 436
    .local v20, cursor:Landroid/database/Cursor;
    :try_start_32
    sget-object v4, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v4}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

    const-string v6, "album_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date_edited"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 438
    if-nez v20, :cond_53

    .line 439
    const-string v4, "PicasaContentProvider"

    const-string v5, "syncAlbumPhotos: failed to get cursor...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4d} :catch_136

    .line 533
    if-eqz v20, :cond_52

    .line 534
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_52
    :goto_52
    return-void

    .line 442
    :cond_53
    :try_start_53
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 446
    .local v25, localCount:I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    move-object/from16 v24, v0

    .line 447
    .local v24, local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    new-instance v23, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    invoke-direct/range {v23 .. v23}, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;-><init>()V

    .line 448
    .local v23, key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_64
    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_90

    .line 449
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 452
    new-instance v8, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v8 .. v13}, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;-><init>(JJI)V

    aput-object v8, v24, v22

    .line 448
    add-int/lit8 v22, v22, 0x1

    goto :goto_64

    .line 455
    :cond_90
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 458
    sget-object v14, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    .line 459
    .local v14, photoSchema:Lcom/cooliris/picasa/EntrySchema;
    const/4 v4, 0x1

    new-array v10, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v10, v4

    .line 462
    .local v10, displayIndex:[I
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    .line 463
    .local v17, accountManager:Landroid/accounts/AccountManager;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    new-instance v8, Lcom/cooliris/picasa/PicasaContentProvider$2;

    move-object/from16 v9, p0

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, p2

    move-object v15, v3

    move-object/from16 v16, p4

    invoke-direct/range {v8 .. v16}, Lcom/cooliris/picasa/PicasaContentProvider$2;-><init>(Lcom/cooliris/picasa/PicasaContentProvider;[ILcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;Ljava/lang/String;Lcom/cooliris/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/SyncResult;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v8}, Lcom/cooliris/picasa/PicasaApi;->getAlbumPhotos(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/cooliris/picasa/AlbumEntry;Lcom/cooliris/picasa/GDataParser$EntryHandler;)I

    move-result v27

    .line 500
    .local v27, result:I
    packed-switch v27, :pswitch_data_14e

    .line 512
    const/16 v22, 0x0

    :goto_c7
    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_105

    .line 513
    aget-object v26, v24, v22

    .line 514
    .local v26, metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    if-nez v4, :cond_e9

    .line 515
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/cooliris/picasa/PicasaContentProvider;->deletePhoto(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 516
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    iput-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    .line 512
    :cond_e9
    add-int/lit8 v22, v22, 0x1

    goto :goto_c7

    .line 502
    .end local v26           #metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :pswitch_ec
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 503
    const-string v4, "PicasaContentProvider"

    const-string v5, "syncAlbumPhotos error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_53 .. :try_end_fe} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_fe} :catch_136

    .line 533
    :pswitch_fe
    if-eqz v20, :cond_52

    .line 534
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_52

    .line 522
    :cond_105
    const/4 v4, 0x0

    :try_start_106
    move-object/from16 v0, p3

    iput-boolean v4, v0, Lcom/cooliris/picasa/AlbumEntry;->photosDirty:Z

    .line 523
    sget-object v4, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lcom/cooliris/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/Entry;)J

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_12f
    .catchall {:try_start_106 .. :try_end_12f} :catchall_147
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_12f} :catch_136

    .line 533
    if-eqz v20, :cond_52

    .line 534
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_52

    .line 530
    .end local v10           #displayIndex:[I
    .end local v14           #photoSchema:Lcom/cooliris/picasa/EntrySchema;
    .end local v17           #accountManager:Landroid/accounts/AccountManager;
    .end local v22           #i:I
    .end local v23           #key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    .end local v24           #local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    .end local v25           #localCount:I
    .end local v27           #result:I
    :catch_136
    move-exception v21

    .line 531
    .local v21, e:Ljava/lang/Exception;
    :try_start_137
    const-string v4, "PicasaContentProvider"

    const-string v5, "syncAlbumPhotos:: Exception..."

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_147

    .line 533
    if-eqz v20, :cond_52

    .line 534
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_52

    .line 533
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_147
    move-exception v4

    if-eqz v20, :cond_14d

    .line 534
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_14d
    throw v4

    .line 500
    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_ec
    .end packed-switch
.end method

.method private syncUserAlbums(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Lcom/cooliris/picasa/UserEntry;Landroid/content/SyncResult;)V
    .registers 25
    .parameter "context"
    .parameter "user"
    .parameter "syncResult"

    .prologue
    .line 297
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 298
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 301
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_5
    sget-object v4, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v4}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cooliris/picasa/PicasaContentProvider;->ID_EDITED_PROJECTION:[Ljava/lang/String;

    const-string v6, "sync_account=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    aput-object v10, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date_edited"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 306
    if-nez v14, :cond_30

    .line 307
    const-string v4, "PicasaContentProvider"

    const-string v5, "syncUserAlbums:: failed to get cursor...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_f9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_f1

    .line 384
    if-eqz v14, :cond_2f

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_2f
    :goto_2f
    return-void

    .line 310
    :cond_30
    :try_start_30
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 312
    .local v17, localCount:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    move-object/from16 v16, v0

    .line 313
    .local v16, local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3b
    move/from16 v0, v17

    if-eq v15, v0, :cond_57

    .line 314
    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 317
    new-instance v4, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;-><init>(JJI)V

    aput-object v4, v16, v15

    .line 313
    add-int/lit8 v15, v15, 0x1

    goto :goto_3b

    .line 319
    :cond_57
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 322
    sget-object v9, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    .line 323
    .local v9, albumSchema:Lcom/cooliris/picasa/EntrySchema;
    new-instance v6, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    invoke-direct {v6}, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;-><init>()V

    .line 324
    .local v6, key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    .line 325
    .local v13, accountManager:Landroid/accounts/AccountManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    move-object/from16 v20, v0

    new-instance v4, Lcom/cooliris/picasa/PicasaContentProvider$1;

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move-object v10, v3

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v4 .. v12}, Lcom/cooliris/picasa/PicasaContentProvider$1;-><init>(Lcom/cooliris/picasa/PicasaContentProvider;Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;Lcom/cooliris/picasa/UserEntry;Lcom/cooliris/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2, v4}, Lcom/cooliris/picasa/PicasaApi;->getAlbums(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/cooliris/picasa/UserEntry;Lcom/cooliris/picasa/GDataParser$EntryHandler;)I

    move-result v19

    .line 358
    .local v19, result:I
    packed-switch v19, :pswitch_data_100

    .line 368
    sget-object v4, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lcom/cooliris/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/Entry;)J

    .line 371
    const/4 v15, 0x0

    :goto_94
    move/from16 v0, v17

    if-eq v15, v0, :cond_e5

    .line 372
    aget-object v18, v16, v15

    .line 373
    .local v18, metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    if-nez v4, :cond_d0

    .line 374
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/cooliris/picasa/PicasaContentProvider;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 375
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v4, Landroid/content/SyncStats;->numDeletes:J

    .line 376
    const-string v4, "PicasaContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete album "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v7, v0, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_d0
    add-int/lit8 v15, v15, 0x1

    goto :goto_94

    .line 360
    .end local v18           #metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :pswitch_d3
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_de
    .catchall {:try_start_30 .. :try_end_de} :catchall_f9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_de} :catch_f1

    .line 384
    :pswitch_de
    if-eqz v14, :cond_2f

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2f

    .line 381
    :cond_e5
    const/4 v4, 0x1

    :try_start_e6
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_f9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ea} :catch_f1

    .line 384
    if-eqz v14, :cond_2f

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2f

    .line 382
    .end local v6           #key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    .end local v9           #albumSchema:Lcom/cooliris/picasa/EntrySchema;
    .end local v13           #accountManager:Landroid/accounts/AccountManager;
    .end local v15           #i:I
    .end local v16           #local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    .end local v17           #localCount:I
    .end local v19           #result:I
    :catch_f1
    move-exception v4

    .line 384
    if-eqz v14, :cond_2f

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2f

    .line 384
    :catchall_f9
    move-exception v4

    if-eqz v14, :cond_ff

    .line 385
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_ff
    throw v4

    .line 358
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_de
        :pswitch_d3
    .end packed-switch
.end method

.method private syncUserPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    .line 392
    iget-object v0, p1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 393
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 395
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_3
    sget-object v1, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v1}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cooliris/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_account=? AND photos_dirty=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 399
    if-nez v10, :cond_29

    .line 400
    const-string v1, "PicasaContentProvider"

    const-string v2, "syncUserPhotos:: failed to get cursor..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_67

    .line 419
    if-eqz v10, :cond_28

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_28
    :goto_28
    return-void

    .line 404
    :cond_29
    :try_start_29
    new-instance v8, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v8}, Lcom/cooliris/picasa/AlbumEntry;-><init>()V

    .line 405
    .local v8, album:Lcom/cooliris/picasa/AlbumEntry;
    const/4 v11, 0x0

    .local v11, i:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .local v9, count:I
    :goto_33
    if-eq v11, v9, :cond_61

    .line 406
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 407
    sget-object v1, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3, v8}, Lcom/cooliris/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/cooliris/picasa/Entry;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 408
    invoke-direct {p0, p1, p2, v8, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->syncAlbumPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/cooliris/picasa/AlbumEntry;Landroid/content/SyncResult;)V

    .line 412
    :cond_48
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 413
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 414
    const-string v1, "PicasaContentProvider"

    const-string v2, "syncUserPhotos interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5e} :catch_67

    .line 405
    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 419
    :cond_61
    if-eqz v10, :cond_28

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .line 417
    .end local v8           #album:Lcom/cooliris/picasa/AlbumEntry;
    .end local v9           #count:I
    .end local v11           #i:I
    :catch_67
    move-exception v1

    .line 419
    if-eqz v10, :cond_28

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .line 419
    :catchall_6e
    move-exception v1

    if-eqz v10, :cond_74

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v1
.end method

.method private syncUsers(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/cooliris/picasa/UserEntry;
    .registers 15
    .parameter "context"
    .parameter "syncResult"

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 242
    iget-object v1, p1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 243
    .local v1, accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    array-length v6, v1

    .line 244
    .local v6, numUsers:I
    new-array v8, v6, [Lcom/cooliris/picasa/UserEntry;

    .line 247
    .local v8, users:[Lcom/cooliris/picasa/UserEntry;
    sget-object v7, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    .line 248
    .local v7, schema:Lcom/cooliris/picasa/EntrySchema;
    iget-object v3, p1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 249
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7, v3}, Lcom/cooliris/picasa/EntrySchema;->queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 250
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_5b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 253
    :cond_18
    new-instance v4, Lcom/cooliris/picasa/UserEntry;

    invoke-direct {v4}, Lcom/cooliris/picasa/UserEntry;-><init>()V

    .line 254
    .local v4, entry:Lcom/cooliris/picasa/UserEntry;
    invoke-virtual {v7, v2, v4}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 259
    const/4 v5, 0x0

    .local v5, i:I
    :goto_21
    if-eq v5, v6, :cond_31

    .line 260
    aget-object v9, v1, v5

    iget-object v9, v9, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    iget-object v10, v4, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 261
    aput-object v4, v8, v5

    .line 265
    :cond_31
    if-ne v5, v6, :cond_55

    .line 266
    const-string v9, "PicasaContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deleting user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v9, 0x0

    iput-object v9, v4, Lcom/cooliris/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 268
    iget-object v9, v4, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-direct {p0, v3, v9}, Lcom/cooliris/picasa/PicasaContentProvider;->deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 270
    :cond_55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_18

    .line 276
    .end local v4           #entry:Lcom/cooliris/picasa/UserEntry;
    .end local v5           #i:I
    :cond_5b
    if-eqz v2, :cond_60

    .line 277
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_60
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_61
    if-eq v5, v6, :cond_94

    .line 282
    aget-object v4, v8, v5

    .line 283
    .restart local v4       #entry:Lcom/cooliris/picasa/UserEntry;
    aget-object v0, v1, v5

    .line 284
    .local v0, account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    if-nez v4, :cond_8e

    .line 285
    new-instance v4, Lcom/cooliris/picasa/UserEntry;

    .end local v4           #entry:Lcom/cooliris/picasa/UserEntry;
    invoke-direct {v4}, Lcom/cooliris/picasa/UserEntry;-><init>()V

    .line 286
    .restart local v4       #entry:Lcom/cooliris/picasa/UserEntry;
    iget-object v9, v0, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    iput-object v9, v4, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    .line 287
    aput-object v4, v8, v5

    .line 288
    const-string v9, "PicasaContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserting user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 259
    .end local v0           #account:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 291
    .end local v4           #entry:Lcom/cooliris/picasa/UserEntry;
    :cond_94
    return-object v8
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/cooliris/picasa/TableContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 70
    new-instance v1, Lcom/cooliris/picasa/PicasaContentProvider$Database;

    const-string v2, "picasa.db"

    invoke-direct {v1, p1, v2}, Lcom/cooliris/picasa/PicasaContentProvider$Database;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cooliris/picasa/PicasaContentProvider;->setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 73
    const-string v1, "com.cooliris.picasa.contentprovider"

    const-string v2, "photos"

    const-string v3, "vnd.cooliris.picasa.photo"

    sget-object v4, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cooliris/picasa/PicasaContentProvider;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cooliris/picasa/EntrySchema;)V

    .line 74
    const-string v1, "com.cooliris.picasa.contentprovider"

    const-string v2, "albums"

    const-string v3, "vnd.cooliris.picasa.album"

    sget-object v4, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cooliris/picasa/PicasaContentProvider;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cooliris/picasa/EntrySchema;)V

    .line 78
    :try_start_23
    new-instance v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    invoke-direct {v1, p0}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;-><init>(Lcom/cooliris/picasa/PicasaContentProvider;)V

    iput-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 84
    :goto_2a
    return-void

    .line 79
    :catch_2b
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/cooliris/picasa/PicasaContentProvider$Database;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/cooliris/picasa/PicasaContentProvider$Database;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cooliris/picasa/PicasaContentProvider;->setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V

    goto :goto_2a
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 118
    .local v6, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_19

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.cooliris.picasa.contentprovider"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    if-eqz p2, :cond_1b

    .line 119
    :cond_19
    const/4 v9, 0x0

    .line 159
    :goto_1a
    return v9

    .line 123
    :cond_1b
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    .line 126
    .local v1, context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 127
    .local v8, type:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 128
    .local v4, id:J
    iget-object v3, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "photos"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 131
    iget-object v7, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;

    .line 132
    .local v7, photo:Lcom/cooliris/picasa/PhotoEntry;
    sget-object v9, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/cooliris/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/cooliris/picasa/Entry;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 134
    iget-object v9, v7, Lcom/cooliris/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 135
    iget-object v9, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    iget-object v10, v7, Lcom/cooliris/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cooliris/picasa/PicasaApi;->deleteEntry(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_98

    .line 136
    invoke-direct {p0, v3, v4, v5}, Lcom/cooliris/picasa/PicasaContentProvider;->deletePhoto(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 137
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    .line 138
    invoke-virtual {p0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 139
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v9, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 140
    const/4 v9, 0x1

    goto :goto_1a

    .line 144
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v7           #photo:Lcom/cooliris/picasa/PhotoEntry;
    :cond_6c
    const-string v9, "albums"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 146
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

    .line 147
    .local v0, album:Lcom/cooliris/picasa/AlbumEntry;
    sget-object v9, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v9, v3, v4, v5, v0}, Lcom/cooliris/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/cooliris/picasa/Entry;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 149
    iget-object v9, v0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 150
    iget-object v9, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    iget-object v10, v0, Lcom/cooliris/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/cooliris/picasa/PicasaApi;->deleteEntry(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_98

    .line 151
    invoke-direct {p0, v3, v4, v5}, Lcom/cooliris/picasa/PicasaContentProvider;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 152
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    .line 153
    const/4 v9, 0x1

    goto :goto_1a

    .line 158
    .end local v0           #album:Lcom/cooliris/picasa/AlbumEntry;
    :cond_98
    invoke-virtual {v1}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->finish()V

    .line 159
    const/4 v9, 0x0

    goto/16 :goto_1a
.end method

.method public reloadAccounts()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    invoke-virtual {v0}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 164
    return-void
.end method

.method public setActiveSyncAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    .line 168
    return-void
.end method

.method public syncAlbumPhotos(JZLandroid/content/SyncResult;)V
    .registers 9
    .parameter "albumId"
    .parameter "forceRefresh"
    .parameter "syncResult"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    .line 213
    .local v1, context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;
    new-instance v0, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v0}, Lcom/cooliris/picasa/AlbumEntry;-><init>()V

    .line 214
    .local v0, album:Lcom/cooliris/picasa/AlbumEntry;
    sget-object v2, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    iget-object v3, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p1, p2, v0}, Lcom/cooliris/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/cooliris/picasa/Entry;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 215
    iget-boolean v2, v0, Lcom/cooliris/picasa/AlbumEntry;->photosDirty:Z

    if-nez v2, :cond_17

    if-eqz p3, :cond_2c

    :cond_17
    iget-object v2, v0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 216
    iget-object v2, v0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/cooliris/picasa/PicasaContentProvider;->isSyncEnabled(Ljava/lang/String;Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 217
    iget-object v2, v0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/cooliris/picasa/PicasaContentProvider;->syncAlbumPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/cooliris/picasa/AlbumEntry;Landroid/content/SyncResult;)V

    .line 221
    :cond_2c
    invoke-virtual {v1}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->finish()V

    .line 222
    return-void
.end method

.method public syncUsers(Landroid/content/SyncResult;)V
    .registers 3
    .parameter "syncResult"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    invoke-direct {p0, v0, p1}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUsers(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/cooliris/picasa/UserEntry;

    .line 172
    return-void
.end method

.method public syncUsersAndAlbums(ZLandroid/content/SyncResult;)V
    .registers 14
    .parameter "syncAlbumPhotos"
    .parameter "syncResult"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mSyncContext:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    .line 178
    .local v1, context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;
    invoke-direct {p0, v1, p2}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUsers(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/cooliris/picasa/UserEntry;

    move-result-object v5

    .line 181
    .local v5, users:[Lcom/cooliris/picasa/UserEntry;
    const/4 v0, 0x0

    .line 182
    .local v0, activeUsername:Ljava/lang/String;
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_13

    .line 183
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/cooliris/picasa/PicasaApi;->canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_13
    const/4 v2, 0x0

    .line 186
    .local v2, didSyncActiveUserName:Z
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v5

    .local v4, numUsers:I
    :goto_16
    if-eq v3, v4, :cond_50

    .line 187
    if-eqz v0, :cond_29

    iget-object v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 186
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 189
    :cond_29
    iget-object v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    const-string v7, "com.cooliris.picasa.contentprovider"

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 191
    const/4 v2, 0x1

    .line 192
    iget-object v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    iget-object v7, v1, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Lcom/cooliris/picasa/PicasaApi;->setAuth(Lcom/cooliris/picasa/PicasaApi$AuthAccount;)V

    .line 193
    aget-object v6, v5, v3

    invoke-direct {p0, v1, v6, p2}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUserAlbums(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Lcom/cooliris/picasa/UserEntry;Landroid/content/SyncResult;)V

    .line 194
    if-eqz p1, :cond_26

    .line 195
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-direct {p0, v1, v6, p2}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUserPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V

    goto :goto_26

    .line 204
    :cond_50
    if-nez v2, :cond_5b

    .line 205
    iget-object v6, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 207
    :cond_5b
    invoke-virtual {v1}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->finish()V

    .line 208
    return-void
.end method
