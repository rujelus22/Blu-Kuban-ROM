.class public Lcom/sprint/dsa/diagnostics/SyncDiagnostic;
.super Lcom/sprint/dsa/diagnostics/Diagnostic;
.source "SyncDiagnostic.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerUser;


# static fields
.field public static final ACCOUNT_COUNT_HIGH:I = 0x5

.field public static final ACCOUNT_COUNT_LOW:I = 0x1

.field public static final ACCOUNT_COUNT_MED:I = 0x3

.field public static final KEY:Ljava/lang/String; = "sync"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mAccountCount:I

.field private mDesc:Ljava/lang/String;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 4
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 31
    const-string v0, "sync"

    invoke-direct {p0, p1, v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 32
    const-string v0, "status.test.running"

    invoke-virtual {p2, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mDesc:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getPowerDescription()Ljava/lang/String;
    .registers 7

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_2f

    .line 142
    iget v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    if-lez v0, :cond_26

    .line 143
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabledCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_25
    return-object v0

    .line 145
    :cond_26
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.enabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 148
    :cond_2f
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v1, "status.disabled"

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public getPowerTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;
    .registers 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    if-eqz v0, :cond_17

    .line 127
    iget v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_c

    .line 128
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHEST:Lcom/sprint/dsa/diagnostics/PowerUsage;

    .line 135
    :goto_b
    return-object v0

    .line 129
    :cond_c
    iget v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    .line 130
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->HIGHER:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_b

    .line 132
    :cond_14
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->LOW:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_b

    .line 135
    :cond_17
    sget-object v0, Lcom/sprint/dsa/diagnostics/PowerUsage;->NONE:Lcom/sprint/dsa/diagnostics/PowerUsage;

    goto :goto_b
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x7

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    return v0
.end method

.method public runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 49
    :try_start_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    iput-boolean v11, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    .line 51
    iget-object v11, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 52
    .local v2, acctMgr:Landroid/accounts/AccountManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, syncAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 55
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_17
    array-length v11, v9

    if-lt v4, v11, :cond_3c

    .line 68
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    .line 70
    iget-boolean v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    if-eqz v10, :cond_61

    .line 71
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v11, "status.enabled"

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mDesc:Ljava/lang/String;

    .line 72
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 81
    :goto_32
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_OKAY:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 82
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_70

    .line 91
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->fireStatusChange()V

    .line 88
    .end local v2           #acctMgr:Landroid/accounts/AccountManager;
    .end local v4           #i:I
    .end local v7           #syncAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v9           #syncAdapters:[Landroid/content/SyncAdapterType;
    :goto_3b
    return-object v10

    .line 56
    .restart local v2       #acctMgr:Landroid/accounts/AccountManager;
    .restart local v4       #i:I
    .restart local v7       #syncAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v9       #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_3c
    const/4 v11, 0x0

    :try_start_3d
    aget-object v8, v9, v11

    .line 57
    .local v8, syncAdapter:Landroid/content/SyncAdapterType;
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 58
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_46
    array-length v11, v1

    if-lt v6, v11, :cond_4c

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 59
    :cond_4c
    aget-object v0, v1, v6

    .line 61
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_5f

    const/4 v5, 0x1

    .line 62
    .local v5, isSyncable:Z
    :goto_57
    if-eqz v5, :cond_5c

    .line 63
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .end local v5           #isSyncable:Z
    :cond_5f
    move v5, v10

    .line 61
    goto :goto_57

    .line 74
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v6           #j:I
    .end local v8           #syncAdapter:Landroid/content/SyncAdapterType;
    :cond_61
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v11, "status.disabled"

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mDesc:Ljava/lang/String;

    .line 75
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6f} :catch_70

    goto :goto_32

    .line 83
    .end local v2           #acctMgr:Landroid/accounts/AccountManager;
    .end local v4           #i:I
    .end local v7           #syncAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v9           #syncAdapters:[Landroid/content/SyncAdapterType;
    :catch_70
    move-exception v3

    .line 84
    .local v3, e:Ljava/lang/Exception;
    :try_start_71
    const-string v10, "SprintZone_Diagnostics"

    const-string v11, "Exception: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    const-string v11, "status.unavailable"

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mDesc:Ljava/lang/String;

    .line 86
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 87
    sget-object v10, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 88
    iget-object v10, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_90

    .line 91
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->fireStatusChange()V

    goto :goto_3b

    .line 90
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_90
    move-exception v10

    .line 91
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->fireStatusChange()V

    .line 92
    throw v10
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 119
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 104
    return-void
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mEnabled:Z

    iput-boolean v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->syncEnabled:Z

    .line 98
    iget v0, p0, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;->mAccountCount:I

    iput v0, p1, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->syncAccountCount:I

    .line 99
    return-void
.end method
