.class public Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;,
        Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VideoDetailsDialog"


# instance fields
.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoDRMUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDRMUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 45
    return-void
.end method

.method private getDateTime(JLjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "videoId"
    .parameter "path"

    .prologue
    .line 261
    const-string v0, ""

    .line 262
    .local v0, dateString:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getDateTaken(J)J

    move-result-wide v2

    .line 263
    .local v2, dateTaken:J
    const-wide/16 v2, 0x0

    .line 264
    sget-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v6, :cond_54

    .line 265
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, mFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 269
    .end local v4           #mFile:Ljava/io/File;
    :goto_17
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_7b

    .line 270
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 271
    .local v5, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const/16 v8, 0x81

    invoke-static {v7, v2, v3, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_52
    move-object v1, v0

    .line 278
    .end local v0           #dateString:Ljava/lang/String;
    .end local v5           #shortDateFormat:Ljava/text/DateFormat;
    .local v1, dateString:Ljava/lang/String;
    :goto_53
    return-object v1

    .line 268
    .end local v1           #dateString:Ljava/lang/String;
    .restart local v0       #dateString:Ljava/lang/String;
    :cond_54
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getDateTaken(J)J

    move-result-wide v2

    goto :goto_17

    .line 275
    .restart local v5       #shortDateFormat:Ljava/text/DateFormat;
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const/16 v8, 0x41

    invoke-static {v7, v2, v3, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .end local v5           #shortDateFormat:Ljava/text/DateFormat;
    :cond_7b
    move-object v1, v0

    .line 278
    .end local v0           #dateString:Ljava/lang/String;
    .restart local v1       #dateString:Ljava/lang/String;
    goto :goto_53
.end method

.method private getDisplayName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .parameter "videoUri"

    .prologue
    .line 282
    const-string v7, "<unknown>"

    .line 284
    .local v7, displayName:Ljava/lang/String;
    if-eqz p1, :cond_64

    .line 286
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_12} :catch_6a

    move-result-object v6

    .line 287
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_28

    .line 289
    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 290
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 291
    .local v9, idx:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_65

    move-result-object v7

    .line 294
    .end local v9           #idx:I
    :cond_25
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_28} :catch_6a

    .line 303
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_28
    :goto_28
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 305
    const-string v0, "VideoDetailsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayNam : movie store : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 310
    :cond_4c
    const-string v0, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 316
    :cond_64
    return-object v7

    .line 294
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_65
    move-exception v0

    :try_start_66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_6a} :catch_6a

    .line 297
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_6a
    move-exception v8

    .line 298
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VideoDetailsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException occured  2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private getFileFormat(J)Ljava/lang/String;
    .registers 7
    .parameter "id"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMimeTypebyId(J)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, format:Ljava/lang/String;
    const-string v1, "VideoDetailsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFormat() - format :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v0
.end method

