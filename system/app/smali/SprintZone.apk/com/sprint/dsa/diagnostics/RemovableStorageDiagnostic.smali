.class public Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "RemovableStorageDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "externalStorage"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAvailable:Z

.field private mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

.field private mReadable:Z

.field private mTotalSpace:J

.field private mUsedSpace:J

.field private mWriteable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 6
    .parameter "context"
    .parameter "stub"

    .prologue
    const-wide/16 v1, 0x0

    .line 25
    const-string v0, "externalStorage"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 20
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTotalSpace:J

    .line 21
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mUsedSpace:J

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    .line 26
    return-void
.end method


# virtual methods
.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x6

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 8

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    .local v0, desc:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mAvailable:Z

    if-eqz v3, :cond_a4

    .line 103
    iget-boolean v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mReadable:Z

    if-eqz v3, :cond_9b

    .line 104
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTotalSpace:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, totalSize:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mUsedSpace:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, usedSize:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " used of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\nImages using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v5, v5, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\nVideo using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v5, v5, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\nAudio using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v5, v5, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .end local v1           #totalSize:Ljava/lang/String;
    .end local v2           #usedSize:Ljava/lang/String;
    :goto_9a
    return-object v0

    .line 113
    :cond_9b
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.cannotRead"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9a

    .line 116
    :cond_a4
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v4, "status.notInserted"

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9a
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 14

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, storageState:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 44
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mAvailable:Z

    .line 45
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mReadable:Z

    .line 46
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mWriteable:Z

    .line 47
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_64

    .line 63
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 64
    .local v7, storageFile:Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 67
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v9, v11

    .line 68
    .local v9, totalBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 70
    .local v0, availableBlocks:J
    mul-long v11, v9, v2

    iput-wide v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTotalSpace:J

    .line 71
    sub-long v11, v9, v0

    mul-long/2addr v11, v2

    iput-wide v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mUsedSpace:J

    .line 73
    invoke-static {v7}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->get(Ljava/io/File;)Lcom/sprint/dsa/diagnostics/FileTypeStats;

    move-result-object v11

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_44} :catch_8d

    .line 79
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #storageFile:Ljava/io/File;
    .end local v9           #totalBlocks:J
    :goto_44
    :try_start_44
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 80
    iget-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_64

    .line 89
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->fireStatusChange()V

    .line 86
    .end local v8           #storageState:Ljava/lang/String;
    :goto_4d
    return-object v11

    .line 49
    .restart local v8       #storageState:Ljava/lang/String;
    :cond_4e
    :try_start_4e
    const-string v11, "mounted_ro"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 50
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mAvailable:Z

    .line 51
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mReadable:Z

    .line 52
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mWriteable:Z

    .line 53
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_64

    goto :goto_19

    .line 82
    .end local v8           #storageState:Ljava/lang/String;
    :catch_64
    move-exception v4

    .line 83
    .local v4, e:Ljava/lang/Exception;
    :try_start_65
    const-string v11, "SprintZone_Diagnostics"

    const-string v12, "Exception: "

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 85
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 86
    iget-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_88

    .line 89
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->fireStatusChange()V

    goto :goto_4d

    .line 56
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v8       #storageState:Ljava/lang/String;
    :cond_7a
    const/4 v11, 0x0

    :try_start_7b
    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mAvailable:Z

    .line 57
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mReadable:Z

    .line 58
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mWriteable:Z

    .line 59
    sget-object v11, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v11, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_87} :catch_64

    goto :goto_19

    .line 88
    .end local v8           #storageState:Ljava/lang/String;
    :catchall_88
    move-exception v11

    .line 89
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->fireStatusChange()V

    .line 90
    throw v11

    .line 75
    .restart local v8       #storageState:Ljava/lang/String;
    :catch_8d
    move-exception v5

    .line 76
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
    .line 97
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mAvailable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardAvailable:Z

    .line 124
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mReadable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardReadable:Z

    .line 125
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mWriteable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardWriteable:Z

    .line 126
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mTotalSpace:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    .line 127
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/RemovableStorageDiagnostic;->mUsedSpace:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardUsedSpace:J

    .line 128
    return-void
.end method
