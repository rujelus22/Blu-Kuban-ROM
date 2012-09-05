.class public Lcom/sec/android/app/voicerecorder/util/VRUtil;
.super Ljava/lang/Object;
.source "VRUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;,
        Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;
    }
.end annotation


# static fields
.field public static avaliableSize:J

.field private static fixedName:Ljava/lang/String;

.field private static isNameFixed:Z

.field private static mActivePointerId:I

.field public static mExternalStorage:Ljava/lang/String;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sConnectionMap:Ljava/util/HashMap;

    .line 84
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 91
    sput-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mExternalStorage:Ljava/lang/String;

    .line 95
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mActivePointerId:I

    .line 365
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isNameFixed:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 588
    const-string v0, "VRUtil"

    const-string v1, "bindToService"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 591
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public static checkAlmostFull(ZIJI)Z
    .registers 16
    .parameter "internal"
    .parameter "warningSize"
    .parameter "realFileSize"
    .parameter "preSize"

    .prologue
    .line 178
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getAvailableStorage(Z)J

    move-result-wide v0

    .line 182
    .local v0, available:J
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getBlockSize(Z)I

    move-result v2

    .line 184
    .local v2, blockSize:I
    int-to-long v7, p4

    cmp-long v7, v7, p2

    if-gez v7, :cond_23

    .line 185
    const-wide/16 v3, 0x0

    .line 190
    .local v3, gap:J
    :goto_f
    int-to-long v7, v2

    add-long/2addr v7, p2

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, v2

    div-long/2addr v7, v9

    int-to-long v9, v2

    mul-long/2addr v7, v9

    sub-long/2addr v7, p2

    add-long/2addr v7, v0

    sub-long v5, v7, v3

    .line 192
    .local v5, realFreeSize:J
    int-to-long v7, p1

    cmp-long v7, v5, v7

    if-gez v7, :cond_27

    .line 194
    const/4 v7, 0x1

    .line 196
    :goto_22
    return v7

    .line 187
    .end local v3           #gap:J
    .end local v5           #realFreeSize:J
    :cond_23
    int-to-long v7, p4

    sub-long v3, v7, p2

    .restart local v3       #gap:J
    goto :goto_f

    .line 196
    .restart local v5       #realFreeSize:J
    :cond_27
    const/4 v7, 0x0

    goto :goto_22
.end method

.method public static checkAvailableStorage(Z)Z
    .registers 5
    .parameter "internal"

    .prologue
    .line 229
    const-string v0, "VRUtil"

    const-string v1, "checkAvailableStorage E"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getAvailableStorage(Z)J

    move-result-wide v0

    const-wide/32 v2, 0x57800

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 232
    const/4 v0, 0x0

    .line 235
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .registers 11
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 850
    const-string v0, "VRUtil"

    const-string v1, "checkMediaScannerRunning()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/4 v7, 0x0

    .line 853
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 855
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_43

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_40

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 858
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "internal"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3f
    move v7, v9

    .line 861
    :cond_40
    :goto_40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    :cond_43
    return v7

    :cond_44
    move v7, v8

    .line 858
    goto :goto_40
.end method

