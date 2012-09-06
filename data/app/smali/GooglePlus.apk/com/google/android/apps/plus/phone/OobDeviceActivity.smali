.class public abstract Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "OobDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 127
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
    .line 135
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 108
    packed-switch p1, :pswitch_data_14

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    :cond_7
    :goto_7
    return-void

    .line 110
    :pswitch_8
    if-eqz p2, :cond_7

    .line 111
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->finish()V

    .line 113
    invoke-virtual {p0, v0, v0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->overridePendingTransition(II)V

    goto :goto_7

    .line 108
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 71
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->isInitialOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 72
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 75
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->setResult(I)V

    .line 76
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 63
    :goto_7
    return-void

    .line 57
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onBackPressed()V

    goto :goto_7

    .line 60
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinuePressed()V

    goto :goto_7

    .line 55
    :pswitch_data_10
    .packed-switch 0x1020019
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public onContinue()V
    .registers 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getNextOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, nextIntent:Landroid/content/Intent;
    if-eqz v0, :cond_13

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    :goto_12
    return-void

    .line 98
    :cond_13
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->finish()V

    goto :goto_12
.end method

.method public onContinuePressed()V
    .registers 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinue()V

    .line 85
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x102001a

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 36
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, intent:Landroid/content/Intent;
    const v3, 0x7f090148

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/BottomActionBar;

    .line 39
    .local v1, bottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;
    invoke-static {p0, v0, v2}, Lcom/google/android/apps/plus/phone/Intents;->isInitialOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 40
    const v3, 0x1020019

    const v4, 0x7f08004d

    invoke-virtual {v1, v3, v4, p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(IILandroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    .line 43
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/google/android/apps/plus/phone/Intents;->isLastOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 44
    const v3, 0x7f08004b

    invoke-virtual {v1, v5, v3, p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(IILandroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    .line 48
    :goto_32
    return-void

    .line 46
    :cond_33
    const v3, 0x7f08004c

    invoke-virtual {v1, v5, v3, p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(IILandroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    goto :goto_32
.end method
