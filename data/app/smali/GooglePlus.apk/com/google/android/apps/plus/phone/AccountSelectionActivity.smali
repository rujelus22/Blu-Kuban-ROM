.class public Lcom/google/android/apps/plus/phone/AccountSelectionActivity;
.super Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.source "AccountSelectionActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "oobResponse"
    .parameter "account"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AccountSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 41
    .local v1, startIntent:Landroid/content/Intent;
    invoke-static {p0, p2, v1, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHomeOobActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, nextIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AccountSelectionActivity;->finish()V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/AccountSelectionActivity;->showAccountSelectionOrUpgradeAccount(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
