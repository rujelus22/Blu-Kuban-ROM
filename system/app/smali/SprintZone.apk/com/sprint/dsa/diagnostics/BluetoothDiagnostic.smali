.class public Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "BluetoothDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final KEY:Ljava/lang/String; = "bluetooth"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field public static final TAG_INFO:Ljava/lang/String; = "bluetooth.info"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAvailable:Z

.field private mDesc:Ljava/lang/String;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 5
    .parameter "context"
    .parameter "stub"

    .prologue
    const/4 v0, 0x0

    .line 23
    const-string v1, "bluetooth"

    invoke-direct {p0, p1, v1, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 18
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    .line 19
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    .line 25
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    .line 27
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_d

    .line 123
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 114
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOWEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 116
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_6
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x4

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 4

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_5a

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    .line 45
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    .line 46
    iget-boolean v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    if-eqz v1, :cond_2b

    .line 49
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.enabled"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 63
    :goto_21
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 64
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_3a

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->fireStatusChange()V

    .line 70
    :goto_2a
    return-object v1

    .line 52
    :cond_2b
    :try_start_2b
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 53
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.disabled"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_3a

    goto :goto_21

    .line 65
    :catch_3a
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v1, "SprintZone_Diagnostics"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 68
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 69
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.unavailable"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_6f

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->fireStatusChange()V

    goto :goto_2a

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5a
    const/4 v1, 0x0

    :try_start_5b
    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    .line 58
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v2, "status.unavailable"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mDesc:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_3a

    goto :goto_21

    .line 72
    :catchall_6f
    move-exception v1

    .line 73
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->fireStatusChange()V

    .line 74
    throw v1
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 95
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 101
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, newState:I
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, oldState:I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_21

    const/16 v2, 0xa

    if-ne v0, v2, :cond_24

    .line 106
    :cond_21
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 109
    .end local v0           #newState:I
    .end local v1           #oldState:I
    :cond_24
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mAvailable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->bluetoothAvailable:Z

    .line 80
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;->mEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->bluetoothEnabled:Z

    .line 81
    return-void
.end method
