.class public Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "WimaxDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final KEY:Ljava/lang/String; = "wimax"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"

.field public static final WIMAX_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field public static final WIMAX_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_RESPONSE"

.field public static final WIMAX_RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.RSSI_CHANGED"

.field public static final WIMAX_STATE_CHANGE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.STATE_CHANGE"

.field public static final WIMAX_STATUS_CHANGE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_STATUS_CHANGED"


# instance fields
.field private mAvailable:Z

.field mConnManager:Landroid/net/ConnectivityManager;

.field private mConnected:Z

.field private mDesc:Ljava/lang/String;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 5
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 28
    const-string v0, "wimax"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 30
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnManager:Landroid/net/ConnectivityManager;

    .line 31
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 133
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_20

    .line 134
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnected:Z

    if-eqz v0, :cond_17

    .line 135
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.connected"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_16
    return-object v0

    .line 137
    :cond_17
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 140
    :cond_20
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 143
    :cond_29
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.unavailable"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 124
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 126
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_6
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x3

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mAvailable:Z

    return v0
.end method

.method public isCapable()Z
    .registers 4

    .prologue
    .line 88
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/dss/DsaDiag;->is4GCapable(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-ne v0, v1, :cond_9

    .line 99
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 101
    :cond_9
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 7

    .prologue
    .line 37
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnected:Z

    .line 38
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    .line 40
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 41
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sprint/dsa/dss/DsaDiag;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    .line 42
    .local v0, airplaneMode:Z
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v2

    .line 43
    .local v2, factoryDefault:Z
    if-eqz v3, :cond_95

    if-nez v0, :cond_95

    if-nez v2, :cond_95

    .line 44
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mAvailable:Z

    .line 45
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    .line 46
    iget-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    if-eqz v4, :cond_81

    .line 47
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnected:Z

    .line 48
    iget-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnected:Z

    if-eqz v4, :cond_52

    .line 49
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 50
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.connected"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    .line 72
    :goto_48
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 73
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_61

    .line 82
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->fireStatusChange()V

    .line 79
    .end local v0           #airplaneMode:Z
    .end local v2           #factoryDefault:Z
    .end local v3           #info:Landroid/net/NetworkInfo;
    :goto_51
    return-object v4

    .line 52
    .restart local v0       #airplaneMode:Z
    .restart local v2       #factoryDefault:Z
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :cond_52
    :try_start_52
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 53
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.disconnected"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_61

    goto :goto_48

    .line 74
    .end local v0           #airplaneMode:Z
    .end local v2           #factoryDefault:Z
    .end local v3           #info:Landroid/net/NetworkInfo;
    :catch_61
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    :try_start_62
    const-string v4, "SprintZone_Diagnostics"

    const-string v5, "Exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 77
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 78
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.unavailable"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_90

    .line 82
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->fireStatusChange()V

    goto :goto_51

    .line 56
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #airplaneMode:Z
    .restart local v2       #factoryDefault:Z
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :cond_81
    :try_start_81
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 57
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.disabled"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_61

    goto :goto_48

    .line 81
    .end local v0           #airplaneMode:Z
    .end local v2           #factoryDefault:Z
    .end local v3           #info:Landroid/net/NetworkInfo;
    :catchall_90
    move-exception v4

    .line 82
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->fireStatusChange()V

    .line 83
    throw v4

    .line 60
    .restart local v0       #airplaneMode:Z
    .restart local v2       #factoryDefault:Z
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :cond_95
    const/4 v4, 0x0

    :try_start_96
    iput-boolean v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mAvailable:Z

    .line 61
    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 62
    if-eqz v2, :cond_a9

    .line 63
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.unavailable.inactivedevive"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    goto :goto_48

    .line 64
    :cond_a9
    if-eqz v0, :cond_b6

    .line 65
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.unavailable.airplanemode"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;

    goto :goto_48

    .line 67
    :cond_b6
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v5, "status.unavailable"

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_c0
    .catchall {:try_start_96 .. :try_end_c0} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c0} :catch_61

    goto :goto_48
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 163
    const-string v0, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v0, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v0, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    .line 172
    const/4 v10, 0x0

    .line 174
    .local v10, runTest:Z
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 177
    .local v3, extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 179
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v12, "curWimaxEnabledState"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, curSetting:I
    const-string v12, "preWimaxEnabledState"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 183
    .local v9, previousSetting:I
    const/4 v10, 0x1

    .line 216
    .end local v0           #curSetting:I
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #previousSetting:I
    :cond_22
    :goto_22
    if-eqz v10, :cond_27

    .line 217
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 221
    :cond_27
    :goto_27
    return-void

    .line 184
    :cond_28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 186
    .restart local v3       #extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 187
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v12, "networkInfo"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 190
    .local v4, info:Landroid/net/NetworkInfo;
    const/4 v10, 0x1

    goto :goto_22

    .line 192
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_46
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 194
    .restart local v3       #extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 195
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v12, "newRssiLevel"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 198
    .local v6, newRssiLevel:I
    const/4 v10, 0x1

    goto :goto_22

    .line 199
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #newRssiLevel:I
    :cond_62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_84

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 201
    .restart local v3       #extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 203
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v12, "wimax_status"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, curState:I
    const-string v12, "previous_wimax_status"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 206
    .local v8, prevState:I
    const/4 v10, 0x1

    goto :goto_22

    .line 207
    .end local v1           #curState:I
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #prevState:I
    :cond_84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 209
    .restart local v3       #extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 211
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v12, "WimaxOMADMRespState"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 212
    .local v11, state:I
    const-string v12, "WimaxOMADMRespData"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_a3} :catch_a7

    move-result-object v7

    .line 214
    .local v7, obj2:Ljava/lang/Object;
    const/4 v10, 0x1

    goto/16 :goto_22

    .line 218
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7           #obj2:Ljava/lang/Object;
    .end local v11           #state:I
    :catch_a7
    move-exception v2

    .line 219
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v12, "SprintZone_Diagnostics"

    const-string v13, "Exception getting 4G state change data."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->isAvailable()Z

    move-result v0

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxAvailable:Z

    .line 107
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxEnabled:Z

    .line 108
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;->mConnected:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxConnected:Z

    .line 109
    return-void
.end method
