.class Lcom/google/android/accounts/FroyoContentSyncer;
.super Lcom/google/android/accounts/EclairContentSyncer;
.source "FroyoContentSyncer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/accounts/EclairContentSyncer;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 7
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 39
    invoke-static {p1}, Lcom/google/android/accounts/FroyoContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 40
    return-void
.end method

.method public removePeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/android/accounts/FroyoContentSyncer;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method
