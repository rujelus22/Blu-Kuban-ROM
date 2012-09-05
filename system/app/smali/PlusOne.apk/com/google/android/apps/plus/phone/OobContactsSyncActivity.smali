.class public Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;
.super Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.source "OobContactsSyncActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "startIntent"

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_1a

    .line 88
    :cond_3
    :goto_3
    return-void

    .line 75
    :pswitch_4
    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 78
    .local v0, myStartIntent:Landroid/content/Intent;
    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->finish()V

    goto :goto_3

    .line 73
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 39
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    if-eqz v0, :cond_c

    .line 40
    check-cast p1, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->setContactsSyncConfigListener(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;)V

    .line 42
    :cond_c
    return-void
.end method

.method public onContinue()V
    .registers 8

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 50
    .local v1, myIntent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 52
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v5, "step_num"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, step:I
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 56
    .local v3, startIntent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v3}, Lcom/google/android/apps/plus/oob/OobUtils;->getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, nextIntent:Landroid/content/Intent;
    if-eqz v2, :cond_26

    .line 60
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    :goto_25
    return-void

    .line 63
    :cond_26
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->finish()V

    goto :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;->setContentView(I)V

    .line 31
    return-void
.end method