.method public static checkMemory(Landroid/app/Activity;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, internalMounted:Z
    const/4 v0, 0x0

    .line 157
    .local v0, externalMounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 160
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageStateSd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 162
    if-nez v1, :cond_23

    if-nez v0, :cond_23

    .line 163
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->startNoSdActivity(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 173
    :goto_22
    return v2

    .line 166
    :cond_23
    if-eqz v1, :cond_2c

    if-nez v0, :cond_2c

    .line 167
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setInternalStorageSelected(Z)V

    :cond_2a
    :goto_2a
    move v2, v3

    .line 173
    goto :goto_22

    .line 168
    :cond_2c
    if-nez v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 169
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setInternalStorageSelected(Z)V

    goto :goto_2a
.end method

.method public static createNewFileName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 408
    sget-boolean v3, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isNameFixed:Z

    if-eqz v3, :cond_7

    .line 409
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->fixedName:Ljava/lang/String;

    .line 418
    :goto_6
    return-object v1

    .line 411
    :cond_7
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, prefix:Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->findFileIndex(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 415
    .local v0, indexInt:I
    invoke-static {v2, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->findFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, newFileName:Ljava/lang/String;
    goto :goto_6
.end method

.method public static deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    .registers 16
    .parameter "context"
    .parameter "id"
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 720
    if-nez p3, :cond_6

    move v0, v11

    .line 755
    :goto_5
    return v0

    .line 723
    :cond_6
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v9, tempFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 726
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 728
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 729
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v8, strBuilder:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_7a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, i:I
    :goto_32
    if-lez v7, :cond_77

    .line 733
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_71

    .line 734
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 735
    const-string v0, "_id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 738
    .local v10, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 746
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sendFileDeleteBroadcast(Landroid/content/Context;)V

    .line 748
    const/4 v0, 0x1

    goto :goto_5

    .line 750
    .end local v10           #where:Ljava/lang/String;
    :cond_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 732
    add-int/lit8 v7, v7, -0x1

    goto :goto_32

    .line 752
    :cond_77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #i:I
    :cond_7a
    move v0, v11

    .line 755
    goto :goto_5
.end method

.method private static findFileIndex(Ljava/lang/String;Landroid/content/Context;)I
    .registers 19
    .parameter "prefix"
    .parameter "context"

    .prologue
    .line 432
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getSaveDirPathCreated()Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, filePath:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "case when replace(substr(title, ?, 1000), \' \', \'blank\') like \'%blank%\' then 0 else cast(replace(substr(title, ?, 1000), \' \', \'blank\') AS INTGER)end"

    aput-object v2, v3, v1

    .line 435
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "_data like ? and title like ? and (mime_type = \'audio/amr\' or mime_type = \'audio/3gpp\' or mime_type = \'audio/mp4\')"

    .line 436
    .local v4, whereString:Ljava/lang/String;
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 437
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 440
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_81} :catch_86
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_77 .. :try_end_81} :catch_a1

    move-result-object v9

    .line 450
    :goto_82
    if-nez v9, :cond_bc

    .line 452
    const/4 v1, 0x1

    .line 492
    :goto_85
    return v1

    .line 442
    :catch_86
    move-exception v10

    .line 443
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "VRUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFileIndex - SQLiteException :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v9, 0x0

    .line 448
    goto :goto_82

    .line 445
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_a1
    move-exception v11

    .line 446
    .local v11, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "VRUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFileIndex - UnsupportedOperationException :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v9, 0x0

    goto :goto_82

    .line 456
    .end local v11           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_bc
    const/4 v7, 0x0

    .line 457
    .local v7, count:I
    const/4 v13, 0x0

    .line 459
    .local v13, i:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_fc

    .line 460
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v14, v1, [I

    .line 462
    .local v14, indexArray:[I
    :cond_d0
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gez v1, :cond_f1

    .line 463
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count:I
    .local v8, count:I
    const/4 v1, 0x0

    aput v1, v14, v7

    move v7, v8

    .line 468
    .end local v8           #count:I
    .restart local v7       #count:I
    :goto_dd
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 469
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 477
    invoke-static {v14}, Ljava/util/Arrays;->sort([I)V

    .line 492
    array-length v1, v14

    add-int/lit8 v1, v1, -0x1

    aget v1, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 466
    :cond_f1
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count:I
    .restart local v8       #count:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v14, v7

    move v7, v8

    .end local v8           #count:I
    .restart local v7       #count:I
    goto :goto_dd

    .line 472
    .end local v14           #indexArray:[I
    :cond_fc
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 474
    const/4 v1, 0x1

    goto :goto_85
.end method

.method private static findFileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 510
    const-string v0, "%1$s %2$03d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableStorage(Z)J
    .registers 8
    .parameter "internal"

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, storageDirectory:Ljava/lang/String;
    if-nez p0, :cond_1d

    .line 249
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_8
    :try_start_8
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    sput-wide v3, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 265
    sget-wide v3, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1c} :catch_26

    .line 271
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_1c
    return-wide v3

    .line 254
    :cond_1d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 266
    :catch_26
    move-exception v0

    .line 270
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "VRUtil"

    const-string v4, "getAvailableStorage - exception. return 0"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-wide/16 v3, 0x0

    goto :goto_1c
.end method

.method public static getBlockSize(Z)I
    .registers 6
    .parameter "internal"

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, storageDirectory:Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, blockSize:I
    if-nez p0, :cond_14

    .line 210
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 219
    :goto_9
    :try_start_9
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_1d

    move-result v0

    move v4, v0

    .line 223
    .end local v2           #stat:Landroid/os/StatFs;
    :goto_13
    return v4

    .line 215
    :cond_14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 222
    :catch_1d
    move-exception v1

    .line 223
    .local v1, ex:Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    goto :goto_13
.end method

.method public static getByteString(J)Ljava/lang/String;
    .registers 12
    .parameter "bytes"

    .prologue
    const-wide/high16 v8, 0x4090

    const-wide/high16 v5, 0x4130

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1056
    const-wide/32 v0, 0x19000

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    .line 1057
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    :goto_21
    return-object v0

    .line 1058
    :cond_22
    const-wide/32 v0, 0xfa000

    cmp-long v0, p0, v0

    if-gez v0, :cond_3e

    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 1060
    :cond_3e
    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gez v0, :cond_5a

    .line 1061
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.3fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 1062
    :cond_5a
    const-wide/32 v0, 0x6400000

    cmp-long v0, p0, v0

    if-gez v0, :cond_76

    .line 1063
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 1064
    :cond_76
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p0, v0

    if-gez v0, :cond_92

    .line 1065
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 1067
    :cond_92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.3fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21
.end method

.method public static getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 778
    const/4 v3, 0x0

    .line 779
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 785
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 786
    .local v8, data:Ljava/lang/String;
    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 787
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 789
    .local v9, dataIndex:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 790
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 793
    .end local v9           #dataIndex:I
    :cond_43
    return-object v8
.end method

.method public static getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1130
    if-eqz p0, :cond_17

    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mExternalStorage:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 1131
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1132
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, volumes:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sput-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mExternalStorage:Ljava/lang/String;

    .line 1135
    .end local v0           #mStorageManager:Landroid/os/storage/StorageManager;
    .end local v1           #volumes:[Ljava/lang/String;
    :cond_17
    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mExternalStorage:Ljava/lang/String;

    return-object v2
.end method

.method public static getExternalStorageStateSd(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1123
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1124
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, state:Ljava/lang/String;
    return-object v1
.end method

.method public static getFileName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 797
    const/4 v3, 0x0

    .line 798
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 804
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 805
    .local v9, title:Ljava/lang/String;
    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 806
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 808
    .local v8, dataIndex:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 809
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 812
    .end local v8           #dataIndex:I
    :cond_43
    return-object v9
.end method

.method public static getMMSSize()J
    .registers 2

    .prologue
    .line 103
    const-wide/32 v0, 0xf8c00

    return-wide v0
.end method

.method public static getSaveDirPathCreated()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Sounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, dirpath:Ljava/lang/String;
    :goto_22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_30

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_30
    return-object v1

    .line 310
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dirpath:Ljava/lang/String;
    :cond_31
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Sounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dirpath:Ljava/lang/String;
    goto :goto_22

    .line 315
    .end local v1           #dirpath:Ljava/lang/String;
    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Sounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dirpath:Ljava/lang/String;
    goto :goto_22
.end method

.method public static getSaveHiddenDirPathCreated()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 336
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, dirpath:Ljava/lang/String;
    :goto_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_1d
    return-object v1

    .line 347
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dirpath:Ljava/lang/String;
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 349
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageDirectorySd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dirpath:Ljava/lang/String;
    goto :goto_f

    .line 351
    .end local v1           #dirpath:Ljava/lang/String;
    :cond_32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dirpath:Ljava/lang/String;
    goto :goto_f
.end method

.method public static getScreenHeight(Landroid/view/WindowManager;)I
    .registers 2
    .parameter "windowManager"

    .prologue
    .line 575
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/view/WindowManager;)I
    .registers 2
    .parameter "windowManager"

    .prologue
    .line 571
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private static getVoltage()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 964
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 965
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v8, 0x0

    .line 967
    .local v8, value:Ljava/lang/String;
    const/16 v1, 0x64

    .line 968
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v7, 0x0

    .line 970
    .local v7, length:I
    const/4 v5, 0x0

    .line 971
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v1, [B

    .line 973
    .local v2, buffer:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v1, :cond_12

    .line 974
    aput-byte v12, v2, v4

    .line 973
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 978
    :cond_12
    :try_start_12
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_2b

    .line 983
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    if-eqz v6, :cond_20

    .line 984
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 985
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 988
    :cond_20
    if-eqz v7, :cond_6e

    .line 989
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    move-object v5, v6

    .line 992
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_2a
    :goto_2a
    return-object v8

    .line 979
    :catch_2b
    move-exception v3

    .line 980
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 981
    const-string v9, "VRUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVoltage : FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_5a

    .line 983
    if-eqz v5, :cond_50

    .line 984
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 985
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 988
    :cond_50
    if-eqz v7, :cond_2a

    .line 989
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    goto :goto_2a

    .line 983
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catchall_5a
    move-exception v9

    if-eqz v5, :cond_64

    .line 984
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 985
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 988
    :cond_64
    if-eqz v7, :cond_6d

    .line 989
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v10, v7, -0x1

    invoke-direct {v8, v2, v12, v10}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    :cond_6d
    throw v9

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :cond_6e
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_2a
.end method

.method public static isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    .line 656
    const/4 v4, 0x0

    .line 657
    .local v4, videoChat:Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 658
    .local v2, manager:Landroid/app/ActivityManager;
    const/16 v5, 0x32

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 660
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2b

    .line 662
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 664
    .local v3, service:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.google.android.talk:videoChat"

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 665
    iget-boolean v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v5, :cond_2c

    .line 666
    const/4 v4, 0x1

    .line 673
    .end local v3           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2b
    return v4

    .line 660
    .restart local v3       #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static isLandscape(Landroid/view/WindowManager;)Z
    .registers 4
    .parameter "windowManager"

    .prologue
    const/4 v1, 0x1

    .line 579
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 581
    .local v0, rotation:I
    if-eq v0, v1, :cond_e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 584
    :cond_e
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isLowBattery()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 911
    const/4 v9, 0x0

    .line 912
    .local v9, voltage:I
    const/4 v2, 0x0

    .line 913
    .local v2, charging_source:I
    const/4 v7, 0x0

    .line 914
    .local v7, length:I
    const/16 v12, 0xa

    new-array v1, v12, [B

    .line 916
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 917
    .local v8, value:Ljava/lang/String;
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 919
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    const/4 v5, 0x0

    .line 921
    .local v5, in:Ljava/io/InputStream;
    :try_start_d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_31

    .line 925
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    if-eqz v6, :cond_1b

    .line 926
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 927
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 930
    :cond_1b
    if-eqz v7, :cond_28

    .line 931
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v12, v7, -0x1

    invoke-direct {v8, v1, v10, v12}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    move-object v5, v6

    .line 936
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_25
    if-nez v8, :cond_6c

    .line 958
    :cond_27
    :goto_27
    return v10

    .line 933
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :cond_28
    const-string v12, "VRUtil"

    const-string v13, "batteryCheck() length is 0.."

    invoke-static {v12, v13}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 934
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_25

    .line 922
    :catch_31
    move-exception v3

    .line 923
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_50

    .line 925
    if-eqz v5, :cond_3e

    .line 926
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 927
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 930
    :cond_3e
    if-eqz v7, :cond_48

    .line 931
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v12, v7, -0x1

    invoke-direct {v8, v1, v10, v12}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    goto :goto_25

    .line 933
    :cond_48
    const-string v12, "VRUtil"

    const-string v13, "batteryCheck() length is 0.."

    invoke-static {v12, v13}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 925
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catchall_50
    move-exception v11

    if-eqz v5, :cond_5a

    .line 926
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 927
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 930
    :cond_5a
    if-eqz v7, :cond_64

    .line 931
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v12, v7, -0x1

    invoke-direct {v8, v1, v10, v12}, Ljava/lang/String;-><init>([BII)V

    .line 933
    .restart local v8       #value:Ljava/lang/String;
    :goto_63
    throw v11

    :cond_64
    const-string v10, "VRUtil"

    const-string v12, "batteryCheck() length is 0.."

    invoke-static {v10, v12}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 939
    :cond_6c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 941
    if-nez v2, :cond_27

    .line 943
    const/4 v4, 0x0

    .local v4, i:I
    :goto_77
    const/4 v12, 0x5

    if-ge v4, v12, :cond_a6

    .line 944
    :try_start_7a
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getVoltage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_85} :catch_8a

    move-result v12

    add-int/2addr v9, v12

    .line 943
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 946
    :catch_8a
    move-exception v3

    .line 947
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 948
    const-string v12, "VRUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batteryCheck : IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v3           #e:Ljava/io/IOException;
    :cond_a6
    div-int/lit8 v12, v9, 0x5

    if-gt v12, v11, :cond_27

    .line 952
    const-string v10, "VRUtil"

    const-string v12, "batteryCheck : Low Battery.."

    invoke-static {v10, v12}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 953
    goto/16 :goto_27
.end method

.method public static isMounted(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "internal"

    .prologue
    .line 127
    if-eqz p1, :cond_d

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageStateSd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c
.end method

.method public static isMultiTouch(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1177
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1179
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_32

    :goto_b
    :pswitch_b
    move v1, v4

    .line 1210
    :cond_c
    :goto_c
    :pswitch_c
    return v1

    .line 1182
    :pswitch_d
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mActivePointerId:I

    goto :goto_b

    .line 1187
    :pswitch_14
    const/4 v5, -0x1

    sput v5, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mActivePointerId:I

    goto :goto_b

    .line 1195
    :pswitch_18
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v3, v5, 0x8

    .line 1198
    .local v3, pointerIndex:I
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1200
    .local v2, pointerId:I
    sget v5, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mActivePointerId:I

    if-ne v2, v5, :cond_c

    .line 1203
    if-nez v3, :cond_30

    .line 1204
    .local v1, newPointerIndex:I
    :goto_28
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mActivePointerId:I

    move v1, v4

    .line 1205
    goto :goto_c

    .end local v1           #newPointerIndex:I
    :cond_30
    move v1, v4

    .line 1203
    goto :goto_28

    .line 1179
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_d
        :pswitch_14
        :pswitch_b
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method public static isOnCall(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 626
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 628
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 629
    const/4 v1, 0x1

    .line 631
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isOnVoIP(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 639
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 641
    .local v1, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_18

    .line 642
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_14

    move-result v2

    if-nez v2, :cond_18

    .line 643
    const/4 v2, 0x1

    .line 651
    .end local v1           #voipCall:Landroid/os/IVoIPInterface;
    :goto_13
    return v2

    .line 646
    :catch_14
    move-exception v0

    .line 647
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 651
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_18
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static isVoiceRecorderTop(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1101
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1103
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1104
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    .line 1106
    .local v5, topTask:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    :try_start_10
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v5, v0
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_18} :catch_2a

    .line 1111
    :goto_18
    if-eqz v5, :cond_2f

    .line 1112
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1114
    .local v4, runningTaskPackage:Ljava/lang/String;
    const-string v6, "com.sec.android.app.voicerecorder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v7

    .line 1118
    .end local v4           #runningTaskPackage:Ljava/lang/String;
    :goto_29
    return v6

    .line 1107
    :catch_2a
    move-exception v1

    .line 1108
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_18

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2f
    move v6, v8

    .line 1118
    goto :goto_29
.end method

.method private static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 870
    if-nez p0, :cond_4

    .line 877
    :goto_3
    return-object v1

    .line 873
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 876
    :catch_9
    move-exception v0

    .line 877
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_3
.end method

.method public static renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .parameter "context"
    .parameter "id"
    .parameter "oldPath"
    .parameter "newTitle"

    .prologue
    .line 679
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v13, oldFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 681
    .local v15, oldFileName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 683
    .local v14, oldFileExtension:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    .line 684
    .local v12, newPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 685
    .local v11, newName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 687
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 688
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 690
    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 691
    .local v8, c:Landroid/database/Cursor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v16, strBuilder:Ljava/lang/StringBuilder;
    if-eqz v8, :cond_e6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .local v10, i:I
    :goto_74
    if-lez v10, :cond_e3

    .line 694
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_dd

    .line 695
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 696
    const-string v2, "_id="

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 699
    .local v18, where:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v17, v:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v2, "_display_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :try_start_c5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_c5 .. :try_end_d3} :catch_d8

    .line 709
    :goto_d3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 710
    const/4 v2, 0x1

    .line 716
    .end local v10           #i:I
    .end local v17           #v:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    :goto_d7
    return v2

    .line 706
    .restart local v10       #i:I
    .restart local v17       #v:Landroid/content/ContentValues;
    .restart local v18       #where:Ljava/lang/String;
    :catch_d8
    move-exception v9

    .line 707
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    goto :goto_d3

    .line 712
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    .end local v17           #v:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    :cond_dd
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 693
    add-int/lit8 v10, v10, -0x1

    goto :goto_74

    .line 714
    :cond_e3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 716
    .end local v10           #i:I
    :cond_e6
    const/4 v2, 0x0

    goto :goto_d7
.end method

.method public static sendDestroyBroadcast(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicerecorder.VOICE_INTENT_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 900
    return-void
.end method

.method public static sendFileDeleteBroadcast(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicerecorder.VOICE_INTENT_FILE_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 905
    return-void
.end method

.method public static setFixedNewFileName(ZLjava/lang/String;)V
    .registers 2
    .parameter "enable"
    .parameter "newName"

    .prologue
    .line 373
    sput-boolean p0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isNameFixed:Z

    .line 374
    sput-object p1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->fixedName:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public static setFixedNewFileNameWithIndex(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .parameter "newName"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 383
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_11

    .line 385
    :cond_9
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isNameFixed:Z

    .line 386
    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->fixedName:Ljava/lang/String;

    .line 398
    :goto_10
    return-void

    .line 390
    :cond_11
    invoke-static {p0, p1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->findFileIndex(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 393
    .local v0, indexInt:I
    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->findFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, newFileName:Ljava/lang/String;
    sput-boolean v3, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isNameFixed:Z

    .line 397
    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->fixedName:Ljava/lang/String;

    goto :goto_10
.end method

.method public static setWakeLock(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 1005
    if-eqz p1, :cond_23

    .line 1006
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_22

    .line 1007
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1008
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "VRUtil"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1009
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1010
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1019
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_22
    :goto_22
    return-void

    .line 1014
    :cond_23
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_22

    .line 1015
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1016
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_22
.end method

.method public static showManagedToast(Landroid/content/Context;II)V
    .registers 4
    .parameter "context"
    .parameter "stringId"
    .parameter "toastLength"

    .prologue
    .line 545
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_14

    .line 546
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    .line 553
    :goto_e
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 554
    return-void

    .line 550
    :cond_14
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 551
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_e
.end method

.method public static showManagedToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .parameter "context"
    .parameter "str"
    .parameter "toastLength"

    .prologue
    .line 558
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_10

    .line 559
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    .line 566
    :goto_a
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    return-void

    .line 563
    :cond_10
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 564
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method public static showToast(Landroid/content/Context;II)V
    .registers 3
    .parameter "context"
    .parameter "stringId"
    .parameter "toastLength"

    .prologue
    .line 525
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V

    .line 526
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3
    .parameter "context"
    .parameter "str"
    .parameter "toastLength"

    .prologue
    .line 530
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 531
    return-void
.end method

.method public static showToastAudioShock(Landroid/content/Context;ILandroid/media/AudioManager;)V
    .registers 3
    .parameter "context"
    .parameter "targetVolume"
    .parameter "audioManager"

    .prologue
    .line 1085
    return-void
.end method

.method public static showToastAudioShockForAdjust(Landroid/content/Context;ILandroid/media/AudioManager;)V
    .registers 3
    .parameter "context"
    .parameter "adjustArg"
    .parameter "audioManager"

    .prologue
    .line 1098
    return-void
.end method

.method public static showToastSaved(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 540
    const v0, 0x7f06002d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 541
    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 596
    const-string v1, "VRUtil"

    const-string v2, "unbindFromService"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;

    .line 598
    .local v0, sb:Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;
    if-nez v0, :cond_12

    .line 604
    :cond_11
    :goto_11
    return-void

    .line 600
    :cond_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 601
    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 602
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    goto :goto_11
.end method
