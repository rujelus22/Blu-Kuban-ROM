.class Lcom/google/android/accounts/EclairContentSyncer;
.super Lcom/google/android/accounts/CupcakeContentSyncer;
.source "EclairContentSyncer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/accounts/CupcakeContentSyncer;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected static convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 33
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/accounts/Account;

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/android/accounts/EclairContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/android/accounts/EclairContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/accounts/EclairContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public setIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "syncable"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/android/accounts/EclairContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "sync"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/android/accounts/EclairContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method
