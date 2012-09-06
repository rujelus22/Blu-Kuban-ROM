.class public Lcom/google/android/play/analytics/EventLogger;
.super Lcom/google/android/play/utils/LoggableHandler;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/EventLogger$LogSource;
    }
.end annotation


# static fields
.field protected static final LOG_FILE_DIRECTORY:Ljava/lang/String; = "logs"


# instance fields
.field private final mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDelayBetweenUploadsMs:J

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private volatile mIsLoggingEnabled:Z

.field private final mLogSource:I

.field private volatile mNextAllowedUploadTime:J

.field private volatile mOutputStream:Ljava/io/OutputStream;

.field private volatile mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private final mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

.field private volatile mUploadAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;)V
    .registers 19
    .parameter "context"
    .parameter "loggingId"
    .parameter "uploadAccount"
    .parameter "logSource"
    .parameter "useragent"

    .prologue
    .line 141
    const-string v1, "PlayEventLogger"

    invoke-direct {p0, v1}, Lcom/google/android/play/utils/LoggableHandler;-><init>(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 113
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/play/analytics/EventLogger$LogSource;->getProtoValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    .line 144
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/google/android/play/analytics/EventLogger;->setUploadAccount(Landroid/accounts/Account;)V

    .line 146
    if-nez p5, :cond_27

    .line 147
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/play/utils/PlayUtils;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 149
    :cond_27
    new-instance v1, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 153
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 154
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setSdkVersion(I)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 155
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 156
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setOsBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 157
    if-eqz p2, :cond_5a

    .line 158
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-virtual {v1, p2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 161
    :cond_5a
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    const-string v2, "android_id"

    const-wide/16 v7, 0x0

    invoke-static {v12, v2, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setAndroidId(J)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 162
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->setProduct(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    .line 164
    const-string v1, "playlog_enabled_sources"

    invoke-static {v12, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, enabledSources:Ljava/lang/String;
    if-eqz v9, :cond_88

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/play/analytics/EventLogger$LogSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 168
    :cond_88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    .line 171
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getDelayBetweenUploads()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    .line 173
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getRecommendedLogFileSize()J

    move-result-wide v5

    .line 175
    .local v5, logFileSize:J
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getMaxStoreSize()J

    move-result-wide v10

    .line 176
    .local v10, maxStoreSize:J
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getNumberOfFiles()J

    move-result-wide v1

    long-to-int v4, v1

    .line 180
    .local v4, numOfFiles:I
    new-instance v1, Lcom/google/android/play/analytics/RollingFileStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v7, "logs"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getStoreFilenamePrefix()Ljava/lang/String;

    move-result-object v3

    int-to-long v7, v4

    div-long v7, v10, v7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/play/analytics/RollingFileStream;-><init>(Ljava/io/File;Ljava/lang/String;IJJ)V

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method

.method private addEventImpl(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 350
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-nez v2, :cond_5

    .line 370
    :goto_4
    return-void

    .line 356
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 362
    .local v1, event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    :try_start_9
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessageNoTag(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 363
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 364
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->checkIfShouldUpload()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_45
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_1a

    .line 368
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    goto :goto_4

    .line 365
    :catch_1a
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/IOException;
    :try_start_1b
    const-string v2, "PlayEventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write string ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_1b .. :try_end_41} :catchall_45

    .line 368
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    :catchall_45
    move-exception v2

    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    throw v2
.end method

.method private checkIfShouldUpload()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v0}, Lcom/google/android/play/analytics/RollingFileStream;->hasFileReadyToSend()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 299
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    .line 301
    :cond_d
    return-void
.end method

.method private getGservicesValue(Ljava/lang/String;JJ)J
    .registers 9
    .parameter "key"
    .parameter "defaultValue"
    .parameter "minValue"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 227
    .local v0, value:J
    cmp-long v2, v0, p4

    if-gtz v2, :cond_f

    .line 228
    move-wide v0, p2

    .line 230
    :cond_f
    return-wide v0
.end method

.method private loadFileImpl(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v1, :cond_5

    .line 347
    :goto_4
    return-void

    .line 338
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v1}, Lcom/google/android/play/analytics/RollingFileStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 339
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_4

    .line 344
    :catch_16
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PlayEventLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private queueUpload(J)V
    .registers 13
    .parameter "delay"

    .prologue
    const/4 v8, 0x3

    const-wide/16 v4, 0x0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, p1, v4

    if-lez v2, :cond_40

    move-wide v2, p1

    :goto_c
    add-long v0, v6, v2

    .line 278
    .local v0, scheduledUpload:J
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1c

    .line 279
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p1, v2, v6

    .line 281
    :cond_1c
    cmp-long v2, p1, v4

    if-lez v2, :cond_42

    .line 282
    invoke-virtual {p0, v8, p1, p2}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    :goto_23
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "play_event_logging_min_delay"

    const-wide/32 v8, 0xea60

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    .line 295
    return-void

    .end local v0           #scheduledUpload:J
    :cond_40
    move-wide v2, v4

    .line 277
    goto :goto_c

    .line 284
    .restart local v0       #scheduledUpload:J
    :cond_42
    invoke-virtual {p0, v8}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessage(I)Z

    goto :goto_23
.end method

.method private uploadEventsImpl()V
    .registers 13

    .prologue
    .line 373
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-nez v8, :cond_5

    .line 440
    :cond_4
    :goto_4
    return-void

    .line 380
    :cond_5
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mUploadAccount:Landroid/accounts/Account;

    .line 382
    .local v7, uploadAccount:Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 383
    .local v4, fileInputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 386
    .local v0, canDeleteLog:Z
    if-nez v7, :cond_38

    .line 387
    :try_start_b
    const-string v8, "PlayEventLogger"

    const-string v9, "No account available for uploading logs.  Skipping upload"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_115

    .line 432
    if-eqz v4, :cond_4

    .line 434
    :try_start_14
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8, v4, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 435
    :catch_1a
    move-exception v2

    .line 436
    .local v2, e:Ljava/io/IOException;
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 391
    .end local v2           #e:Ljava/io/IOException;
    :cond_38
    :try_start_38
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8}, Lcom/google/android/play/analytics/RollingFileStream;->hasFileReadyToSend()Z
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_115

    move-result v8

    if-nez v8, :cond_66

    .line 432
    if-eqz v4, :cond_4

    .line 434
    :try_start_42
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8, v4, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_4

    .line 435
    :catch_48
    move-exception v2

    .line 436
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 402
    .end local v2           #e:Ljava/io/IOException;
    :cond_66
    :try_start_66
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;-><init>()V

    .line 403
    .local v1, clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-virtual {v1, v8}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->setAndroidClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    .line 404
    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;-><init>()V

    .line 405
    .local v5, logRequest:Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    invoke-virtual {v5, v1}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->setClientInfo(Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    .line 406
    iget v8, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    invoke-virtual {v5, v8}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->setLogSource(I)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_115

    .line 414
    :try_start_7d
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8}, Lcom/google/android/play/analytics/RollingFileStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 415
    invoke-static {v4}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v6

    .line 417
    .local v6, protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :goto_87
    invoke-virtual {v6}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->isAtEnd()Z

    move-result v8

    if-nez v8, :cond_e1

    .line 418
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainEvent()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    move-result-object v3

    .line 419
    .local v3, event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    invoke-virtual {v6, v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 420
    invoke-virtual {v5, v3}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->addLogEvent(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_110
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_97} :catch_98

    goto :goto_87

    .line 423
    .end local v3           #event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .end local v6           #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :catch_98
    move-exception v2

    .line 424
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_99
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_110

    .line 425
    const/4 v0, 0x1

    .line 428
    :try_start_b6
    invoke-static {v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_115

    .line 432
    if-eqz v4, :cond_4

    .line 434
    :try_start_bb
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8, v4, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c0} :catch_c2

    goto/16 :goto_4

    .line 435
    :catch_c2
    move-exception v2

    .line 436
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 422
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :cond_e1
    :try_start_e1
    invoke-virtual {p0, v7, v5}, Lcom/google/android/play/analytics/EventLogger;->uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)Z
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_110
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_98

    move-result v0

    .line 428
    :try_start_e5
    invoke-static {v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_115

    .line 432
    if-eqz v4, :cond_4

    .line 434
    :try_start_ea
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8, v4, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ef} :catch_f1

    goto/16 :goto_4

    .line 435
    :catch_f1
    move-exception v2

    .line 436
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 428
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :catchall_110
    move-exception v8

    :try_start_111
    invoke-static {v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V

    throw v8
    :try_end_115
    .catchall {:try_start_111 .. :try_end_115} :catchall_115

    .line 432
    .end local v1           #clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .end local v5           #logRequest:Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    :catchall_115
    move-exception v8

    if-eqz v4, :cond_11d

    .line 434
    :try_start_118
    iget-object v9, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v9, v4, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11d} :catch_11e

    .line 437
    :cond_11d
    :goto_11d
    throw v8

    .line 435
    :catch_11e
    move-exception v2

    .line 436
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "PlayEventLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error closing input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11d
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 327
    :goto_4
    return-void

    .line 308
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 325
    const-string v0, "PlayEventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 310
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->loadFileImpl(Landroid/os/Message;)V

    .line 311
    iget-wide v0, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    goto :goto_4

    .line 314
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->addEventImpl(Landroid/os/Message;)V

    goto :goto_4

    .line 317
    :pswitch_32
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/play/analytics/EventLogger;->removeMessages(I)V

    .line 318
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->uploadEventsImpl()V

    .line 319
    iget-wide v0, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    .line 322
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->checkIfShouldUpload()V

    goto :goto_4

    .line 308
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method protected getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 490
    if-nez p1, :cond_b

    .line 491
    const-string v3, "PlayEventLogger"

    const-string v4, "No account for auth token provided"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_a
    return-object v0

    .line 495
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 496
    .local v2, manager:Landroid/accounts/AccountManager;
    const-string v3, "androidmarket"

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_17
    .catch Landroid/accounts/OperationCanceledException; {:try_start_b .. :try_end_17} :catch_19
    .catch Landroid/accounts/AuthenticatorException; {:try_start_b .. :try_end_17} :catch_24
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_2f

    move-result-object v0

    .line 498
    .local v0, authToken:Ljava/lang/String;
    goto :goto_a

    .line 499
    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #manager:Landroid/accounts/AccountManager;
    :catch_19
    move-exception v1

    .line 500
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 501
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_24
    move-exception v1

    .line 502
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 503
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2f
    move-exception v1

    .line 504
    .local v1, e:Ljava/io/IOException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method protected getDelayBetweenUploads()J
    .registers 7

    .prologue
    .line 193
    const-string v1, "play_event_logging_message_size"

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getMaxStoreSize()J
    .registers 7

    .prologue
    .line 205
    const-string v1, "play_event_logging_max_buffer_size"

    const-wide/32 v2, 0x200000

    const-wide/16 v4, 0x400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNumberOfFiles()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x2

    .line 188
    const-string v1, "play_event_logging_numfiles"

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getRecommendedLogFileSize()J
    .registers 7

    .prologue
    .line 199
    const-string v1, "play_event_logging_message_size"

    const-wide/32 v2, 0xc800

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStoreFilenamePrefix()Ljava/lang/String;
    .registers 5

    .prologue
    .line 213
    invoke-static {}, Lcom/google/android/play/utils/PlayUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, processName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eventlog.store"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, fileName:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2b

    .line 216
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, colonIndex:I
    if-lez v0, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_2b

    .line 218
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v0           #colonIndex:I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "tag"
    .parameter "extras"

    .prologue
    .line 250
    iget-boolean v3, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v3, :cond_5

    .line 274
    :goto_4
    return-void

    .line 258
    :cond_5
    if-eqz p2, :cond_29

    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_29

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras must be in the format <key>, <value>, <key>, <value>...  incorrect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_29
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainEvent()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    move-result-object v0

    .line 263
    .local v0, event:Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->setEventTimeMs(J)Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 264
    invoke-virtual {v0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->setTag(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 265
    if-eqz p2, :cond_5b

    .line 266
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    array-length v3, p2

    if-ge v1, v3, :cond_5b

    .line 267
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainKeyValue()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    move-result-object v2

    .line 268
    .local v2, keyValue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->setKey(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    .line 269
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->setValue(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    .line 270
    invoke-virtual {v0, v2}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->addValue(Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;)Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    .line 266
    add-int/lit8 v1, v1, 0x2

    goto :goto_3a

    .line 273
    .end local v1           #i:I
    .end local v2           #keyValue:Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;
    :cond_5b
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/google/android/play/analytics/EventLogger;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/play/analytics/EventLogger;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public setUploadAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger;->mUploadAccount:Landroid/accounts/Account;

    .line 241
    return-void
.end method

.method protected uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)Z
    .registers 16
    .parameter "uploadAccount"
    .parameter "logRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, canDeleteLog:Z
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, authToken:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://android.clients.google.com/play/log"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 447
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GoogleLogin auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p2}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 449
    iget-object v10, p0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v10, v4}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 450
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 451
    .local v9, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 452
    .local v8, statusCode:I
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_44

    .line 456
    const/4 v1, 0x1

    .line 484
    :goto_43
    return v1

    .line 457
    :cond_44
    const/16 v10, 0x1f7

    if-ne v8, v10, :cond_ac

    const-string v10, "Retry-After"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_ac

    .line 460
    :try_start_50
    const-string v10, "Retry-After"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 462
    .local v6, retryAfterInSeconds:J
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Server said to retry after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_87} :catch_88

    goto :goto_43

    .line 466
    .end local v6           #retryAfterInSeconds:J
    :catch_88
    move-exception v3

    .line 467
    .local v3, ne:Ljava/lang/NumberFormatException;
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown retry value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Retry-After"

    invoke-interface {v5, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 470
    .end local v3           #ne:Ljava/lang/NumberFormatException;
    :cond_ac
    const/16 v10, 0x190

    if-ne v8, v10, :cond_b9

    .line 471
    const-string v10, "PlayEventLogger"

    const-string v11, "Server returned 400... deleting local malformed logs"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x1

    goto :goto_43

    .line 473
    :cond_b9
    const/16 v10, 0x191

    if-ne v8, v10, :cond_d2

    .line 474
    const-string v10, "PlayEventLogger"

    const-string v11, "Server returned 401... invalidating auth token"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v10, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 476
    .local v2, manager:Landroid/accounts/AccountManager;
    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x0

    .line 478
    goto/16 :goto_43

    .line 479
    .end local v2           #manager:Landroid/accounts/AccountManager;
    :cond_d2
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error received from server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43
.end method
