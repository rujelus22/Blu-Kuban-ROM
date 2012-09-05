.class public Lcom/android/exchange/SecurityPolicyDelegate;
.super Ljava/lang/Object;
.source "SecurityPolicyDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .registers 4
    .parameter "context"
    .parameter "policies"

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    .line 187
    :catch_a
    move-exception v0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyService transaction failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;
    .registers 5
    .parameter "mContext"
    .parameter "accountId"

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->getAccountPolicy(J)Lcom/android/emailcommon/service/PolicySet;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    .line 217
    :catch_a
    move-exception v0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyService transaction failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z
    .registers 3
    .parameter "context"
    .parameter "policies"

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v0

    .line 125
    :goto_9
    return v0

    .line 123
    :catch_a
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static policiesRequired(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->policiesRequired(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 134
    return-void

    .line 131
    :catch_9
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static reducePolicies(Landroid/content/Context;)V
    .registers 4
    .parameter "mContext"

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->reducePolicies()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 198
    return-void

    .line 195
    :catch_9
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 150
    return-void

    .line 147
    :catch_b
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static updatePolicies(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->updatePolicies(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 142
    return-void

    .line 139
    :catch_9
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
