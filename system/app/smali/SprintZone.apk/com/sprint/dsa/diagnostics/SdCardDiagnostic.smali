.class public Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "SdCardDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "sdcard"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAvailable:Z

.field private mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

.field private mReadable:Z

.field private mTotalSpace:J

.field private mUsedSpace:J

.field private mWriteable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    const-string v0, "sdcard"

    invoke-direct {p0, p1, v0, v1}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 20
    iput-wide v2, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTotalSpace:J

    .line 21
    iput-wide v2, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mUsedSpace:J

    .line 22
    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 6
    .parameter "context"
    .parameter "stub"

    .prologue
    const-wide/16 v1, 0x0

    .line 29
    const-string v0, "sdcard"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 20
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTotalSpace:J

    .line 21
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mUsedSpace:J

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    .line 30
    return-void
.end method


# virtual methods
.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x6

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 104
    const-string v1, ""

    .line 105
    .local v1, desc:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    if-nez v7, :cond_b

    .line 106
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 108
    :cond_b
    iget-boolean v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mAvailable:Z

    if-eqz v7, :cond_c8

    .line 109
    iget-boolean v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mReadable:Z

    if-eqz v7, :cond_bf

    .line 110
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mUsedSpace:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, usedSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTotalSpace:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, totalSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v8, "info.using.total"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v11

    aput-object v3, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, totalUsed:Ljava/lang/String;
    move-object v1, v4

    .line 115
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    if-eqz v7, :cond_be

    .line 116
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, imageUsage:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, videoUsage:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, audioUsage:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.image"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.video"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.audio"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .end local v0           #audioUsage:Ljava/lang/String;
    .end local v2           #imageUsage:Ljava/lang/String;
    .end local v3           #totalSize:Ljava/lang/String;
    .end local v4           #totalUsed:Ljava/lang/String;
    .end local v5           #usedSize:Ljava/lang/String;
    .end local v6           #videoUsage:Ljava/lang/String;
    :cond_be
    :goto_be
    return-object v1

    .line 126
    :cond_bf
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v8, "status.cannotRead"

    invoke-virtual {v7, v8}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_be

    .line 129
    :cond_c8
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v8, "status.notInserted"

    invoke-virtual {v7, v8}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_be
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 14

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, storageState:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 48
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mAvailable:Z

    .line 49
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mReadable:Z

    .line 50
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mWriteable:Z

    .line 51
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_64

    .line 67
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 68
    .local v7, storageFile:Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 71
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v9, v11

    .line 72
    .local v9, totalBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 74
    .local v0, availableBlocks:J
    mul-long v11, v9, v2

    iput-wide v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTotalSpace:J

    .line 75
    sub-long v11, v9, v0

    mul-long/2addr v11, v2

    iput-wide v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mUsedSpace:J

    .line 77
    invoke-static {v7}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->get(Ljava/io/File;)Lcom/sprint/dsa/diagnostics/FileTypeStats;

    move-result-object v11

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_44} :catch_8d

    .line 83
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #storageFile:Ljava/io/File;
    .end local v9           #totalBlocks:J
    :goto_44
    :try_start_44
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 84
    iget-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_64

    .line 93
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->fireStatusChange()V

    .line 90
    .end local v8           #storageState:Ljava/lang/String;
    :goto_4d
    return-object v11

    .line 53
    .restart local v8       #storageState:Ljava/lang/String;
    :cond_4e
    :try_start_4e
    const-string v11, "mounted_ro"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 54
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mAvailable:Z

    .line 55
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mReadable:Z

    .line 56
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mWriteable:Z

    .line 57
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_64

    goto :goto_19

    .line 86
    .end local v8           #storageState:Ljava/lang/String;
    :catch_64
    move-exception v4

    .line 87
    .local v4, e:Ljava/lang/Exception;
    :try_start_65
    const-string v11, "SprintZone_Diagnostics"

    const-string v12, "Exception: "

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 89
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 90
    iget-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_88

    .line 93
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->fireStatusChange()V

    goto :goto_4d

    .line 60
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v8       #storageState:Ljava/lang/String;
    :cond_7a
    const/4 v11, 0x0

    :try_start_7b
    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mAvailable:Z

    .line 61
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mReadable:Z

    .line 62
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mWriteable:Z

    .line 63
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_87} :catch_64

    goto :goto_19

    .line 92
    .end local v8           #storageState:Ljava/lang/String;
    :catchall_88
    move-exception v11

    .line 93
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->fireStatusChange()V

    .line 94
    throw v11

    .line 79
    .restart local v8       #storageState:Ljava/lang/String;
    :catch_8d
    move-exception v5

    .line 80
    .local v5, ex:Ljava/lang/Exception;
    :try_start_8e
    const-string v11, "SprintZone_Diagnostics"

    const-string v12, "Error checking MicroSD space..."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_64

    goto :goto_44
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 100
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mAvailable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardAvailable:Z

    .line 137
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mReadable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardReadable:Z

    .line 138
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mWriteable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardWriteable:Z

    .line 139
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mTotalSpace:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    .line 140
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->mUsedSpace:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardUsedSpace:J

    .line 141
    return-void
.end method
