.class final Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;
.super Ljava/lang/Object;
.source "VolumeAccountUpgrader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader$Schema;,
        Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader$MyContentStatus;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "context"
    .parameter "db"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    return-void
.end method

.method private copyChaptersTable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 330
    const-string v1, "volume_id, chapter_id, chapter_order, title, start_section_id, start_page_id"

    .line 332
    .local v1, sharedColumns:Ljava/lang/String;
    const-string v0, "account_name, volume_id, chapter_id, chapter_order, title, start_section_id, start_page_id"

    .line 333
    .local v0, newColumns:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "volume_id, chapter_id, chapter_order, title, start_section_id, start_page_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, srcColumns:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO chapters (account_name, volume_id, chapter_id, chapter_order, title, start_section_id, start_page_id) SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM old_chapters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WHERE volume_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, sql:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method private copyCollectionVolumesTable()V
    .registers 5

    .prologue
    .line 319
    const-string v0, "volume_id, account_name, collection_id, timestamp, dirty"

    .line 320
    .local v0, sharedColumns:Ljava/lang/String;
    const-string v1, "INSERT INTO collection_volumes (volume_id, account_name, collection_id, timestamp, dirty) SELECT volume_id, account_name, collection_id, timestamp, dirty FROM old_collection_volumes"

    .line 322
    .local v1, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO collection_volumes (volume_id, account_name, collection_id, timestamp, dirty) SELECT volume_id, account_name, collection_id, timestamp, dirty FROM old_collection_volumes"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private copyCoverImages(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "accountName"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->getBasePath()Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, basePath:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/volumes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, oldDir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/volumes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, newDir:Ljava/lang/String;
    const-string v3, "cover.png"

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "cover_thumbnail.png"

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "oldDir"
    .parameter "newDir"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v3, oldFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_24

    .line 279
    new-instance v5, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, newDirFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v2, newFile:Ljava/io/File;
    const-string v5, "VolumeAccountUpgrader"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 287
    const-string v5, "VolumeAccountUpgrader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5c
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 291
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_61
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_76

    .line 293
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_67
    invoke-static {v0, v4}, Lcom/google/android/plus1/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_71

    .line 295
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_76

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 300
    return-void

    .line 295
    :catchall_71
    move-exception v5

    :try_start_72
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v5
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    .line 298
    .end local v4           #outputStream:Ljava/io/OutputStream;
    :catchall_76
    move-exception v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v5
.end method

