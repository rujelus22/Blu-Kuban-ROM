.class public Lcom/google/android/music/store/MusicRingtoneManager;
.super Ljava/lang/Object;
.source "MusicRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    }
.end annotation


# static fields
.field private static final AUDIO_COLUMNS:[Ljava/lang/String;

.field private static final MUSIC_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mStore:Lcom/google/android/music/store/Store;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SourceId"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "LocalCopyPath"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LocalCopyType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LocalCopyStorageType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager;->MUSIC_COLUMNS:[Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager;->AUDIO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/music/store/Store;)V
    .registers 2
    .parameter "store"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    .line 96
    return-void
.end method

.method private static deleteInvalidRingtoneRequests(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 10
    .parameter "db"

    .prologue
    .line 559
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long v2, v4, v6

    .line 560
    .local v2, oldestValid:J
    const-string v4, "RINGTONES"

    const-string v5, "RequestDate<?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, expired:I
    if-lez v1, :cond_42

    .line 563
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expired "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ringtone requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_42
    const-string v4, "RINGTONES"

    const-string v5, "Id IN (SELECT RINGTONES.Id FROM RINGTONES LEFT  JOIN MUSIC ON (MusicId = MUSIC.Id)  WHERE MusicId IS NULL)"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, deleted:I
    if-lez v0, :cond_6b

    .line 574
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ringtone requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_6b
    add-int v4, v1, v0

    return v4
.end method

.method private deleteRingtoneRequest(J)Z
    .registers 13
    .parameter "musicId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, deleted:I
    const/4 v2, 0x0

    .line 541
    .local v2, success:Z
    iget-object v5, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 543
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    const-string v5, "RINGTONES"

    const-string v6, "MusicId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 545
    if-le v1, v3, :cond_36

    .line 546
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected number of deleted requests:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_3f

    .line 548
    :cond_36
    const/4 v2, 0x1

    .line 550
    iget-object v5, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 553
    if-lez v1, :cond_46

    :goto_3e
    return v3

    .line 550
    :catchall_3f
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3

    :cond_46
    move v3, v4

    .line 553
    goto :goto_3e
.end method

.method public static getEditRingtoneIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "filepath"
    .parameter "musicId"

    .prologue
    .line 651
    if-eqz p1, :cond_18

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.EDIT_RINGTONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v1, "musicId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 660
    .end local v0           #intent:Landroid/content/Intent;
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private getFilepathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "mediaStoreUri"

    .prologue
    const/4 v3, 0x0

    .line 217
    sget-object v2, Lcom/google/android/music/store/MusicRingtoneManager;->AUDIO_COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, storeCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 221
    .local v6, filename:Ljava/lang/String;
    if-eqz v7, :cond_19

    :try_start_e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 222
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    move-result-object v6

    .line 225
    :cond_19
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 227
    return-object v6

    .line 225
    :catchall_1d
    move-exception v0

    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getMediaStoreItem(Landroid/content/Context;Ljava/io/File;)J
    .registers 11
    .parameter "context"
    .parameter "file"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    const-wide/16 v7, -0x1

    .line 269
    .local v7, mediaStoreId:J
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_29

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 275
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    move-result-wide v7

    .line 278
    :cond_29
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 280
    return-wide v7

    .line 278
    :catchall_2d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getRingtoneFile(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "musicTitle"

    .prologue
    const/4 v3, 0x0

    .line 296
    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 298
    .local v2, ringtones:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_10

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 301
    :cond_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_40

    .line 302
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ringtones directory \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and could not be created."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 330
    :cond_3f
    :goto_3f
    return-object v1

    .line 308
    :cond_40
    new-instance v1, Ljava/io/File;

    const-string v4, ".mp3"

    invoke-static {p0, v4}, Lcom/google/android/music/utils/IOUtils;->getSafeFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v1, ringtoneFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3f

    move-object v1, v3

    .line 311
    goto :goto_3f

    .line 315
    :cond_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63
    .catch Ljava/lang/SecurityException; {:try_start_59 .. :try_end_62} :catch_84

    goto :goto_3f

    .line 320
    :catch_63
    move-exception v0

    .line 321
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create ringtone file at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 323
    goto :goto_3f

    .end local v0           #e:Ljava/io/IOException;
    :cond_82
    move-object v1, v3

    .line 318
    goto :goto_3f

    .line 324
    :catch_84
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to create ringtone file at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 327
    goto :goto_3f
.end method

.method public static getRingtoneFileSize(I)J
    .registers 5
    .parameter "bitrate"

    .prologue
    .line 284
    int-to-long v0, p0

    const-wide/16 v2, 0x7d

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1e0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static insertRingtoneInMediaStore(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)I
    .registers 13
    .parameter "context"
    .parameter "ringtoneFile"
    .parameter "title"

    .prologue
    const/4 v6, 0x1

    .line 430
    if-nez p0, :cond_4

    .line 464
    :cond_3
    :goto_3
    return v6

    .line 432
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/music/store/MusicRingtoneManager;->getMediaStoreItem(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    .line 434
    .local v0, mediaStoreId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_68

    .line 437
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v7, "title"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v7, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v7, "mime_type"

    const-string v8, "audio/mp3"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v7, "is_ringtone"

    const-string v8, "1"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v7, "is_notification"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v7, "is_alarm"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v7, "is_music"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 448
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 451
    .local v3, newUri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 452
    invoke-static {p0, v3}, Lcom/google/android/music/store/MusicRingtoneManager;->setSystemRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 464
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_66
    :goto_66
    const/4 v6, 0x0

    goto :goto_3

    .line 457
    :cond_68
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicRingtoneManager;->setRingtoneFlagInMediaStore(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 458
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 460
    .local v2, mediaStoreUri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/google/android/music/store/MusicRingtoneManager;->setSystemRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_66
.end method

.method private insertRingtoneRequest(J)V
    .registers 11
    .parameter "musicId"

    .prologue
    .line 517
    const/4 v3, 0x0

    .line 518
    .local v3, success:Z
    iget-object v5, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 522
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    invoke-static {v0}, Lcom/google/android/music/store/MusicRingtoneManager;->deleteInvalidRingtoneRequests(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 524
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 525
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "MusicId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 526
    const-string v5, "RequestDate"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 527
    const-string v5, "RINGTONES"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 528
    .local v1, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_58

    .line 529
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert ringtone request for music with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_51

    .line 534
    .end local v1           #id:J
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_51
    move-exception v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v5

    .line 532
    .restart local v1       #id:J
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_58
    const/4 v3, 0x1

    .line 534
    iget-object v5, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 536
    return-void
.end method

.method private static localCopyTypeToRingtoneSource(I)Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    .registers 4
    .parameter "localCopyType"

    .prologue
    .line 231
    sparse-switch p0, :sswitch_data_2a

    .line 241
    const-string v0, "MusicRingtones"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected localCopyType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    :goto_1d
    return-object v0

    .line 233
    :sswitch_1e
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    goto :goto_1d

    .line 235
    :sswitch_21
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->SIDE_LOADED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    goto :goto_1d

    .line 237
    :sswitch_24
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    goto :goto_1d

    .line 239
    :sswitch_27
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    goto :goto_1d

    .line 231
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_1e
        0x64 -> :sswitch_27
        0xc8 -> :sswitch_24
        0x12c -> :sswitch_21
    .end sparse-switch
.end method

.method private makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZZ)I
    .registers 32
    .parameter "musicId"
    .parameter "serverId"
    .parameter "musicFilePath"
    .parameter "sourceType"
    .parameter "title"
    .parameter "maxSize"
    .parameter "overwriteIfExists"
    .parameter "notify"

    .prologue
    .line 340
    const/16 v18, 0x1

    .line 341
    .local v18, status:I
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v13, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v13, ringtonePath:Ljava/lang/StringBuffer;
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    .line 343
    :try_start_15
    invoke-direct/range {v5 .. v13}, Lcom/google/android/music/store/MusicRingtoneManager;->makeRingtoneFileHelper(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/StringBuffer;)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_39

    move-result v9

    .line 349
    .end local v18           #status:I
    .local v9, status:I
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/store/MusicRingtoneManager;->deleteRingtoneRequest(J)Z

    .line 350
    if-eqz p10, :cond_2b

    .line 351
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p6

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/store/MusicRingtoneManager;->notifyRingtoneSet(JLjava/lang/String;ILjava/lang/String;)V

    .line 355
    :cond_2b
    :goto_2b
    if-nez v9, :cond_38

    .line 356
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MusicRingtoneManager;->writeRingtoneSavedEvent(JLjava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;)V

    .line 359
    :cond_38
    return v9

    .line 345
    .end local v9           #status:I
    .restart local v18       #status:I
    :catch_39
    move-exception v20

    .line 346
    .local v20, e:Ljava/lang/Exception;
    :try_start_3a
    const-string v5, "MusicRingtones"

    const-string v6, "Failed to create ringtone"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_57

    .line 347
    const/4 v9, 0x1

    .line 349
    .end local v18           #status:I
    .restart local v9       #status:I
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/store/MusicRingtoneManager;->deleteRingtoneRequest(J)Z

    .line 350
    if-eqz p10, :cond_2b

    .line 351
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p6

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/store/MusicRingtoneManager;->notifyRingtoneSet(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_2b

    .line 349
    .end local v9           #status:I
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v18       #status:I
    :catchall_57
    move-exception v5

    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/store/MusicRingtoneManager;->deleteRingtoneRequest(J)Z

    .line 350
    if-eqz p10, :cond_6a

    .line 351
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p0

    move-wide/from16 v15, p1

    move-object/from16 v17, p6

    invoke-direct/range {v14 .. v19}, Lcom/google/android/music/store/MusicRingtoneManager;->notifyRingtoneSet(JLjava/lang/String;ILjava/lang/String;)V

    :cond_6a
    throw v5
.end method

.method private makeRingtoneFileHelper(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/StringBuffer;)I
    .registers 18
    .parameter "musicId"
    .parameter "musicFilePath"
    .parameter "title"
    .parameter "maxSize"
    .parameter "overwriteIfExists"
    .parameter "ringtonePath"

    .prologue
    .line 385
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, musicFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 387
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Music file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v5, 0x1

    .line 416
    :goto_2e
    return v5

    .line 390
    :cond_2f
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x4000

    cmp-long v5, v5, v7

    if-gez v5, :cond_5d

    .line 391
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Music file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is too small to be used as a ringtone."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v5, 0x1

    goto :goto_2e

    .line 398
    :cond_5d
    invoke-static {p4}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 399
    .local v4, ringtoneFile:Ljava/io/File;
    if-nez v4, :cond_65

    .line 400
    const/4 v5, 0x2

    goto :goto_2e

    .line 402
    :cond_65
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_72

    const/4 v3, 0x1

    .line 403
    .local v3, newFile:Z
    :goto_6c
    if-nez v3, :cond_74

    if-nez p7, :cond_74

    .line 404
    const/4 v5, 0x3

    goto :goto_2e

    .line 402
    .end local v3           #newFile:Z
    :cond_72
    const/4 v3, 0x0

    goto :goto_6c

    .line 408
    .restart local v3       #newFile:Z
    :cond_74
    :try_start_74
    invoke-static {v2, v4, p5, p6}, Lcom/google/android/music/utils/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;J)V

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_80} :catch_8b

    .line 416
    iget-object v5, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, p4}, Lcom/google/android/music/store/MusicRingtoneManager;->insertRingtoneInMediaStore(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    goto :goto_2e

    .line 410
    :catch_8b
    move-exception v1

    .line 411
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create ringtone file at \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    const/4 v5, 0x2

    goto/16 :goto_2e
.end method

.method private notifyRingtoneSet(JLjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .parameter "musicId"
    .parameter "title"
    .parameter "status"
    .parameter "filepath"

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.RINGTONE_REQUEST_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, request:Landroid/content/Intent;
    const-string v1, "musicId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private static setRingtoneFlagInMediaStore(Landroid/content/Context;J)Z
    .registers 11
    .parameter "context"
    .parameter "mediaStoreId"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 249
    .local v2, success:Z
    :try_start_1
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, mediaStoreUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 252
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "is_ringtone"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1d} :catch_24

    move-result v3

    .line 258
    .local v3, updated:I
    if-lez v3, :cond_22

    const/4 v2, 0x1

    .line 264
    .end local v1           #mediaStoreUri:Landroid/net/Uri;
    .end local v3           #updated:I
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_21
    return v2

    .line 258
    .restart local v1       #mediaStoreUri:Landroid/net/Uri;
    .restart local v3       #updated:I
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_22
    const/4 v2, 0x0

    goto :goto_21

    .line 259
    .end local v1           #mediaStoreUri:Landroid/net/Uri;
    .end local v3           #updated:I
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_24
    move-exception v0

    .line 261
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t set ringtone flag for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private static setSystemRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 474
    return-void
.end method

.method private static writeRingtoneSavedEvent(JLjava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;)V
    .registers 10
    .parameter "musicId"
    .parameter "serverId"
    .parameter "sourceType"
    .parameter "title"

    .prologue
    .line 374
    if-nez p2, :cond_55

    const-string v0, ""

    .line 375
    .local v0, serverIdNotNull:Ljava/lang/String;
    :goto_4
    const v1, 0x12114

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 377
    const-string v1, "MusicRingtones"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event logging MUSIC_TRACK_SAVED_AS_RINGTONE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (localId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .end local v0           #serverIdNotNull:Ljava/lang/String;
    :cond_55
    move-object v0, p2

    .line 374
    goto :goto_4
.end method


# virtual methods
.method public getRingtoneRequests(I)[J
    .registers 15
    .parameter "howMany"

    .prologue
    .line 582
    const/4 v9, 0x0

    .line 583
    .local v9, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 585
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    const-string v1, "RINGTONES JOIN MUSIC ON (MusicId = MUSIC.Id) "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MusicId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "RINGTONES.Id ASC"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 589
    if-eqz v9, :cond_3a

    .line 590
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v12, v1, [J

    .line 591
    .local v12, ids:[J
    const/4 v10, 0x0

    .local v10, i:I
    move v11, v10

    .line 592
    .end local v10           #i:I
    .local v11, i:I
    :goto_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 593
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v12, v11

    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_29

    .line 596
    .end local v11           #i:I
    .end local v12           #ids:[J
    :cond_3a
    const/4 v1, 0x0

    new-array v12, v1, [J
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_46

    .line 599
    .restart local v12       #ids:[J
    :cond_3d
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 600
    iget-object v1, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    return-object v12

    .line 599
    .end local v12           #ids:[J
    :catchall_46
    move-exception v1

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 600
    iget-object v2, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZ)I
    .registers 21
    .parameter "musicId"
    .parameter "serverId"
    .parameter "musicFilePath"
    .parameter "source"
    .parameter "title"
    .parameter "maxSize"
    .parameter "overwriteIfExists"

    .prologue
    .line 491
    const/4 v10, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/store/MusicRingtoneManager;->makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZZ)I

    move-result v0

    return v0
.end method

.method public markRingtoneRequestAsFailed(JLjava/lang/String;)Z
    .registers 7
    .parameter "musicId"
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/store/MusicRingtoneManager;->deleteRingtoneRequest(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.RINGTONE_REQUEST_END"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, request:Landroid/content/Intent;
    const-string v2, "musicId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 506
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    iget-object v2, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    .end local v0           #request:Landroid/content/Intent;
    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public setRingtone(Landroid/content/Context;JZLjava/lang/StringBuffer;)I
    .registers 35
    .parameter "context"
    .parameter "musicId"
    .parameter "overwriteExisting"
    .parameter "filepath"

    .prologue
    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Lcom/google/android/music/store/Store;->getPreferredMusicId(J)J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_b6

    move-result-wide p2

    .line 116
    const/16 v19, 0x0

    .line 117
    .local v19, localCopyType:I
    const/16 v24, 0x0

    .line 118
    .local v24, path:Ljava/lang/String;
    const/16 v25, 0x0

    .line 119
    .local v25, remoteId:Ljava/lang/String;
    const-wide/16 v20, -0x1

    .line 120
    .local v20, mediaStoreId:J
    const/16 v22, 0x0

    .line 121
    .local v22, mediaStoreUri:Landroid/net/Uri;
    const/16 v23, 0x0

    .line 122
    .local v23, musicTitle:Ljava/lang/String;
    const/16 v17, 0x0

    .line 123
    .local v17, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 125
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_20
    const-string v4, "MUSIC"

    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager;->MUSIC_COLUMNS:[Ljava/lang/String;

    const-string v6, "Id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 129
    if-eqz v17, :cond_19e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 130
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_dd

    move-result-object v7

    .line 132
    .end local v25           #remoteId:Ljava/lang/String;
    .local v7, remoteId:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_47
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-nez v4, :cond_b9

    .line 133
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 134
    const-wide/16 v4, 0x1

    cmp-long v4, v20, v4

    if-gez v4, :cond_77

    .line 135
    const-string v4, "MusicRingtones"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected mediaStoreId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_77
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_7e
    .catchall {:try_start_47 .. :try_end_7e} :catchall_192

    move-result-object v22

    move-object/from16 v8, v24

    .line 147
    .end local v24           #path:Ljava/lang/String;
    .local v8, path:Ljava/lang/String;
    :goto_81
    const/4 v4, 0x3

    :try_start_82
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 148
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_197

    move-result-object v10

    .line 151
    .end local v23           #musicTitle:Ljava/lang/String;
    .local v10, musicTitle:Ljava/lang/String;
    :goto_8f
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    const/4 v15, 0x1

    .line 156
    .local v15, status:I
    const/16 v16, 0x0

    .line 157
    .local v16, filename:Ljava/lang/String;
    if-eqz v22, :cond_11f

    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_11f

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/google/android/music/store/MusicRingtoneManager;->setRingtoneFlagInMediaStore(Landroid/content/Context;J)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 161
    const/4 v15, 0x1

    .line 213
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #remoteId:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #musicTitle:Ljava/lang/String;
    .end local v15           #status:I
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v19           #localCopyType:I
    .end local v20           #mediaStoreId:J
    .end local v22           #mediaStoreUri:Landroid/net/Uri;
    :cond_b5
    :goto_b5
    return v15

    .line 113
    :catch_b6
    move-exception v18

    .line 114
    .local v18, e:Ljava/io/FileNotFoundException;
    const/4 v15, 0x1

    goto :goto_b5

    .line 139
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #remoteId:Ljava/lang/String;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v19       #localCopyType:I
    .restart local v20       #mediaStoreId:J
    .restart local v22       #mediaStoreUri:Landroid/net/Uri;
    .restart local v23       #musicTitle:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    :cond_b9
    const/4 v4, 0x2

    :try_start_ba
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_19a

    .line 140
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v27

    .line 143
    .local v27, resolvedFile:Ljava/io/File;
    if-eqz v27, :cond_19a

    .line 144
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_db
    .catchall {:try_start_ba .. :try_end_db} :catchall_192

    move-result-object v8

    .end local v24           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    goto :goto_81

    .line 151
    .end local v7           #remoteId:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .end local v27           #resolvedFile:Ljava/io/File;
    .restart local v24       #path:Ljava/lang/String;
    .restart local v25       #remoteId:Ljava/lang/String;
    :catchall_dd
    move-exception v4

    move-object/from16 v7, v25

    .end local v25           #remoteId:Ljava/lang/String;
    .restart local v7       #remoteId:Ljava/lang/String;
    move-object/from16 v8, v24

    .end local v24           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    :goto_e2
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4

    .line 164
    .end local v23           #musicTitle:Ljava/lang/String;
    .restart local v10       #musicTitle:Ljava/lang/String;
    .restart local v15       #status:I
    .restart local v16       #filename:Ljava/lang/String;
    :cond_ed
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicRingtoneManager;->setSystemRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 165
    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->SIDE_LOADED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5, v10}, Lcom/google/android/music/store/MusicRingtoneManager;->writeRingtoneSavedEvent(JLjava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicRingtoneManager;->getFilepathFromMediaStore(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 167
    if-nez v16, :cond_10a

    .line 168
    const/4 v15, 0x1

    goto :goto_b5

    .line 170
    :cond_10a
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const/4 v15, 0x0

    .line 210
    :goto_112
    if-nez v15, :cond_b5

    if-eqz v16, :cond_b5

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move-object v14, v10

    .line 211
    invoke-direct/range {v11 .. v16}, Lcom/google/android/music/store/MusicRingtoneManager;->notifyRingtoneSet(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_b5

    .line 175
    :cond_11f
    invoke-static {v10}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v28

    .line 176
    .local v28, ringtoneFile:Ljava/io/File;
    if-nez v28, :cond_127

    .line 177
    const/4 v15, 0x2

    goto :goto_b5

    .line 179
    :cond_127
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_149

    .line 182
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v4, v0, v10}, Lcom/google/android/music/store/MusicRingtoneManager;->insertRingtoneInMediaStore(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)I

    move-result v15

    .line 206
    :goto_144
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    goto :goto_112

    .line 184
    :cond_149
    invoke-static {v8}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 187
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/MusicRingtoneManager;->localCopyTypeToRingtoneSource(I)Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    move-result-object v9

    const-wide/32 v11, 0x3200000

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move/from16 v13, p4

    invoke-direct/range {v4 .. v14}, Lcom/google/android/music/store/MusicRingtoneManager;->makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZZ)I

    move-result v15

    goto :goto_144

    .line 200
    :cond_16b
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MusicRingtoneManager;->insertRingtoneRequest(J)V

    .line 201
    new-instance v26, Landroid/content/Intent;

    const-string v4, "com.google.android.music.RINGTONE_REQUEST_START"

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v26, request:Landroid/content/Intent;
    const-string v4, "name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    const/4 v15, 0x4

    goto/16 :goto_b5

    .line 151
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #musicTitle:Ljava/lang/String;
    .end local v15           #status:I
    .end local v16           #filename:Ljava/lang/String;
    .end local v26           #request:Landroid/content/Intent;
    .end local v28           #ringtoneFile:Ljava/io/File;
    .restart local v23       #musicTitle:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    :catchall_192
    move-exception v4

    move-object/from16 v8, v24

    .end local v24           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    goto/16 :goto_e2

    :catchall_197
    move-exception v4

    goto/16 :goto_e2

    .end local v8           #path:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    :cond_19a
    move-object/from16 v8, v24

    .end local v24           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    goto/16 :goto_81

    .end local v7           #remoteId:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    .restart local v25       #remoteId:Ljava/lang/String;
    :cond_19e
    move-object/from16 v10, v23

    .end local v23           #musicTitle:Ljava/lang/String;
    .restart local v10       #musicTitle:Ljava/lang/String;
    move-object/from16 v7, v25

    .end local v25           #remoteId:Ljava/lang/String;
    .restart local v7       #remoteId:Ljava/lang/String;
    move-object/from16 v8, v24

    .end local v24           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    goto/16 :goto_8f
.end method

.method public setRingtoneAttempt(JLjava/lang/String;Z)I
    .registers 12
    .parameter "musicId"
    .parameter "title"
    .parameter "overwriteExisting"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/music/store/MusicRingtoneManager;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 670
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_a

    const/4 v6, 0x1

    .line 674
    :goto_9
    return v6

    .line 672
    :cond_a
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v5, filepath:Ljava/lang/StringBuffer;
    move-object v0, p0

    move-wide v2, p1

    move v4, p4

    .line 673
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/store/MusicRingtoneManager;->setRingtone(Landroid/content/Context;JZLjava/lang/StringBuffer;)I

    move-result v6

    .line 674
    .local v6, status:I
    goto :goto_9
.end method
