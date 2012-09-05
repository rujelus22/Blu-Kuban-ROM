.class public Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "MemoryDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "memory"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAvialableMemory:J

.field private mDesc:Ljava/lang/String;

.field private mLowMemoryIndicater:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 21
    const-string v0, "memory"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mDesc:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 8

    .prologue
    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 38
    .local v0, activityManager:Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 39
    .local v2, memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 41
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mAvialableMemory:J

    .line 42
    iget-boolean v4, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mLowMemoryIndicater:Z

    .line 44
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mAvialableMemory:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, totalSize:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.available"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mDesc:Ljava/lang/String;

    .line 52
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 53
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 54
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_44

    .line 62
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->fireStatusChange()V

    .line 59
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    .end local v3           #totalSize:Ljava/lang/String;
    :goto_43
    return-object v4

    .line 55
    :catch_44
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    :try_start_45
    const-string v4, "SprintZone_Diagnostics"

    const-string v5, "Exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 58
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 59
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_5a

    .line 62
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->fireStatusChange()V

    goto :goto_43

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_5a
    move-exception v4

    .line 62
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->fireStatusChange()V

    .line 63
    throw v4
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mAvialableMemory:J

    iput-wide v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->memoryAvailable:J

    .line 69
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;->mLowMemoryIndicater:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->memoryLowIndicater:Z

    .line 70
    return-void
.end method