.method private copySessionKeysTable()V
    .registers 5

    .prologue
    .line 307
    const-string v0, "_id, account_name, volume_id, session_key_version, root_key_version, session_key_blob"

    .line 309
    .local v0, sharedColumns:Ljava/lang/String;
    const-string v1, "INSERT INTO session_keys (_id, account_name, volume_id, session_key_version, root_key_version, session_key_blob) SELECT _id, account_name, volume_id, session_key_version, root_key_version, session_key_blob FROM old_session_keys"

    .line 311
    .local v1, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO session_keys (_id, account_name, volume_id, session_key_version, root_key_version, session_key_blob) SELECT _id, account_name, volume_id, session_key_version, root_key_version, session_key_blob FROM old_session_keys"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method private copyVolumeTable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "accountName"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v15, "volume_id, title, sortable_title, creator, sortable_creator, publisher, description, cover_url, cover_content_status, open_access, viewability, buy_url, preferred_mode, has_text_mode, has_image_mode, date, version, content_version"

    .line 223
    .local v15, sharedColumns:Ljava/lang/String;
    const-string v13, "account_name, volume_id, title, sortable_title, creator, sortable_creator, publisher, description, cover_url, cover_content_status, open_access, viewability, buy_url, preferred_mode, has_text_mode, has_image_mode, date, version, content_version, first_chapter_start_segment_id"

    .line 225
    .local v13, newColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "volume_id, title, sortable_title, creator, sortable_creator, publisher, description, cover_url, cover_content_status, open_access, viewability, buy_url, preferred_mode, has_text_mode, has_image_mode, date, version, content_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", first_chapter_start_section"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 227
    .local v17, srcColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO volumes (account_name, volume_id, title, sortable_title, creator, sortable_creator, publisher, description, cover_url, cover_content_status, open_access, viewability, buy_url, preferred_mode, has_text_mode, has_image_mode, date, version, content_version, first_chapter_start_segment_id) SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM old_volumes WHERE volume_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, sql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "changes(), cover_content_status"

    aput-object v2, v3, v1

    .line 232
    .local v3, columns:[Ljava/lang/String;
    const-string v14, "account_name=? AND volume_id=?"

    .line 233
    .local v14, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 234
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "volumes"

    const-string v4, "account_name=? AND volume_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 237
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_7d
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 238
    .local v11, count:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_e3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 239
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 240
    .local v9, changes:I
    const/4 v1, 0x1

    if-eq v9, v1, :cond_b0

    .line 241
    new-instance v1, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong number of rows inserted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ab
    .catchall {:try_start_7d .. :try_end_ab} :catchall_ab

    .line 253
    .end local v9           #changes:I
    .end local v11           #count:I
    :catchall_ab
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 243
    .restart local v9       #changes:I
    .restart local v11       #count:I
    :cond_b0
    const/4 v1, 0x1

    :try_start_b1
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 244
    .local v10, contentStatus:I
    const/4 v1, 0x3

    if-ne v10, v1, :cond_bf

    .line 245
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyCoverImages(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_ab

    .line 253
    :cond_bb
    :goto_bb
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 255
    return-void

    .line 246
    :cond_bf
    :try_start_bf
    const-string v1, "VolumeAccountUpgrader"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 247
    const-string v1, "VolumeAccountUpgrader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not copying cover for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 250
    .end local v9           #changes:I
    .end local v10           #contentStatus:I
    :cond_e3
    new-instance v1, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong number of rows after insert: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_fc
    .catchall {:try_start_bf .. :try_end_fc} :catchall_ab
.end method

.method private getBasePath()Ljava/io/File;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 344
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 345
    .local v2, columns:[Ljava/lang/String;
    const-string v9, "key=\'base_path\'"

    .line 346
    .local v9, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "config"

    const-string v3, "key=\'base_path\'"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 348
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 349
    new-instance v0, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    const-string v1, "Could not move"

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_26

    .line 353
    :catchall_26
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 351
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_26

    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_15

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 200
    .local v0, result:Ljava/io/File;
    if-nez v0, :cond_29

    .line 201
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getExternalFilesDir(null) returned null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0           #result:Ljava/io/File;
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Books"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .restart local v0       #result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 209
    :cond_29
    return-object v0
.end method

.method private removeObsoleteTables()V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeOldTables()V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE sections"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private removeOldTables()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_volumes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_session_keys"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_chapters"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_pages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_resources"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS old_collection_volumes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private removeSubdir(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "baseDir"
    .parameter "subDir"

    .prologue
    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v0, oldDir:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 188
    return-void
.end method

.method private removeSubdirEverywhere(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .parameter "subDir"
    .parameter "externalStorageDirectory"
    .parameter "basePath"

    .prologue
    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeSubdirFromBaseDirs(Ljava/lang/String;[Ljava/io/File;)V

    .line 171
    return-void
.end method

.method private varargs removeSubdirFromBaseDirs(Ljava/lang/String;[Ljava/io/File;)V
    .registers 7
    .parameter "subDir"
    .parameter "baseDirs"

    .prologue
    .line 177
    move-object v0, p2

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 178
    .local v1, baseDir:Ljava/io/File;
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeSubdir(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 180
    .end local v1           #baseDir:Ljava/io/File;
    :cond_d
    return-void
.end method

.method private updateSchema()V
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeOldTables()V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE volumes RENAME TO old_volumes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE session_keys RENAME TO old_session_keys"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE chapters RENAME TO old_chapters"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE pages RENAME TO old_pages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE resources RENAME TO old_resources"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE collection_volumes RENAME to old_collection_volumes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP INDEX IF EXISTS pages_chapter_index"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS clear_cover"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS segments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE volumes (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, title TEXT NOT NULL, sortable_title TEXT, creator TEXT, sortable_creator TEXT, publisher TEXT, description TEXT, cover_url TEXT, cover_content_status INTEGER NOT NULL DEFAULT 0, open_access TEXT, viewability TEXT, buy_url TEXT, first_chapter_start_segment_id INTEGER, preferred_mode INTEGER, has_text_mode INTEGER NOT NULL DEFAULT 0, has_image_mode INTEGER NOT NULL DEFAULT 0, date TEXT, version TEXT NOT NULL, content_version TEXT, UNIQUE (account_name, volume_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE session_keys (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), session_key_version TEXT NOT NULL, root_key_version INTEGER NOT NULL, session_key_blob BLOB NOT NULL, FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE chapters (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, chapter_id TEXT NOT NULL, chapter_order INTEGER NOT NULL, title TEXT NOT NULL, start_section_id TEXT NOT NULL REFERENCES segments(segment_id), start_page_id TEXT NOT NULL REFERENCES pages(page_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, chapter_id) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE pages (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, page_id TEXT NOT NULL, title TEXT, page_order INTEGER NOT NULL, remote_url TEXT, cc_box_x INTEGER, cc_box_y INTEGER, cc_box_w INTEGER, cc_box_h INTEGER, first_section_id TEXT REFERENCES segments(segment_id), first_chapter_id TEXT REFERENCES chapters(chapter_id), content_status INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, page_id) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE resources (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, resource_id TEXT NOT NULL, related_section_id TEXT REFERENCES segments(segment_id), resource_order INTEGER NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, resource_id) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE segments (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, segment_id TEXT NOT NULL, title TEXT NOT NULL, segment_order INTEGER NOT NULL, chapter_id TEXT NOT NULL REFERENCES chapters(chapter_id), page_count INTEGER NOT NULL DEFAULT 0, start_position TEXT NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, segment_id) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE collection_volumes (_id INTEGER PRIMARY KEY AUTOINCREMENT, volume_id TEXT NOT NULL, account_name TEXT NOT NULL, collection_id INTEGER NOT NULL DEFAULT -1, timestamp INTEGER NOT NULL DEFAULT 0, dirty INTEGER NOT NULL DEFAULT 0 CHECK (dirty=-1 OR dirty=0 OR dirty=1), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, collection_id, volume_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX pages_chapter_index ON pages (account_name, volume_id, first_chapter_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public upgrade()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 58
    .local v5, externalStorageDirectory:Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->getBasePath()Ljava/io/File;

    move-result-object v2

    .line 61
    .local v2, basePath:Ljava/io/File;
    new-instance v6, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v6, v14}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    .local v6, finder:Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;
    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->init()V

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v14}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->newInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/books/provider/database/ContentAccountFinder;

    move-result-object v3

    .line 64
    .local v3, caf:Lcom/google/android/apps/books/provider/database/ContentAccountFinder;
    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->getBadVolumeIds()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_46

    .line 65
    const-string v14, "VolumeAccountUpgrader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Volumes where could not determine content ownership: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->getBadVolumeIds()Ljava/util/Set;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v14, v2}, Lcom/google/android/apps/books/provider/database/PagesAccountUpgrader;->newInstance(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)Lcom/google/android/apps/books/provider/database/PagesAccountUpgrader;

    move-result-object v10

    .line 70
    .local v10, pageUpgrader:Lcom/google/android/apps/books/provider/database/PagesAccountUpgrader;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v14, v2}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->newInstance(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;

    move-result-object v11

    .line 72
    .local v11, resourceUpgrader:Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v14, v2}, Lcom/google/android/apps/books/provider/database/SegmentsAccountUpgrader;->newInstance(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)Lcom/google/android/apps/books/provider/database/SegmentsAccountUpgrader;

    move-result-object v12

    .line 76
    .local v12, segmentUpgrader:Lcom/google/android/apps/books/provider/database/SegmentsAccountUpgrader;
    const-string v14, "accounts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeSubdir(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->updateSchema()V

    .line 81
    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->getAccountNames()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, accountName:Ljava/lang/String;
    invoke-virtual {v6, v1}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->getVolumeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_84
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_70

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 83
    .local v13, volumeId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyVolumeTable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 88
    .end local v1           #accountName:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #volumeId:Ljava/lang/String;
    :cond_96
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copySessionKeysTable()V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyCollectionVolumesTable()V

    .line 92
    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->getAccountNames()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_db

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .restart local v1       #accountName:Ljava/lang/String;
    invoke-virtual {v6, v1}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->getVolumeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_b8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 94
    .restart local v13       #volumeId:Ljava/lang/String;
    invoke-virtual {v3, v13}, Lcom/google/android/apps/books/provider/database/ContentAccountFinder;->getAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, contentAccount:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 96
    .local v9, ownsContent:Z
    invoke-virtual {v10, v1, v13, v9}, Lcom/google/android/apps/books/provider/database/PagesAccountUpgrader;->copy(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v11, v1, v13, v9}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->copy(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {v12, v1, v13, v9}, Lcom/google/android/apps/books/provider/database/SegmentsAccountUpgrader;->copy(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->copyChaptersTable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 104
    .end local v1           #accountName:Ljava/lang/String;
    .end local v4           #contentAccount:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ownsContent:Z
    .end local v13           #volumeId:Ljava/lang/String;
    :cond_db
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeObsoleteTables()V

    .line 105
    const-string v14, "volumes"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v2}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->removeSubdirEverywhere(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 106
    return-void
.end method
