.class public Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "NotificationDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "notification"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 12
    const-string v0, "notification"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mDesc:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 4

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.available"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mDesc:Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 31
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 32
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_18

    .line 40
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->fireStatusChange()V

    .line 37
    :goto_17
    return-object v1

    .line 33
    :catch_18
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    :try_start_19
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 36
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 37
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2e

    .line 40
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->fireStatusChange()V

    goto :goto_17

    .line 39
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v1

    .line 40
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;->fireStatusChange()V

    .line 41
    throw v1
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 46
    return-void
.end method
