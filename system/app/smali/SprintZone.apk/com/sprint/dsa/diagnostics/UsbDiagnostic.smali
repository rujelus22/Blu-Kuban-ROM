.class public Lcom/sprint/dsa/diagnostics/UsbDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "UsbDiagnostic.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "usb"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 12
    const-string v0, "usb"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 25
    const/16 v0, 0x8

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.available"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public isCapable()Z
    .registers 3

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 18
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 19
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;->fireStatusChange()V

    .line 20
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    return-object v0
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 35
    return-void
.end method
