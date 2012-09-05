.class public Lcom/sec/android/providers/downloads/SecDownloadThread;
.super Ljava/lang/Thread;
.source "SecDownloadThread.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)V
    .registers 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 61
    return-void
.end method

.method private UpdateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "ContentUri"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    return-void
.end method

.method private ValidateHeaderData(Lcom/sec/android/providers/downloads/SecDownloadInfo;Ljava/lang/String;I)I
    .registers 10
    .parameter "mInfo"
    .parameter "MimeType"
    .parameter "ContentSize"

    .prologue
    const/16 v2, 0x26d

    const/16 v1, 0x262

    const/4 v5, 0x1

    .line 972
    const/4 v0, 0x0

    .line 974
    .local v0, StatusResult:I
    if-nez p2, :cond_9

    .line 1027
    :goto_8
    return v1

    .line 979
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v3

    if-ne v3, v5, :cond_40

    .line 980
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v3

    if-ne v5, v3, :cond_40

    .line 981
    const-string v3, "SecDownloader"

    const-string v4, "SecDownloadThread : ValidateHeaderData : This is a DRM Mime "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportedDrmMime(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 983
    const-string v2, "SecDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecDownloadThread : ValidateHeaderData : DRM mime is not supported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 989
    :cond_40
    iget v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-eqz v1, :cond_4a

    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v1

    if-ne v5, v1, :cond_4d

    .line 992
    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    move v1, v0

    .line 1027
    goto :goto_8

    .line 993
    :cond_4d
    iget v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-ne v5, v1, :cond_4b

    .line 996
    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPrimaryMimeType:Ljava/lang/String;

    if-eqz v1, :cond_66

    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPrimaryMimeType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 998
    const/4 v0, 0x1

    .line 1019
    :goto_5e
    if-eqz p3, :cond_4b

    iget v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mContentSize:I

    if-eq p3, v1, :cond_4b

    move v1, v2

    .line 1023
    goto :goto_8

    .line 1000
    :cond_66
    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType1:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType1:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1002
    const/4 v0, 0x1

    goto :goto_5e

    .line 1004
    :cond_74
    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType2:Ljava/lang/String;

    if-eqz v1, :cond_82

    iget-object v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType2:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1006
    const/4 v0, 0x1

    goto :goto_5e

    .line 1007
    :cond_82
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v1

    if-ne v5, v1, :cond_8a

    .line 1009
    const/4 v0, 0x1

    goto :goto_5e

    :cond_8a
    move v1, v2

    .line 1014
    goto/16 :goto_8
.end method

.method private notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "values"
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 879
    const-string v0, "GATE"

    const-string v1, "<GATE-M>CONTENT_DOWNLOADED</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-direct/range {p0 .. p9}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyThroughDatabase(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method private notifyThroughDatabase(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "values"
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 894
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 899
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 900
    const-string v0, "state"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    :cond_20
    :goto_20
    const-string v0, "_data"

    invoke-virtual {p1, v0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    if-eqz p8, :cond_2c

    .line 914
    const-string v0, "uri"

    invoke-virtual {p1, v0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_2c
    const-string v0, "mimetype"

    invoke-virtual {p1, v0, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    const-string v0, "method"

    shl-int/lit8 v1, p5, 0x1c

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    if-nez p3, :cond_88

    .line 920
    const-string v0, "numfailed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    :goto_56
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v2, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
    return-void

    .line 902
    :cond_6b
    const-string v0, "state"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    .line 904
    :cond_77
    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 906
    const-string v0, "state"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    .line 921
    :cond_88
    if-eqz p6, :cond_95

    .line 922
    const-string v0, "numfailed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_56

    .line 924
    :cond_95
    const-string v0, "numfailed"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v1, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_56
.end method

.method private sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "mimeType"

    .prologue
    .line 951
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 953
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 954
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 955
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_1a

    move-result-object p1

    :cond_18
    move-object v2, p1

    .line 959
    .end local v1           #semicolonIndex:I
    :goto_19
    return-object v2

    .line 958
    :catch_1a
    move-exception v0

    .line 959
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private userAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 68
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 70
    :cond_6
    if-nez v0, :cond_a

    .line 71
    const-string v0, "AndroidDownloadManager"

    .line 73
    :cond_a
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 77

    .prologue
    .line 80
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    const/16 v5, 0x1eb

    .line 85
    .local v5, finalStatus:I
    const/16 v47, 0x0

    .line 86
    .local v47, finalState:I
    const/16 v37, 0x0

    .line 87
    .local v37, countRetry:Z
    const/16 v21, 0x0

    .line 88
    .local v21, retryAfter:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRedirectCount:I

    move/from16 v22, v0

    .line 89
    .local v22, redirectCount:I
    const/16 v25, 0x0

    .line 90
    .local v25, newUri:Ljava/lang/String;
    const/16 v23, 0x0

    .line 91
    .local v23, gotData:Z
    const/4 v10, 0x0

    .line 92
    .local v10, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/providers/downloads/SecDownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 93
    .local v16, mimeType:Ljava/lang/String;
    const/16 v67, 0x0

    .line 94
    .local v67, stream:Ljava/io/FileOutputStream;
    const/16 v33, 0x0

    .line 95
    .local v33, client:Landroid/net/http/AndroidHttpClient;
    const/16 v75, 0x0

    .line 96
    .local v75, wakeLock:Landroid/os/PowerManager$WakeLock;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v4, values:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 98
    .local v35, contentUri:Landroid/net/Uri;
    const/16 v27, 0x0

    .line 99
    .local v27, Redirected:Z
    const/16 v57, 0x0

    .line 100
    .local v57, newMimeType:Ljava/lang/String;
    const/16 v56, 0x0

    .line 101
    .local v56, mTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 104
    .local v58, newUrl:Ljava/lang/String;
    const/16 v36, 0x0

    .line 105
    .local v36, continuingDownload:Z
    const/16 v49, 0x0

    .line 106
    .local v49, headerAcceptRanges:Ljava/lang/String;
    const/4 v14, 0x0

    .line 107
    .local v14, headerContentDisposition:Ljava/lang/String;
    const/16 v50, 0x0

    .line 108
    .local v50, headerContentLength:Ljava/lang/String;
    const/4 v15, 0x0

    .line 109
    .local v15, headerContentLocation:Ljava/lang/String;
    const/16 v53, 0x0

    .line 110
    .local v53, headerTransferEncoding:Ljava/lang/String;
    const/16 v52, 0x0

    .line 111
    .local v52, headerOmaSeperateDelivery:Ljava/lang/String;
    const/16 v51, 0x0

    .line 113
    .local v51, headerETag:Ljava/lang/String;
    const v3, 0x19000

    :try_start_73
    new-array v0, v3, [B

    move-object/from16 v38, v0

    .line 115
    .local v38, data:[B
    const/16 v32, 0x0

    .line 126
    .local v32, bytesSoFar:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v10, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .line 127
    if-eqz v10, :cond_bb

    .line 128
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : fileName : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v43, Ljava/io/File;

    move-object/from16 v0, v43

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v43, f:Ljava/io/File;
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 133
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->length()J

    move-result-wide v45

    .line 134
    .local v45, fileLength:J
    const-wide/16 v12, 0x0

    cmp-long v3, v45, v12

    if-nez v3, :cond_232

    .line 136
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->delete()Z

    .line 137
    const/4 v10, 0x0

    .line 138
    const-string v3, "SecDownloader"

    const-string v7, "SecDownloadThread : file deleted : "

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v43           #f:Ljava/io/File;
    .end local v45           #fileLength:J
    :cond_bb
    :goto_bb
    move/from16 v30, v32

    .line 166
    .local v30, bytesNotified:I
    const-wide/16 v71, 0x0

    .line 168
    .local v71, timeLastNotification:J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v33

    .line 169
    const-string v3, "SecDownloader"

    const-string v7, "SecDownloadThread : use AndroidHttpClient : "

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_73 .. :try_end_ce} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_ce} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_ce} :catch_786

    .line 170
    if-eqz v67, :cond_d5

    .line 172
    :try_start_d0
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_850
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_a8a
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_d3} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_d3} :catch_786

    .line 173
    const/16 v67, 0x0

    .line 212
    :cond_d5
    :goto_d5
    :try_start_d5
    new-instance v64, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v64

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 217
    .local v64, request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v3, :cond_f3

    .line 218
    const-string v3, "Cookie"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCookies:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_f3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v3, :cond_108

    .line 222
    const-string v3, "Referer"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mReferer:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_108
    if-eqz v36, :cond_151

    .line 225
    if-eqz v51, :cond_115

    .line 226
    const-string v3, "If-Match"

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_115
    const-string v3, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : Range Header : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_151
    const/16 v55, 0x0

    .line 234
    .local v55, isProxySet:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v62

    .line 235
    .local v62, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_162
    .catchall {:try_start_d5 .. :try_end_162} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_d5 .. :try_end_162} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_162} :catch_786

    move-result v63

    .line 237
    .local v63, proxyPort:I
    if-eqz v62, :cond_16c

    const/4 v3, -0x1

    move/from16 v0, v63

    if-eq v3, v0, :cond_16c

    .line 238
    const/16 v55, 0x1

    .line 243
    :cond_16c
    :try_start_16c
    new-instance v54, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 244
    .local v54, hostUrl:Ljava/net/URI;
    new-instance v69, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v54 .. v54}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v54 .. v54}, Ljava/net/URI;->getPort()I

    move-result v7

    const-string v12, "http"

    move-object/from16 v0, v69

    invoke-direct {v0, v3, v7, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_16c .. :try_end_18a} :catchall_850
    .catch Ljava/net/URISyntaxException; {:try_start_16c .. :try_end_18a} :catch_2e2
    .catch Ljava/io/FileNotFoundException; {:try_start_16c .. :try_end_18a} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_18a} :catch_786

    .line 258
    .local v69, target:Lorg/apache/http/HttpHost;
    :try_start_18a
    invoke-virtual/range {v33 .. v33}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v61

    .line 259
    .local v61, params:Lorg/apache/http/params/HttpParams;
    if-eqz v55, :cond_1c4

    .line 260
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread :Set  Proxy Host:  "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v62

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "  ProxyPort :"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v63

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v3, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v62

    move/from16 v1, v63

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v61

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_1c4
    .catchall {:try_start_18a .. :try_end_1c4} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_18a .. :try_end_1c4} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_18a .. :try_end_1c4} :catch_786

    .line 273
    :cond_1c4
    :try_start_1c4
    move-object/from16 v0, v33

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1cb
    .catchall {:try_start_1c4 .. :try_end_1cb} :catchall_850
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c4 .. :try_end_1cb} :catch_319
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1cb} :catch_329
    .catch Ljava/io/FileNotFoundException; {:try_start_1c4 .. :try_end_1cb} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_1c4 .. :try_end_1cb} :catch_786

    move-result-object v65

    .line 317
    .local v65, response:Lorg/apache/http/HttpResponse;
    :try_start_1cc
    invoke-interface/range {v65 .. v65}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v66

    .line 325
    .local v66, statusCode:I
    const/16 v3, 0x12d

    move/from16 v0, v66

    if-eq v0, v3, :cond_1ec

    const/16 v3, 0x12e

    move/from16 v0, v66

    if-eq v0, v3, :cond_1ec

    const/16 v3, 0x12f

    move/from16 v0, v66

    if-eq v0, v3, :cond_1ec

    const/16 v3, 0x133

    move/from16 v0, v66

    if-ne v0, v3, :cond_4b9

    .line 327
    :cond_1ec
    const/16 v27, 0x1

    .line 331
    const/4 v3, 0x5

    move/from16 v0, v22

    if-lt v0, v3, :cond_402

    .line 337
    const/16 v5, 0x1f1

    .line 338
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1f8
    .catchall {:try_start_1cc .. :try_end_1f8} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_1cc .. :try_end_1f8} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_1cc .. :try_end_1f8} :catch_786

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .local v9, gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .local v11, newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .local v8, redirectCount:I
    move/from16 v6, v37

    .line 793
    .end local v37           #countRetry:Z
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .local v6, countRetry:Z
    :goto_200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 794
    if-eqz v75, :cond_20c

    .line 795
    throw v75

    .line 796
    const/16 v75, 0x0

    .line 798
    :cond_20c
    if-eqz v33, :cond_213

    .line 799
    invoke-virtual/range {v33 .. v33}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 800
    const/16 v33, 0x0

    .line 803
    :cond_213
    if-eqz v67, :cond_218

    .line 804
    :try_start_215
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_218} :catch_e9b

    .line 816
    :cond_218
    :goto_218
    if-eqz v10, :cond_eb8

    .line 817
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_f63

    .line 818
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .end local v30           #bytesNotified:I
    .end local v32           #bytesSoFar:I
    .end local v38           #data:[B
    .end local v55           #isProxySet:Z
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v71           #timeLastNotification:J
    :cond_228
    :goto_228
    move-object/from16 v3, p0

    move/from16 v7, v21

    move-object/from16 v12, v16

    .line 862
    invoke-direct/range {v3 .. v12}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :goto_231
    return-void

    .line 139
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v32       #bytesSoFar:I
    .restart local v37       #countRetry:Z
    .restart local v38       #data:[B
    .restart local v43       #f:Ljava/io/File;
    .restart local v45       #fileLength:J
    :cond_232
    :try_start_232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_29a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-boolean v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_29a

    .line 145
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->delete()Z

    .line 146
    const/16 v5, 0x19c

    .line 147
    const-string v3, "SecDownloader"

    const-string v7, "SecDownloadThread : Integrity check : "

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25e
    .catchall {:try_start_232 .. :try_end_25e} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_232 .. :try_end_25e} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_232 .. :try_end_25e} :catch_786

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 794
    if-eqz v75, :cond_26a

    .line 795
    throw v75

    .line 796
    const/16 v75, 0x0

    .line 798
    :cond_26a
    if-eqz v33, :cond_26f

    .line 799
    throw v33

    .line 800
    const/16 v33, 0x0

    .line 803
    :cond_26f
    if-eqz v67, :cond_272

    .line 804
    :try_start_271
    throw v67
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_272} :catch_ff4

    .line 816
    :cond_272
    :goto_272
    if-eqz v10, :cond_1011

    .line 817
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_10bc

    .line 818
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_282
    :goto_282
    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v37

    move-object/from16 v24, v10

    move-object/from16 v26, v16

    .line 862
    invoke-direct/range {v17 .. v26}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 150
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_231

    .line 153
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_29a
    :try_start_29a
    new-instance v68, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v68

    invoke-direct {v0, v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2a2
    .catchall {:try_start_29a .. :try_end_2a2} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_29a .. :try_end_2a2} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_29a .. :try_end_2a2} :catch_786

    .line 154
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .local v68, stream:Ljava/io/FileOutputStream;
    move-wide/from16 v0, v45

    long-to-int v0, v0

    move/from16 v32, v0

    .line 155
    :try_start_2a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mTotalBytes:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2ba

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mTotalBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    .line 158
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mETag:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 159
    const/16 v36, 0x1

    .line 160
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : continue download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v45

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2de
    .catchall {:try_start_2a7 .. :try_end_2de} :catchall_114d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a7 .. :try_end_2de} :catch_11c7
    .catch Ljava/lang/RuntimeException; {:try_start_2a7 .. :try_end_2de} :catch_118f

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_bb

    .line 247
    .end local v43           #f:Ljava/io/File;
    .end local v45           #fileLength:J
    .restart local v30       #bytesNotified:I
    .restart local v55       #isProxySet:Z
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v71       #timeLastNotification:J
    :catch_2e2
    move-exception v41

    .line 248
    .local v41, ex:Ljava/net/URISyntaxException;
    :try_start_2e3
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v5, 0x190

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 252
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 274
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v41           #ex:Ljava/net/URISyntaxException;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    :catch_319
    move-exception v41

    .line 280
    .local v41, ex:Ljava/lang/IllegalArgumentException;
    const/16 v5, 0x190

    .line 281
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 282
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 283
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v41           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catch_329
    move-exception v41

    .line 289
    .local v41, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_370

    .line 290
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Request Execute Failed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Up"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_35f
    .catchall {:try_start_2e3 .. :try_end_35f} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_2e3 .. :try_end_35f} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_2e3 .. :try_end_35f} :catch_786

    move-result v3

    if-nez v3, :cond_3ee

    .line 297
    const/16 v5, 0xc1

    const/4 v6, 0x1

    .line 309
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :goto_365
    :try_start_365
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_368
    .catchall {:try_start_365 .. :try_end_368} :catchall_115b
    .catch Ljava/io/FileNotFoundException; {:try_start_365 .. :try_end_368} :catch_11d4
    .catch Ljava/lang/RuntimeException; {:try_start_365 .. :try_end_368} :catch_119c

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .line 310
    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 293
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_370
    :try_start_370
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Request Execute Failed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Down"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_394
    .catchall {:try_start_370 .. :try_end_394} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_370 .. :try_end_394} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_370 .. :try_end_394} :catch_786

    goto :goto_358

    .line 785
    .end local v30           #bytesNotified:I
    .end local v32           #bytesSoFar:I
    .end local v38           #data:[B
    .end local v41           #ex:Ljava/io/IOException;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .end local v71           #timeLastNotification:J
    :catch_395
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 786
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    .local v41, ex:Ljava/io/FileNotFoundException;
    :goto_39e
    :try_start_39e
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : FileNotFoundException for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c2
    .catchall {:try_start_39e .. :try_end_3c2} :catchall_118b

    .line 788
    const/16 v5, 0x1ec

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 794
    if-eqz v75, :cond_3d0

    .line 795
    throw v75

    .line 796
    const/16 v75, 0x0

    .line 798
    :cond_3d0
    if-eqz v33, :cond_3d7

    .line 799
    invoke-virtual/range {v33 .. v33}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 800
    const/16 v33, 0x0

    .line 803
    :cond_3d7
    if-eqz v67, :cond_3dc

    .line 804
    :try_start_3d9
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_3dc
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_3dc} :catch_be9

    .line 816
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :cond_3dc
    :goto_3dc
    if-eqz v10, :cond_c06

    .line 817
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_cb1

    .line 818
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_228

    .line 298
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v32       #bytesSoFar:I
    .restart local v37       #countRetry:Z
    .restart local v38       #data:[B
    .local v41, ex:Ljava/io/IOException;
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :cond_3ee
    :try_start_3ee
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    const/4 v7, 0x5

    if-ge v3, v7, :cond_3fc

    .line 299
    const/16 v5, 0xc1

    .line 300
    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_365

    .line 307
    .end local v6           #countRetry:Z
    .restart local v37       #countRetry:Z
    :cond_3fc
    const/16 v5, 0x1ef

    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_365

    .line 341
    .end local v6           #countRetry:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v37       #countRetry:Z
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    :cond_402
    const-string v3, "Location"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_409
    .catchall {:try_start_3ee .. :try_end_409} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_3ee .. :try_end_409} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_3ee .. :try_end_409} :catch_786

    move-result-object v48

    .line 342
    .local v48, header:Lorg/apache/http/Header;
    if-eqz v48, :cond_4b9

    .line 348
    :try_start_40c
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URI;

    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_427
    .catchall {:try_start_40c .. :try_end_427} :catchall_850
    .catch Ljava/net/URISyntaxException; {:try_start_40c .. :try_end_427} :catch_435
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_427} :catch_471
    .catch Ljava/io/FileNotFoundException; {:try_start_40c .. :try_end_427} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_40c .. :try_end_427} :catch_786

    move-result-object v11

    .line 371
    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    add-int/lit8 v8, v22, 0x1

    .line 372
    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    const/16 v5, 0xc1

    .line 373
    :try_start_42c
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_42f
    .catchall {:try_start_42c .. :try_end_42f} :catchall_1165
    .catch Ljava/io/FileNotFoundException; {:try_start_42c .. :try_end_42f} :catch_11dd
    .catch Ljava/lang/RuntimeException; {:try_start_42c .. :try_end_42f} :catch_11a5

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move/from16 v6, v37

    .line 374
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 354
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catch_435
    move-exception v41

    .line 355
    .local v41, ex:Ljava/net/URISyntaxException;
    :try_start_436
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Couldn\'t resolve redirect URI "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/16 v5, 0x190

    .line 360
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 361
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 362
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v41           #ex:Ljava/net/URISyntaxException;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catch_471
    move-exception v41

    .line 363
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Couldn\'t resolve redirect URI "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v5, 0x190

    .line 368
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 369
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 377
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v41           #ex:Ljava/lang/Exception;
    .end local v48           #header:Lorg/apache/http/Header;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_4b9
    if-nez v36, :cond_4c1

    const/16 v3, 0xc8

    move/from16 v0, v66

    if-ne v0, v3, :cond_4c9

    :cond_4c1
    if-eqz v36, :cond_525

    const/16 v3, 0xce

    move/from16 v0, v66

    if-eq v0, v3, :cond_525

    .line 382
    :cond_4c9
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http error "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v66

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " for download "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static/range {v66 .. v66}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_508

    .line 386
    move/from16 v5, v66

    .line 394
    :goto_4fb
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 395
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 387
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_508
    const/16 v3, 0x12c

    move/from16 v0, v66

    if-lt v0, v3, :cond_517

    const/16 v3, 0x190

    move/from16 v0, v66

    if-ge v0, v3, :cond_517

    .line 388
    const/16 v5, 0x1ed

    goto :goto_4fb

    .line 389
    :cond_517
    if-eqz v36, :cond_522

    const/16 v3, 0xc8

    move/from16 v0, v66

    if-ne v0, v3, :cond_522

    .line 390
    const/16 v5, 0x19c

    goto :goto_4fb

    .line 392
    :cond_522
    const/16 v5, 0x1ee

    goto :goto_4fb

    .line 404
    :cond_525
    if-nez v36, :cond_704

    .line 405
    const-string v3, "Accept-Ranges"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 406
    .restart local v48       #header:Lorg/apache/http/Header;
    if-eqz v48, :cond_535

    .line 407
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v49

    .line 409
    :cond_535
    const-string v3, "Content-Disposition"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 410
    if-eqz v48, :cond_543

    .line 411
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 413
    :cond_543
    const-string v3, "Content-Location"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 414
    if-eqz v48, :cond_551

    .line 415
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 418
    :cond_551
    const-string v3, "Content-Type"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 419
    if-nez v48, :cond_5c1

    .line 457
    :cond_55b
    :goto_55b
    const-string v3, "ETag"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 458
    if-eqz v48, :cond_569

    .line 459
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v51

    .line 461
    :cond_569
    const-string v3, "Transfer-Encoding"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 462
    if-eqz v48, :cond_577

    .line 463
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v53

    .line 465
    :cond_577
    const-string v3, "X-Oma-Drm-Separate-Delivery"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 466
    if-eqz v48, :cond_585

    .line 467
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v52

    .line 470
    :cond_585
    if-nez v53, :cond_595

    .line 471
    const-string v3, "Content-Length"

    move-object/from16 v0, v65

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v48

    .line 472
    if-eqz v48, :cond_595

    .line 473
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v50

    .line 494
    :cond_595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-boolean v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_616

    if-nez v50, :cond_616

    if-eqz v53, :cond_5ab

    const-string v3, "chunked"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_616

    .line 499
    :cond_5ab
    const-string v3, "SecDownloader"

    const-string v7, "can\'t know size of download, giving up"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v5, 0x19b

    .line 502
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 503
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 424
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_5c1
    invoke-interface/range {v48 .. v48}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/providers/downloads/SecDownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 428
    const-string v3, "text/plain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5df

    const-string v3, "application/octet-stream"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55b

    .line 435
    :cond_5df
    const/16 v74, 0x0

    .line 436
    .local v74, url:Ljava/lang/String;
    if-eqz v14, :cond_601

    .line 437
    invoke-static {v14}, Lcom/sec/android/providers/downloads/SecHelpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 438
    if-eqz v74, :cond_5ed

    .line 439
    invoke-static/range {v74 .. v74}, Lcom/sec/android/providers/downloads/SecHelpers;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 441
    :cond_5ed
    if-nez v57, :cond_5fb

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v74, v0

    .line 443
    invoke-static/range {v74 .. v74}, Lcom/sec/android/providers/downloads/SecHelpers;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 451
    :cond_5fb
    :goto_5fb
    if-eqz v57, :cond_55b

    .line 452
    move-object/from16 v16, v57

    goto/16 :goto_55b

    .line 445
    :cond_601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    if-eqz v3, :cond_5fb

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v74, v0

    .line 447
    invoke-static/range {v74 .. v74}, Lcom/sec/android/providers/downloads/SecHelpers;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    goto :goto_5fb

    .line 507
    .end local v74           #url:Ljava/lang/String;
    :cond_616
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    if-eqz v50, :cond_63c

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_620
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1, v3}, Lcom/sec/android/providers/downloads/SecDownloadThread;->ValidateHeaderData(Lcom/sec/android/providers/downloads/SecDownloadInfo;Ljava/lang/String;I)I

    move-result v29

    .line 511
    .local v29, VaildateResult:I
    const/4 v3, 0x1

    move/from16 v0, v29

    if-eq v3, v0, :cond_63e

    .line 516
    move/from16 v5, v29

    .line 517
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 518
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 507
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v29           #VaildateResult:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_63c
    const/4 v3, 0x0

    goto :goto_620

    .line 521
    .restart local v29       #VaildateResult:I
    :cond_63e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-boolean v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_663

    if-nez v50, :cond_663

    if-eqz v53, :cond_654

    const-string v3, "chunked"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_663

    .line 527
    :cond_654
    const/16 v5, 0x19b

    .line 528
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 529
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 532
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_663
    if-eqz v52, :cond_679

    .line 533
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    .line 534
    .local v73, timeLength:I
    if-lez v73, :cond_679

    const/16 v3, 0x19

    move/from16 v0, v73

    if-ge v0, v3, :cond_679

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move/from16 v0, v73

    iput v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mOmaSdDeliveryTime:I

    .line 543
    .end local v73           #timeLength:I
    :cond_679
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v13, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    move/from16 v17, v0

    if-eqz v50, :cond_6be

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :goto_697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v0, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    move/from16 v19, v0

    if-eqz v57, :cond_6c1

    const/16 v20, 0x1

    :goto_6a3
    invoke-static/range {v11 .. v20}, Lcom/sec/android/providers/downloads/SecHelpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    move-result-object v44

    .line 550
    .local v44, fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_6c4

    .line 551
    move-object/from16 v0, v44

    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mStatus:I

    .line 552
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 553
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 543
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v44           #fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_6be
    const/16 v18, 0x0

    goto :goto_697

    :cond_6c1
    const/16 v20, 0x0

    goto :goto_6a3

    .line 555
    .restart local v44       #fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    :cond_6c4
    move-object/from16 v0, v44

    iget-object v10, v0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 556
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;->mStream:Ljava/io/FileOutputStream;

    move-object/from16 v67, v0

    .line 558
    const-string v3, "_data"

    invoke-virtual {v4, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 562
    const-string v3, "title"

    move-object/from16 v0, v56

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    if-eqz v16, :cond_6ec

    .line 569
    const-string v3, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_6ec
    const/16 v34, -0x1

    .line 572
    .local v34, contentLength:I
    if-eqz v50, :cond_772

    .line 573
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 574
    const-string v3, "total_bytes"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    :cond_6fd
    :goto_6fd
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4}, Lcom/sec/android/providers/downloads/SecDownloadThread;->UpdateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_704
    .catchall {:try_start_436 .. :try_end_704} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_436 .. :try_end_704} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_436 .. :try_end_704} :catch_786

    .line 592
    .end local v29           #VaildateResult:I
    .end local v34           #contentLength:I
    .end local v44           #fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    .end local v48           #header:Lorg/apache/http/Header;
    :cond_704
    :try_start_704
    invoke-interface/range {v65 .. v65}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_70b
    .catchall {:try_start_704 .. :try_end_70b} :catchall_850
    .catch Ljava/io/IOException; {:try_start_704 .. :try_end_70b} :catch_7e4
    .catch Ljava/io/FileNotFoundException; {:try_start_704 .. :try_end_70b} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_704 .. :try_end_70b} :catch_786

    move-result-object v40

    .local v40, entityStream:Ljava/io/InputStream;
    move/from16 v9, v23

    .line 625
    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    :cond_70e
    :try_start_70e
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_715
    .catchall {:try_start_70e .. :try_end_715} :catchall_116d
    .catch Ljava/io/IOException; {:try_start_70e .. :try_end_715} :catch_89e
    .catch Ljava/io/FileNotFoundException; {:try_start_70e .. :try_end_715} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_70e .. :try_end_715} :catch_11ac

    move-result v31

    .line 672
    .local v31, bytesRead:I
    const/4 v3, -0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_9c0

    .line 673
    :try_start_71b
    const-string v3, "current_bytes"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    if-nez v50, :cond_72f

    .line 675
    const-string v3, "total_bytes"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    :cond_72f
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4}, Lcom/sec/android/providers/downloads/SecDownloadThread;->UpdateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 680
    if-eqz v50, :cond_a80

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v32

    if-eq v0, v3, :cond_a80

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-boolean v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_973

    if-nez v51, :cond_973

    .line 688
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mismatched content length for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_768
    .catchall {:try_start_71b .. :try_end_768} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_71b .. :try_end_768} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_71b .. :try_end_768} :catch_11ac

    .line 691
    const/16 v5, 0x19b

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 575
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v31           #bytesRead:I
    .end local v40           #entityStream:Ljava/io/InputStream;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v29       #VaildateResult:I
    .restart local v34       #contentLength:I
    .restart local v37       #countRetry:Z
    .restart local v44       #fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    .restart local v48       #header:Lorg/apache/http/Header;
    :cond_772
    const/4 v3, 0x1

    :try_start_773
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-eq v3, v7, :cond_6fd

    .line 576
    const-string v3, "total_bytes"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_784
    .catchall {:try_start_773 .. :try_end_784} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_773 .. :try_end_784} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_773 .. :try_end_784} :catch_786

    goto/16 :goto_6fd

    .line 789
    .end local v29           #VaildateResult:I
    .end local v30           #bytesNotified:I
    .end local v32           #bytesSoFar:I
    .end local v34           #contentLength:I
    .end local v38           #data:[B
    .end local v44           #fileInfo:Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    .end local v48           #header:Lorg/apache/http/Header;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .end local v71           #timeLastNotification:J
    :catch_786
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 790
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    .local v41, ex:Ljava/lang/RuntimeException;
    :goto_78f
    :try_start_78f
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Exception for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-static {v3, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7af
    .catchall {:try_start_78f .. :try_end_7af} :catchall_118b

    .line 791
    const/16 v5, 0x1eb

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 794
    if-eqz v75, :cond_7bd

    .line 795
    throw v75

    .line 796
    const/16 v75, 0x0

    .line 798
    :cond_7bd
    if-eqz v33, :cond_7c4

    .line 799
    invoke-virtual/range {v33 .. v33}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 800
    const/16 v33, 0x0

    .line 803
    :cond_7c4
    if-eqz v67, :cond_7c9

    .line 804
    :try_start_7c6
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c9
    .catch Ljava/io/IOException; {:try_start_7c6 .. :try_end_7c9} :catch_d42

    .line 816
    .end local v41           #ex:Ljava/lang/RuntimeException;
    :cond_7c9
    :goto_7c9
    if-eqz v10, :cond_d5f

    .line 817
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_e0a

    .line 818
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7d9
    :goto_7d9
    move-object/from16 v3, p0

    move/from16 v7, v21

    move-object/from16 v12, v16

    .line 862
    invoke-direct/range {v3 .. v12}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_231

    .line 593
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v32       #bytesSoFar:I
    .restart local v37       #countRetry:Z
    .restart local v38       #data:[B
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :catch_7e4
    move-exception v41

    .line 594
    .local v41, ex:Ljava/io/IOException;
    :try_start_7e5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_82b

    .line 595
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Get Response content Failed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Up"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_81a
    .catchall {:try_start_7e5 .. :try_end_81a} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_7e5 .. :try_end_81a} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_7e5 .. :try_end_81a} :catch_786

    move-result v3

    if-nez v3, :cond_88c

    .line 602
    const/16 v5, 0xc1

    const/4 v6, 0x1

    .line 614
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :goto_820
    :try_start_820
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_823
    .catchall {:try_start_820 .. :try_end_823} :catchall_115b
    .catch Ljava/io/FileNotFoundException; {:try_start_820 .. :try_end_823} :catch_11d4
    .catch Ljava/lang/RuntimeException; {:try_start_820 .. :try_end_823} :catch_119c

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .line 615
    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 598
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_82b
    :try_start_82b
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Get Response contentFailed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Down"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84f
    .catchall {:try_start_82b .. :try_end_84f} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_82b .. :try_end_84f} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_82b .. :try_end_84f} :catch_786

    goto :goto_813

    .line 793
    .end local v30           #bytesNotified:I
    .end local v32           #bytesSoFar:I
    .end local v38           #data:[B
    .end local v41           #ex:Ljava/io/IOException;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .end local v71           #timeLastNotification:J
    :catchall_850
    move-exception v3

    move-object v13, v3

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :goto_85a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 794
    if-eqz v75, :cond_866

    .line 795
    throw v75

    .line 796
    const/16 v75, 0x0

    .line 798
    :cond_866
    if-eqz v33, :cond_86d

    .line 799
    invoke-virtual/range {v33 .. v33}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 800
    const/16 v33, 0x0

    .line 803
    :cond_86d
    if-eqz v67, :cond_872

    .line 804
    :try_start_86f
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_872
    .catch Ljava/io/IOException; {:try_start_86f .. :try_end_872} :catch_a8d

    .line 816
    :cond_872
    :goto_872
    if-eqz v10, :cond_aaa

    .line 817
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_b58

    .line 818
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_882
    :goto_882
    move-object/from16 v3, p0

    move/from16 v7, v21

    move-object/from16 v12, v16

    .line 862
    invoke-direct/range {v3 .. v12}, Lcom/sec/android/providers/downloads/SecDownloadThread;->notifyDownloadCompleted(Landroid/content/ContentValues;IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    throw v13

    .line 603
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v32       #bytesSoFar:I
    .restart local v37       #countRetry:Z
    .restart local v38       #data:[B
    .restart local v41       #ex:Ljava/io/IOException;
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :cond_88c
    :try_start_88c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I
    :try_end_892
    .catchall {:try_start_88c .. :try_end_892} :catchall_850
    .catch Ljava/io/FileNotFoundException; {:try_start_88c .. :try_end_892} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_88c .. :try_end_892} :catch_786

    const/4 v7, 0x5

    if-ge v3, v7, :cond_899

    .line 604
    const/16 v5, 0xc1

    .line 605
    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_820

    .line 612
    .end local v6           #countRetry:Z
    .restart local v37       #countRetry:Z
    :cond_899
    const/16 v5, 0x1ef

    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_820

    .line 629
    .end local v6           #countRetry:Z
    .end local v23           #gotData:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v9       #gotData:Z
    .restart local v37       #countRetry:Z
    .restart local v40       #entityStream:Ljava/io/InputStream;
    :catch_89e
    move-exception v41

    .line 630
    .restart local v41       #ex:Ljava/io/IOException;
    :try_start_89f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_925

    .line 631
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Response Read Failed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Up"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_8cd
    const-string v3, "current_bytes"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4}, Lcom/sec/android/providers/downloads/SecDownloadThread;->UpdateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-boolean v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_953

    if-nez v51, :cond_953

    .line 647
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "download IOException for download "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "SecDownloader"

    const-string v7, "can\'t resume interrupted download with no ETag"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_918
    .catchall {:try_start_89f .. :try_end_918} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_89f .. :try_end_918} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_89f .. :try_end_918} :catch_11ac

    .line 654
    const/16 v5, 0x19c

    move/from16 v6, v37

    .line 669
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :goto_91c
    :try_start_91c
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_91f
    .catchall {:try_start_91c .. :try_end_91f} :catchall_1177
    .catch Ljava/io/FileNotFoundException; {:try_start_91c .. :try_end_91f} :catch_a79
    .catch Ljava/lang/RuntimeException; {:try_start_91c .. :try_end_91f} :catch_11b5

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .line 670
    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 634
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_925
    :try_start_925
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Response Read Failed "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Net Down"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8cd

    .line 785
    .end local v41           #ex:Ljava/io/IOException;
    :catch_94a
    move-exception v41

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_39e

    .line 655
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v41       #ex:Ljava/io/IOException;
    :cond_953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_961

    .line 656
    const/16 v5, 0xc1

    .line 657
    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_91c

    .line 658
    .end local v6           #countRetry:Z
    .restart local v37       #countRetry:Z
    :cond_961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    const/4 v7, 0x5

    if-ge v3, v7, :cond_96e

    .line 659
    const/16 v5, 0xc1

    .line 660
    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_91c

    .line 667
    .end local v6           #countRetry:Z
    .restart local v37       #countRetry:Z
    :cond_96e
    const/16 v5, 0x1ef

    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto :goto_91c

    .line 692
    .end local v6           #countRetry:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v31       #bytesRead:I
    .restart local v37       #countRetry:Z
    :cond_973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_986

    .line 693
    const/16 v5, 0xc1

    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 694
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    const/4 v7, 0x5

    if-ge v3, v7, :cond_998

    .line 695
    const/16 v5, 0xc1

    .line 696
    const/4 v6, 0x1

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 701
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_998
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "closed socket for download "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v12, v12, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b6
    .catchall {:try_start_925 .. :try_end_9b6} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_925 .. :try_end_9b6} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_925 .. :try_end_9b6} :catch_11ac

    .line 704
    const/16 v5, 0x1ef

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 706
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 714
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_9c0
    const/4 v9, 0x1

    move-object/from16 v68, v67

    .line 717
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :goto_9c3
    if-nez v68, :cond_11f7

    .line 718
    :try_start_9c5
    new-instance v67, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v67

    invoke-direct {v0, v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9cd
    .catchall {:try_start_9c5 .. :try_end_9cd} :catchall_117f
    .catch Ljava/io/IOException; {:try_start_9c5 .. :try_end_9cd} :catch_11f2
    .catch Ljava/io/FileNotFoundException; {:try_start_9c5 .. :try_end_9cd} :catch_11e4
    .catch Ljava/lang/RuntimeException; {:try_start_9c5 .. :try_end_9cd} :catch_11bc

    .line 720
    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    :goto_9cd
    const/4 v3, 0x0

    :try_start_9ce
    move-object/from16 v0, v67

    move-object/from16 v1, v38

    move/from16 v2, v31

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I
    :try_end_9dd
    .catchall {:try_start_9ce .. :try_end_9dd} :catchall_116d
    .catch Ljava/io/IOException; {:try_start_9ce .. :try_end_9dd} :catch_a43
    .catch Ljava/io/FileNotFoundException; {:try_start_9ce .. :try_end_9dd} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_9ce .. :try_end_9dd} :catch_11ac

    if-nez v3, :cond_9e4

    .line 723
    :try_start_9df
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e2
    .catchall {:try_start_9df .. :try_end_9e2} :catchall_116d
    .catch Ljava/io/IOException; {:try_start_9df .. :try_end_9e2} :catch_a27
    .catch Ljava/io/FileNotFoundException; {:try_start_9df .. :try_end_9e2} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_9df .. :try_end_9e2} :catch_11ac

    .line 724
    const/16 v67, 0x0

    .line 741
    :cond_9e4
    :goto_9e4
    add-int v32, v32, v31

    .line 742
    :try_start_9e6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v59

    .line 743
    .local v59, now:J
    sub-int v3, v32, v30

    const/16 v7, 0x1000

    if-le v3, v7, :cond_a0c

    sub-long v12, v59, v71

    const-wide/16 v17, 0x5dc

    cmp-long v3, v12, v17

    if-lez v3, :cond_a0c

    .line 746
    const-string v3, "current_bytes"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v4}, Lcom/sec/android/providers/downloads/SecDownloadThread;->UpdateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 750
    move/from16 v30, v32

    .line 751
    move-wide/from16 v71, v59

    .line 757
    :cond_a0c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    monitor-enter v7
    :try_end_a11
    .catchall {:try_start_9e6 .. :try_end_a11} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_9e6 .. :try_end_a11} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_9e6 .. :try_end_a11} :catch_11ac

    .line 758
    :try_start_a11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mControl:I
    :try_end_a17
    .catchall {:try_start_a11 .. :try_end_a17} :catchall_a74

    const/4 v12, 0x1

    if-ne v3, v12, :cond_a5f

    .line 763
    const/16 v5, 0xc1

    .line 764
    const/4 v6, 0x1

    .line 765
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :try_start_a1d
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 766
    monitor-exit v7
    :try_end_a21
    .catchall {:try_start_a1d .. :try_end_a21} :catchall_11ef

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_200

    .line 725
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v59           #now:J
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catch_a27
    move-exception v41

    .line 726
    .restart local v41       #ex:Ljava/io/IOException;
    :try_start_a28
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file during download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a42
    .catchall {:try_start_a28 .. :try_end_a42} :catchall_116d
    .catch Ljava/io/IOException; {:try_start_a28 .. :try_end_a42} :catch_a43
    .catch Ljava/io/FileNotFoundException; {:try_start_a28 .. :try_end_a42} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_a28 .. :try_end_a42} :catch_11ac

    goto :goto_9e4

    .line 733
    .end local v41           #ex:Ljava/io/IOException;
    :catch_a43
    move-exception v41

    .line 734
    .restart local v41       #ex:Ljava/io/IOException;
    :goto_a44
    :try_start_a44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    const-wide/32 v12, 0x19000

    invoke-static {v3, v12, v13}, Lcom/sec/android/providers/downloads/SecHelpers;->discardPurgeableFiles(Landroid/content/Context;J)Z
    :try_end_a4e
    .catchall {:try_start_a44 .. :try_end_a4e} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_a44 .. :try_end_a4e} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_a44 .. :try_end_a4e} :catch_11ac

    move-result v3

    if-nez v3, :cond_a5b

    .line 736
    const/16 v5, 0x1ec

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 737
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :cond_a5b
    move-object/from16 v68, v67

    .line 739
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_9c3

    .line 768
    .end local v41           #ex:Ljava/io/IOException;
    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v59       #now:J
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    :cond_a5f
    :try_start_a5f
    monitor-exit v7
    :try_end_a60
    .catchall {:try_start_a5f .. :try_end_a60} :catchall_a74

    .line 769
    :try_start_a60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I
    :try_end_a66
    .catchall {:try_start_a60 .. :try_end_a66} :catchall_116d
    .catch Ljava/io/FileNotFoundException; {:try_start_a60 .. :try_end_a66} :catch_94a
    .catch Ljava/lang/RuntimeException; {:try_start_a60 .. :try_end_a66} :catch_11ac

    const/16 v7, 0x1ea

    if-ne v3, v7, :cond_70e

    .line 773
    const/16 v5, 0x1ea

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 774
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 768
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catchall_a74
    move-exception v3

    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    :goto_a77
    :try_start_a77
    monitor-exit v7
    :try_end_a78
    .catchall {:try_start_a77 .. :try_end_a78} :catchall_11ef

    :try_start_a78
    throw v3
    :try_end_a79
    .catchall {:try_start_a78 .. :try_end_a79} :catchall_1177
    .catch Ljava/io/FileNotFoundException; {:try_start_a78 .. :try_end_a79} :catch_a79
    .catch Ljava/lang/RuntimeException; {:try_start_a78 .. :try_end_a79} :catch_11b5

    .line 785
    .end local v31           #bytesRead:I
    .end local v59           #now:J
    :catch_a79
    move-exception v41

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_39e

    .line 781
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v31       #bytesRead:I
    .restart local v37       #countRetry:Z
    :cond_a80
    const/16 v5, 0xc9

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .line 783
    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_200

    .line 174
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v31           #bytesRead:I
    .end local v40           #entityStream:Ljava/io/InputStream;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    :catch_a8a
    move-exception v3

    goto/16 :goto_d5

    .line 806
    .end local v22           #redirectCount:I
    .end local v23           #gotData:Z
    .end local v25           #newUri:Ljava/lang/String;
    .end local v30           #bytesNotified:I
    .end local v32           #bytesSoFar:I
    .end local v37           #countRetry:Z
    .end local v38           #data:[B
    .end local v71           #timeLastNotification:J
    .restart local v6       #countRetry:Z
    .restart local v8       #redirectCount:I
    .restart local v9       #gotData:Z
    .restart local v11       #newUri:Ljava/lang/String;
    :catch_a8d
    move-exception v41

    .line 807
    .restart local v41       #ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_872

    .line 835
    .end local v41           #ex:Ljava/io/IOException;
    :cond_aaa
    if-eqz v27, :cond_ab0

    const/16 v3, 0x1f1

    if-ne v5, v3, :cond_882

    .line 837
    :cond_ab0
    :try_start_ab0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v7, v12, v0, v1}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v70

    .line 840
    .local v70, tempname:Ljava/lang/String;
    const/16 v42, 0x0

    .line 841
    .local v42, extension:Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 842
    .local v39, dotIndex:I
    if-lez v39, :cond_ae1

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 844
    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    .line 846
    :cond_ae1
    if-nez v42, :cond_af0

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v3, v7, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 850
    :cond_af0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v3, v7}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 851
    .local v28, TempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Created: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b37
    .catch Ljava/lang/Exception; {:try_start_ab0 .. :try_end_b37} :catch_b39

    goto/16 :goto_882

    .line 853
    .end local v28           #TempFilePath:Ljava/lang/String;
    .end local v39           #dotIndex:I
    .end local v42           #extension:Ljava/lang/String;
    .end local v70           #tempname:Ljava/lang/String;
    :catch_b39
    move-exception v41

    .line 854
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Creation failed - Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v5, 0x1eb

    goto/16 :goto_882

    .line 819
    .end local v41           #ex:Ljava/lang/Exception;
    :cond_b58
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_882

    .line 820
    const/16 v3, 0x1a4

    const/4 v7, -0x1

    const/4 v12, -0x1

    invoke-static {v10, v3, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :try_start_b65
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_b72
    .catch Ljava/io/FileNotFoundException; {:try_start_b65 .. :try_end_b72} :catch_b74
    .catch Ljava/io/SyncFailedException; {:try_start_b65 .. :try_end_b72} :catch_b9b
    .catch Ljava/io/IOException; {:try_start_b65 .. :try_end_b72} :catch_bc2

    goto/16 :goto_882

    .line 823
    :catch_b74
    move-exception v41

    .line 824
    .local v41, ex:Ljava/io/FileNotFoundException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " not found: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_882

    .line 826
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :catch_b9b
    move-exception v41

    .line 827
    .local v41, ex:Ljava/io/SyncFailedException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " sync failed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_882

    .line 829
    .end local v41           #ex:Ljava/io/SyncFailedException;
    :catch_bc2
    move-exception v41

    .line 830
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : IOException trying to sync "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_882

    .line 806
    .local v41, ex:Ljava/io/FileNotFoundException;
    :catch_be9
    move-exception v41

    .line 807
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3dc

    .line 835
    .end local v41           #ex:Ljava/io/IOException;
    :cond_c06
    if-eqz v27, :cond_c0c

    const/16 v3, 0x1f1

    if-ne v5, v3, :cond_228

    .line 837
    :cond_c0c
    :try_start_c0c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v7, v12, v13, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v70

    .line 840
    .restart local v70       #tempname:Ljava/lang/String;
    const/16 v42, 0x0

    .line 841
    .restart local v42       #extension:Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 842
    .restart local v39       #dotIndex:I
    if-lez v39, :cond_c3a

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 844
    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    .line 846
    :cond_c3a
    if-nez v42, :cond_c49

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v3, v7, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 850
    :cond_c49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v3, v7}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 851
    .restart local v28       #TempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Created: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c90
    .catch Ljava/lang/Exception; {:try_start_c0c .. :try_end_c90} :catch_c92

    goto/16 :goto_228

    .line 853
    .end local v28           #TempFilePath:Ljava/lang/String;
    .end local v39           #dotIndex:I
    .end local v42           #extension:Ljava/lang/String;
    .end local v70           #tempname:Ljava/lang/String;
    :catch_c92
    move-exception v41

    .line 854
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Creation failed - Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v5, 0x1eb

    goto/16 :goto_228

    .line 819
    .end local v41           #ex:Ljava/lang/Exception;
    :cond_cb1
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 820
    const/16 v3, 0x1a4

    const/4 v7, -0x1

    const/4 v12, -0x1

    invoke-static {v10, v3, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :try_start_cbe
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_ccb
    .catch Ljava/io/FileNotFoundException; {:try_start_cbe .. :try_end_ccb} :catch_ccd
    .catch Ljava/io/SyncFailedException; {:try_start_cbe .. :try_end_ccb} :catch_cf4
    .catch Ljava/io/IOException; {:try_start_cbe .. :try_end_ccb} :catch_d1b

    goto/16 :goto_228

    .line 823
    :catch_ccd
    move-exception v41

    .line 824
    .local v41, ex:Ljava/io/FileNotFoundException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " not found: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 826
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :catch_cf4
    move-exception v41

    .line 827
    .local v41, ex:Ljava/io/SyncFailedException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " sync failed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 829
    .end local v41           #ex:Ljava/io/SyncFailedException;
    :catch_d1b
    move-exception v41

    .line 830
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : IOException trying to sync "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 806
    .local v41, ex:Ljava/lang/RuntimeException;
    :catch_d42
    move-exception v41

    .line 807
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c9

    .line 835
    .end local v41           #ex:Ljava/io/IOException;
    :cond_d5f
    if-eqz v27, :cond_d65

    const/16 v3, 0x1f1

    if-ne v5, v3, :cond_7d9

    .line 837
    :cond_d65
    :try_start_d65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v7, v12, v13, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v70

    .line 840
    .restart local v70       #tempname:Ljava/lang/String;
    const/16 v42, 0x0

    .line 841
    .restart local v42       #extension:Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 842
    .restart local v39       #dotIndex:I
    if-lez v39, :cond_d93

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 844
    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    .line 846
    :cond_d93
    if-nez v42, :cond_da2

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v3, v7, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 850
    :cond_da2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v3, v7}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 851
    .restart local v28       #TempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Created: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de9
    .catch Ljava/lang/Exception; {:try_start_d65 .. :try_end_de9} :catch_deb

    goto/16 :goto_7d9

    .line 853
    .end local v28           #TempFilePath:Ljava/lang/String;
    .end local v39           #dotIndex:I
    .end local v42           #extension:Ljava/lang/String;
    .end local v70           #tempname:Ljava/lang/String;
    :catch_deb
    move-exception v41

    .line 854
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Creation failed - Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v5, 0x1eb

    goto/16 :goto_7d9

    .line 819
    .end local v41           #ex:Ljava/lang/Exception;
    :cond_e0a
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_7d9

    .line 820
    const/16 v3, 0x1a4

    const/4 v7, -0x1

    const/4 v12, -0x1

    invoke-static {v10, v3, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :try_start_e17
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e24
    .catch Ljava/io/FileNotFoundException; {:try_start_e17 .. :try_end_e24} :catch_e26
    .catch Ljava/io/SyncFailedException; {:try_start_e17 .. :try_end_e24} :catch_e4d
    .catch Ljava/io/IOException; {:try_start_e17 .. :try_end_e24} :catch_e74

    goto/16 :goto_7d9

    .line 823
    :catch_e26
    move-exception v41

    .line 824
    .local v41, ex:Ljava/io/FileNotFoundException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " not found: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d9

    .line 826
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :catch_e4d
    move-exception v41

    .line 827
    .local v41, ex:Ljava/io/SyncFailedException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " sync failed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d9

    .line 829
    .end local v41           #ex:Ljava/io/SyncFailedException;
    :catch_e74
    move-exception v41

    .line 830
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : IOException trying to sync "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d9

    .line 806
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v30       #bytesNotified:I
    .restart local v32       #bytesSoFar:I
    .restart local v38       #data:[B
    .restart local v55       #isProxySet:Z
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v71       #timeLastNotification:J
    :catch_e9b
    move-exception v41

    .line 807
    .restart local v41       #ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_218

    .line 835
    .end local v41           #ex:Ljava/io/IOException;
    :cond_eb8
    if-eqz v27, :cond_ebe

    const/16 v3, 0x1f1

    if-ne v5, v3, :cond_228

    .line 837
    :cond_ebe
    :try_start_ebe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v7, v12, v13, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v70

    .line 840
    .restart local v70       #tempname:Ljava/lang/String;
    const/16 v42, 0x0

    .line 841
    .restart local v42       #extension:Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 842
    .restart local v39       #dotIndex:I
    if-lez v39, :cond_eec

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 844
    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    .line 846
    :cond_eec
    if-nez v42, :cond_efb

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v3, v7, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 850
    :cond_efb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v3, v7}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 851
    .restart local v28       #TempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Created: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f42
    .catch Ljava/lang/Exception; {:try_start_ebe .. :try_end_f42} :catch_f44

    goto/16 :goto_228

    .line 853
    .end local v28           #TempFilePath:Ljava/lang/String;
    .end local v39           #dotIndex:I
    .end local v42           #extension:Ljava/lang/String;
    .end local v70           #tempname:Ljava/lang/String;
    :catch_f44
    move-exception v41

    .line 854
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Creation failed - Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v5, 0x1eb

    goto/16 :goto_228

    .line 819
    .end local v41           #ex:Ljava/lang/Exception;
    :cond_f63
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 820
    const/16 v3, 0x1a4

    const/4 v7, -0x1

    const/4 v12, -0x1

    invoke-static {v10, v3, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :try_start_f70
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_f7d
    .catch Ljava/io/FileNotFoundException; {:try_start_f70 .. :try_end_f7d} :catch_f7f
    .catch Ljava/io/SyncFailedException; {:try_start_f70 .. :try_end_f7d} :catch_fa6
    .catch Ljava/io/IOException; {:try_start_f70 .. :try_end_f7d} :catch_fcd

    goto/16 :goto_228

    .line 823
    :catch_f7f
    move-exception v41

    .line 824
    .local v41, ex:Ljava/io/FileNotFoundException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " not found: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 826
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :catch_fa6
    move-exception v41

    .line 827
    .local v41, ex:Ljava/io/SyncFailedException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " sync failed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 829
    .end local v41           #ex:Ljava/io/SyncFailedException;
    :catch_fcd
    move-exception v41

    .line 830
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : IOException trying to sync "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    .line 806
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v30           #bytesNotified:I
    .end local v41           #ex:Ljava/io/IOException;
    .end local v55           #isProxySet:Z
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v71           #timeLastNotification:J
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v43       #f:Ljava/io/File;
    .restart local v45       #fileLength:J
    :catch_ff4
    move-exception v41

    .line 807
    .restart local v41       #ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_272

    .line 835
    .end local v41           #ex:Ljava/io/IOException;
    :cond_1011
    if-eqz v27, :cond_1017

    const/16 v3, 0x1f1

    if-ne v5, v3, :cond_282

    .line 837
    :cond_1017
    :try_start_1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v7, v12, v13, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v70

    .line 840
    .restart local v70       #tempname:Ljava/lang/String;
    const/16 v42, 0x0

    .line 841
    .restart local v42       #extension:Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 842
    .restart local v39       #dotIndex:I
    if-lez v39, :cond_1045

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 844
    move-object/from16 v0, v70

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    .line 846
    :cond_1045
    if-nez v42, :cond_1054

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v3, v7, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 850
    :cond_1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/providers/downloads/SecDownloadThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v7, v7, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    invoke-static {v3, v7}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 851
    .restart local v28       #TempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Created: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109b
    .catch Ljava/lang/Exception; {:try_start_1017 .. :try_end_109b} :catch_109d

    goto/16 :goto_282

    .line 853
    .end local v28           #TempFilePath:Ljava/lang/String;
    .end local v39           #dotIndex:I
    .end local v42           #extension:Ljava/lang/String;
    .end local v70           #tempname:Ljava/lang/String;
    :catch_109d
    move-exception v41

    .line 854
    .local v41, ex:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : Filename Creation failed - Exception: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v5, 0x1eb

    goto/16 :goto_282

    .line 819
    .end local v41           #ex:Ljava/lang/Exception;
    :cond_10bc
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_282

    .line 820
    const/16 v3, 0x1a4

    const/4 v7, -0x1

    const/4 v12, -0x1

    invoke-static {v10, v3, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 822
    :try_start_10c9
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10d6
    .catch Ljava/io/FileNotFoundException; {:try_start_10c9 .. :try_end_10d6} :catch_10d8
    .catch Ljava/io/SyncFailedException; {:try_start_10c9 .. :try_end_10d6} :catch_10ff
    .catch Ljava/io/IOException; {:try_start_10c9 .. :try_end_10d6} :catch_1126

    goto/16 :goto_282

    .line 823
    :catch_10d8
    move-exception v41

    .line 824
    .local v41, ex:Ljava/io/FileNotFoundException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " not found: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_282

    .line 826
    .end local v41           #ex:Ljava/io/FileNotFoundException;
    :catch_10ff
    move-exception v41

    .line 827
    .local v41, ex:Ljava/io/SyncFailedException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : file "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " sync failed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_282

    .line 829
    .end local v41           #ex:Ljava/io/SyncFailedException;
    :catch_1126
    move-exception v41

    .line 830
    .local v41, ex:Ljava/io/IOException;
    const-string v3, "SecDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecDownloadThread : run : IOException trying to sync "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_282

    .line 793
    .end local v41           #ex:Ljava/io/IOException;
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catchall_114d
    move-exception v3

    move-object v13, v3

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_85a

    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v43           #f:Ljava/io/File;
    .end local v45           #fileLength:J
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v41       #ex:Ljava/io/IOException;
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :catchall_115b
    move-exception v3

    move-object v13, v3

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_85a

    .end local v6           #countRetry:Z
    .end local v9           #gotData:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v23       #gotData:Z
    .restart local v37       #countRetry:Z
    .restart local v48       #header:Lorg/apache/http/Header;
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    :catchall_1165
    move-exception v3

    move-object v13, v3

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_85a

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v48           #header:Lorg/apache/http/Header;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v40       #entityStream:Ljava/io/InputStream;
    :catchall_116d
    move-exception v3

    move-object v13, v3

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_85a

    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :catchall_1177
    move-exception v3

    move-object v13, v3

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_85a

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v31       #bytesRead:I
    .restart local v37       #countRetry:Z
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catchall_117f
    move-exception v3

    move-object v13, v3

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_85a

    .end local v30           #bytesNotified:I
    .end local v31           #bytesRead:I
    .end local v32           #bytesSoFar:I
    .end local v38           #data:[B
    .end local v40           #entityStream:Ljava/io/InputStream;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .end local v71           #timeLastNotification:J
    :catchall_118b
    move-exception v3

    move-object v13, v3

    goto/16 :goto_85a

    .line 789
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v32       #bytesSoFar:I
    .restart local v37       #countRetry:Z
    .restart local v38       #data:[B
    .restart local v43       #f:Ljava/io/File;
    .restart local v45       #fileLength:J
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catch_118f
    move-exception v41

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_78f

    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v43           #f:Ljava/io/File;
    .end local v45           #fileLength:J
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v41       #ex:Ljava/io/IOException;
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :catch_119c
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_78f

    .end local v6           #countRetry:Z
    .end local v9           #gotData:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v23       #gotData:Z
    .restart local v37       #countRetry:Z
    .restart local v48       #header:Lorg/apache/http/Header;
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    :catch_11a5
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_78f

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v48           #header:Lorg/apache/http/Header;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v40       #entityStream:Ljava/io/InputStream;
    :catch_11ac
    move-exception v41

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_78f

    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :catch_11b5
    move-exception v41

    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_78f

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v31       #bytesRead:I
    .restart local v37       #countRetry:Z
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catch_11bc
    move-exception v41

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_78f

    .line 785
    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v30           #bytesNotified:I
    .end local v31           #bytesRead:I
    .end local v40           #entityStream:Ljava/io/InputStream;
    .end local v54           #hostUrl:Ljava/net/URI;
    .end local v55           #isProxySet:Z
    .end local v61           #params:Lorg/apache/http/params/HttpParams;
    .end local v62           #proxyHost:Ljava/lang/String;
    .end local v63           #proxyPort:I
    .end local v64           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v65           #response:Lorg/apache/http/HttpResponse;
    .end local v66           #statusCode:I
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .end local v69           #target:Lorg/apache/http/HttpHost;
    .end local v71           #timeLastNotification:J
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v37       #countRetry:Z
    .restart local v43       #f:Ljava/io/File;
    .restart local v45       #fileLength:J
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catch_11c7
    move-exception v41

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_39e

    .end local v8           #redirectCount:I
    .end local v9           #gotData:Z
    .end local v11           #newUri:Ljava/lang/String;
    .end local v43           #f:Ljava/io/File;
    .end local v45           #fileLength:J
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v30       #bytesNotified:I
    .restart local v41       #ex:Ljava/io/IOException;
    .restart local v54       #hostUrl:Ljava/net/URI;
    .restart local v55       #isProxySet:Z
    .restart local v61       #params:Lorg/apache/http/params/HttpParams;
    .restart local v62       #proxyHost:Ljava/lang/String;
    .restart local v63       #proxyPort:I
    .restart local v64       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v69       #target:Lorg/apache/http/HttpHost;
    .restart local v71       #timeLastNotification:J
    :catch_11d4
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    goto/16 :goto_39e

    .end local v6           #countRetry:Z
    .end local v9           #gotData:Z
    .end local v41           #ex:Ljava/io/IOException;
    .restart local v23       #gotData:Z
    .restart local v37       #countRetry:Z
    .restart local v48       #header:Lorg/apache/http/Header;
    .restart local v65       #response:Lorg/apache/http/HttpResponse;
    .restart local v66       #statusCode:I
    :catch_11dd
    move-exception v41

    move/from16 v9, v23

    .end local v23           #gotData:Z
    .restart local v9       #gotData:Z
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_39e

    .end local v6           #countRetry:Z
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .end local v48           #header:Lorg/apache/http/Header;
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v31       #bytesRead:I
    .restart local v37       #countRetry:Z
    .restart local v40       #entityStream:Ljava/io/InputStream;
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catch_11e4
    move-exception v41

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v11, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v11       #newUri:Ljava/lang/String;
    move/from16 v8, v22

    .end local v22           #redirectCount:I
    .restart local v8       #redirectCount:I
    move/from16 v6, v37

    .end local v37           #countRetry:Z
    .restart local v6       #countRetry:Z
    goto/16 :goto_39e

    .line 768
    .end local v8           #redirectCount:I
    .end local v11           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v59       #now:J
    :catchall_11ef
    move-exception v3

    goto/16 :goto_a77

    .line 733
    .end local v6           #countRetry:Z
    .end local v59           #now:J
    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #countRetry:Z
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :catch_11f2
    move-exception v41

    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_a44

    .end local v67           #stream:Ljava/io/FileOutputStream;
    .restart local v68       #stream:Ljava/io/FileOutputStream;
    :cond_11f7
    move-object/from16 v67, v68

    .end local v68           #stream:Ljava/io/FileOutputStream;
    .restart local v67       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_9cd
.end method
