.class public Lcom/sprint/dsa/diagnostics/MobileDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "MobileDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final KEY:Ljava/lang/String; = "3g"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAvailable:Z

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mConnected:Z

.field private mDesc:Ljava/lang/String;

.field private mEnabled:Z

.field private mRoamingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 6
    .parameter "context"
    .parameter "stub"

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "3g"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 31
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mConnManager:Landroid/net/ConnectivityManager;

    .line 32
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mAvailable:Z

    .line 33
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    .line 34
    return-void

    :cond_28
    move v0, v1

    .line 32
    goto :goto_1d
.end method

.method public static isRadioCellMode(Landroid/content/Context;)Z
    .registers 5
    .parameter "me"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    const-string v3, "cell"

    .line 119
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 121
    .local v0, isEnabled:Z
    :goto_e
    return v0

    .end local v0           #isEnabled:Z
    :cond_f
    move v0, v1

    .line 119
    goto :goto_e
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRoamingEnabled:Z

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 201
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "config.title"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRoamingEnabled:Z

    if-eqz v0, :cond_7

    .line 182
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGH:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 184
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_6
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mAvailable:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mEnabled:Z

    return v0
.end method

.method public logInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .registers 5
    .parameter "info"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_8e

    .line 102
    const-string v1, "NetworkInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "\n  isAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\n  isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\n  isConnectedOrConnecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\n  Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n  Type name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n  SubType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "\n  SubType name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n  State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "\n  Detailed state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_8e
    const-string v1, "NetworkInfo is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 9

    .prologue
    .line 39
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mEnabled:Z

    .line 41
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 42
    .local v4, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/dsa/dss/DsaDiag;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    .line 43
    .local v0, airplaneMode:Z
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v3

    .line 44
    .local v3, factoryDefault:Z
    if-eqz v4, :cond_ab

    if-nez v0, :cond_ab

    if-nez v3, :cond_ab

    .line 46
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mAvailable:Z

    .line 47
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mEnabled:Z

    .line 48
    iget-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mEnabled:Z

    if-eqz v6, :cond_97

    .line 49
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mConnected:Z

    .line 50
    iget-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mConnected:Z

    if-eqz v6, :cond_68

    .line 51
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 52
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.connected"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    .line 75
    :goto_45
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v6, "data_roaming"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_d9

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 78
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRoamingEnabled:Z

    .line 85
    :goto_5e
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 86
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_77

    .line 95
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->fireStatusChange()V

    .line 92
    .end local v0           #airplaneMode:Z
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #factoryDefault:Z
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v5           #value:Ljava/lang/String;
    :goto_67
    return-object v6

    .line 54
    .restart local v0       #airplaneMode:Z
    .restart local v3       #factoryDefault:Z
    .restart local v4       #info:Landroid/net/NetworkInfo;
    :cond_68
    :try_start_68
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 55
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.disconnected"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_77

    goto :goto_45

    .line 87
    .end local v0           #airplaneMode:Z
    .end local v3           #factoryDefault:Z
    .end local v4           #info:Landroid/net/NetworkInfo;
    :catch_77
    move-exception v2

    .line 88
    .local v2, e:Ljava/lang/Exception;
    :try_start_78
    const-string v6, "SprintZone_Diagnostics"

    const-string v7, "Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 90
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 91
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.unavailable"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    .line 92
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_a6

    .line 95
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->fireStatusChange()V

    goto :goto_67

    .line 58
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #airplaneMode:Z
    .restart local v3       #factoryDefault:Z
    .restart local v4       #info:Landroid/net/NetworkInfo;
    :cond_97
    :try_start_97
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 59
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.disabled"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_77

    goto :goto_45

    .line 94
    .end local v0           #airplaneMode:Z
    .end local v3           #factoryDefault:Z
    .end local v4           #info:Landroid/net/NetworkInfo;
    :catchall_a6
    move-exception v6

    .line 95
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->fireStatusChange()V

    .line 96
    throw v6

    .line 62
    .restart local v0       #airplaneMode:Z
    .restart local v3       #factoryDefault:Z
    .restart local v4       #info:Landroid/net/NetworkInfo;
    :cond_ab
    const/4 v6, 0x0

    :try_start_ac
    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mAvailable:Z

    .line 63
    sget-object v6, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 64
    if-eqz v3, :cond_bf

    .line 65
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.unavailable.inactivedevive"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    goto :goto_45

    .line 66
    :cond_bf
    if-eqz v0, :cond_cd

    .line 67
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.unavailable.airplanemode"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    goto/16 :goto_45

    .line 69
    :cond_cd
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v7, "status.unavailable"

    invoke-virtual {v6, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mDesc:Ljava/lang/String;

    goto/16 :goto_45

    .line 81
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v5       #value:Ljava/lang/String;
    :cond_d9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mRoamingEnabled:Z
    :try_end_dc
    .catchall {:try_start_ac .. :try_end_dc} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_dc} :catch_77

    goto :goto_5e
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 152
    const-string v0, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 160
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 162
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 176
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17
    :goto_17
    return-void

    .line 163
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 165
    .restart local v1       #extras:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 168
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "networkInfo"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 171
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_17

    .line 173
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catch_38
    move-exception v0

    .line 174
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "SprintZone_Diagnostics"

    const-string v5, "Exception getting network state change data."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mAvailable:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->net3gAvailable:Z

    .line 132
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;->mEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->net3gEnabled:Z

    .line 133
    return-void
.end method