.method private getFileSize(JLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "id"
    .parameter "path"

    .prologue
    .line 331
    const-wide/16 v0, 0x0

    .line 334
    .local v0, fileSize:J
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v3, :cond_16

    .line 335
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v2, mFile:Ljava/io/File;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 346
    .end local v2           #mFile:Ljava/io/File;
    :goto_15
    return-object v3

    .line 338
    :cond_16
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_2e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_2e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_2e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_37

    .line 342
    :cond_2e
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    .line 345
    :cond_37
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSizebyId(J)J

    move-result-wide v0

    .line 346
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_15
.end method

.method private getForwardingType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 319
    if-eqz p1, :cond_1e

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDRMUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsShare(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_13
    return-object v0

    .line 323
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 325
    :cond_1e
    const-string v0, "VideoDetailsDialog"

    const-string v1, "path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private getResolution(J)Ljava/lang/String;
    .registers 7
    .parameter "id"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResolutionById(J)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, dimensionsString:Ljava/lang/String;
    const-string v1, "VideoDetailsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolution() - dimensionsString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->createAdapter()Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;
    .registers 25

    .prologue
    .line 56
    const/16 v18, 0x0

    .line 57
    .local v18, path:Ljava/lang/String;
    const-wide/16 v20, -0x1

    .line 58
    .local v20, videoId:J
    const/16 v17, 0x0

    .line 59
    .local v17, isDrm:Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v12, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;>;"
    const/4 v14, 0x0

    .line 62
    .local v14, drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;>;"
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v20

    .line 63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v18

    .line 65
    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v4, :cond_1e9

    .line 66
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v18

    .line 67
    const-string v4, "file://"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_36

    .line 68
    :cond_32
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPreviewFilePath()Ljava/lang/String;

    move-result-object v18

    .line 76
    :cond_36
    :goto_36
    if-eqz v18, :cond_1f5

    .line 77
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDRMUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_47

    .line 78
    const/16 v17, 0x1

    .line 84
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, dateTime:Ljava/lang/String;
    const-string v4, " & "

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 88
    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v4, :cond_1fe

    .line 89
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getFileSize(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v13

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_a7
    if-eqz v17, :cond_b3

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->mVideoDRMUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDetailInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 104
    :cond_b3
    if-eqz v17, :cond_2d7

    if-eqz v14, :cond_2d7

    .line 105
    const-string v4, "VideoDetailsDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAdapter() - isDrm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 108
    .local v19, permissionCount:I
    if-lez v19, :cond_2d7

    .line 109
    const-string v4, "VideoDetailsDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAdapter() - permissionCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v15, 0x0

    .local v15, i:I
    :goto_f2
    move/from16 v0, v19

    if-ge v15, v0, :cond_2d7

    .line 112
    const/4 v8, 0x0

    .line 113
    .local v8, roCount:Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, availableUse:Ljava/lang/String;
    const/4 v10, 0x0

    .line 115
    .local v10, typeStr:Ljava/lang/String;
    const/4 v11, 0x0

    .line 117
    .local v11, validity:Ljava/lang/String;
    const-string v4, "(%d/%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;

    .line 121
    .local v16, info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14c

    .line 122
    const-string v4, "%s : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v22, 0x7f080056

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->permissionStr:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 124
    :cond_14c
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b3

    .line 125
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c6

    .line 126
    const-string v4, "%s-%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 130
    :goto_197
    const-string v4, "%s : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v22, 0x7f080020

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 133
    :cond_1b3
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    if-eqz v4, :cond_1d9

    .line 134
    const-string v4, "%s : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v22, 0x7f080057

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->validityStr:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 136
    :cond_1d9
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_f2

    .line 71
    .end local v8           #roCount:Ljava/lang/String;
    .end local v9           #availableUse:Ljava/lang/String;
    .end local v10           #typeStr:Ljava/lang/String;
    .end local v11           #validity:Ljava/lang/String;
    .end local v13           #dateTime:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .end local v19           #permissionCount:I
    :cond_1e9
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_36

    .line 72
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPreviewFilePath()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_36

    .line 80
    :cond_1f5
    const-string v4, "VideoDetailsDialog"

    const-string v5, "createAdapter() - path is null. it seem to be called detail dialog too fast by the user. so ignore it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v4, 0x0

    .line 142
    :goto_1fd
    return-object v4

    .line 93
    .restart local v13       #dateTime:Ljava/lang/String;
    :cond_1fe
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f080032

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f080034

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getFileFormat(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f080033

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getResolution(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getFileSize(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v13

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f080041

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->getForwardingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 129
    .restart local v8       #roCount:Ljava/lang/String;
    .restart local v9       #availableUse:Ljava/lang/String;
    .restart local v10       #typeStr:Ljava/lang/String;
    .restart local v11       #validity:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v16       #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .restart local v19       #permissionCount:I
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;->typeStr:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_197

    .line 142
    .end local v8           #roCount:Ljava/lang/String;
    .end local v9           #availableUse:Ljava/lang/String;
    .end local v10           #typeStr:Ljava/lang/String;
    .end local v11           #validity:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #info:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil$VideoDrmDetailInfo;
    .end local v19           #permissionCount:I
    :cond_2d7
    new-instance v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v12}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_1fd
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 49
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 52
    const v0, 0x7f08000b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 53
    return-void
.end method
