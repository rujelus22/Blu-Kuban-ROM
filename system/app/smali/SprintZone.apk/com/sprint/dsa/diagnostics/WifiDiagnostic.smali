.class public Lcom/sprint/dsa/diagnostics/WifiDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "WifiDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final KEY:Ljava/lang/String; = "wifi"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAvailable:Z

.field private mConnected:Z

.field private mConnectedTo:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 5
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 24
    const-string v0, "wifi"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 25
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mAvailable:Z

    .line 27
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    .line 28
    return-void

    .line 26
    :cond_23
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_1e

    .line 130
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnected:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.connected"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_14
    return-object v0

    .line 133
    :cond_15
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 136
    :cond_1e
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 121
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->MEDIUM:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 123
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_6
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x5

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mAvailable:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v1, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-ne v0, v1, :cond_9

    .line 38
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 40
    :cond_9
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 7

    .prologue
    .line 46
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnected:Z

    .line 48
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_9f

    .line 51
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    .line 52
    iget-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    if-eqz v2, :cond_90

    .line 53
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 54
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 55
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_7d

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnected:Z

    .line 57
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 59
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.connected"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    .line 78
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_48
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 79
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_5d

    .line 88
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->fireStatusChange()V

    .line 85
    :goto_51
    return-object v2

    .line 61
    .restart local v1       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.disconnected"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 80
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_5d
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    :try_start_5e
    const-string v2, "SprintZone_Diagnostics"

    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 83
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 84
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.unavailable"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_79
    .catchall {:try_start_5e .. :try_end_79} :catchall_8b

    .line 88
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->fireStatusChange()V

    goto :goto_51

    .line 64
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_7d
    :try_start_7d
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.enabled"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnected:Z
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8a} :catch_5d

    goto :goto_48

    .line 87
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catchall_8b
    move-exception v2

    .line 88
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->fireStatusChange()V

    .line 89
    throw v2

    .line 68
    :cond_90
    :try_start_90
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 69
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.disabled"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;

    goto :goto_48

    .line 73
    :cond_9f
    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 74
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v3, "status.unavailable"

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ad} :catch_5d

    goto :goto_48
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 112
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 147
    const-string v2, "wifi_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, newState:I
    const-string v2, "previous_wifi_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, oldState:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_22

    .line 152
    :cond_1f
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 166
    .end local v0           #newState:I
    .end local v1           #oldState:I
    :cond_22
    :goto_22
    return-void

    .line 153
    :cond_23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 154
    const-string v2, "wifi_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 157
    .restart local v0       #newState:I
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    goto :goto_22
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mAvailable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiAvailable:Z

    .line 100
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiEnabled:Z

    .line 101
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnected:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiConnected:Z

    .line 102
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;->mConnectedTo:Ljava/lang/String;

    iput-object v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiSSID:Ljava/lang/String;

    .line 103
    return-void
.end method
