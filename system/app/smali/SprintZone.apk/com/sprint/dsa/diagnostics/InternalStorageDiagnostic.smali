.class public Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "InternalStorageDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "internalStorage"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

.field private mTotalSpace:J

.field private mUsedSpace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 6
    .parameter "context"
    .parameter "stub"

    .prologue
    const-wide/16 v1, 0x0

    .line 26
    const-string v0, "internalStorage"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 20
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTotalSpace:J

    .line 21
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mUsedSpace:J

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    .line 27
    return-void
.end method


# virtual methods
.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x6

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 91
    const-string v1, ""

    .line 92
    .local v1, desc:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    if-eqz v7, :cond_af

    .line 93
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mUsedSpace:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, usedSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTotalSpace:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, totalSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v8, "info.using.total"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v11

    aput-object v3, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, totalUsed:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, imageUsage:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, videoUsage:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v8, v8, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, audioUsage:Ljava/lang/String;
    move-object v1, v4

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.image"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.video"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v9, "info.using.audio"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v0           #audioUsage:Ljava/lang/String;
    .end local v2           #imageUsage:Ljava/lang/String;
    .end local v3           #totalSize:Ljava/lang/String;
    .end local v4           #totalUsed:Ljava/lang/String;
    .end local v5           #usedSize:Ljava/lang/String;
    .end local v6           #videoUsage:Ljava/lang/String;
    :cond_af
    return-object v1
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 13

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 50
    .local v7, storageFile:Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 52
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 53
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 54
    .local v8, totalBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 56
    .local v0, availableBlocks:J
    mul-long v10, v8, v2

    iput-wide v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTotalSpace:J

    .line 57
    sub-long v10, v8, v0

    mul-long/2addr v10, v2

    iput-wide v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mUsedSpace:J

    .line 59
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 60
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 62
    invoke-static {v7}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->get(Ljava/io/File;)Lcom/sprint/dsa/diagnostics/FileTypeStats;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mFileStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_39

    .line 71
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #storageFile:Ljava/io/File;
    .end local v8           #totalBlocks:J
    :goto_33
    :try_start_33
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_35} :catch_4a

    .line 80
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->fireStatusChange()V

    .line 77
    :goto_38
    return-object v10

    .line 64
    :catch_39
    move-exception v5

    .line 65
    .local v5, ex:Ljava/lang/Exception;
    :try_start_3a
    const-string v10, "SprintZone_Diagnostics"

    const-string v11, "Error checking file storage space..."

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 68
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_4a

    goto :goto_33

    .line 73
    .end local v5           #ex:Ljava/lang/Exception;
    :catch_4a
    move-exception v4

    .line 74
    .local v4, e:Ljava/lang/Exception;
    :try_start_4b
    const-string v10, "SprintZone_Diagnostics"

    const-string v11, "Exception: "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 76
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 77
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_60

    .line 80
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->fireStatusChange()V

    goto :goto_38

    .line 79
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_60
    move-exception v10

    .line 80
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;->fireStatusChange()V

    .line 81
    throw v10
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 124
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 87
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 114
    return-void
.end method
