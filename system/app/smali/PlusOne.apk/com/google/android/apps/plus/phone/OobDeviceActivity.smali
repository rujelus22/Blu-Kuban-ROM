.class public abstract Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "OobDeviceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "step_num"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 30
    .local v2, step:I
    invoke-static {v2}, Lcom/google/android/apps/plus/oob/OobUtils;->shouldClearAccountBeforeGoingBack(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 32
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 35
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_18
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->setResult(I)V

    .line 36
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 37
    return-void
.end method
