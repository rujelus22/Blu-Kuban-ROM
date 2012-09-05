.class public Lcom/google/android/apps/plus/phone/SignOnActivity;
.super Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.source "SignOnActivity.java"


# instance fields
.field private mCallingActivity:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;-><init>()V

    return-void
.end method

.method public static finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 8
    .parameter "activity"
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    if-eqz p1, :cond_47

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 190
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_signup"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v4, "no_account"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 213
    .end local v0           #resultIntent:Landroid/content/Intent;
    :goto_2d
    return v2

    .line 201
    :cond_2e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 202
    .local v1, target:Landroid/content/Intent;
    if-eqz v1, :cond_43

    .line 203
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 208
    :cond_43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .end local v1           #target:Landroid/content/Intent;
    :cond_47
    move v2, v3

    .line 213
    goto :goto_2d
.end method

.method private fireIntent(ILandroid/content/Intent;)V
    .registers 6
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    :goto_9
    invoke-static {p0, v2, v1}, Lcom/google/android/apps/plus/phone/Intents;->getTargetIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_23

    .line 152
    if-eqz p2, :cond_1f

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    .line 176
    :goto_17
    return-void

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 155
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(I)V

    goto :goto_14

    .line 159
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_2e

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_17

    .line 173
    :cond_2e
    const-string v1, "from_signup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17
.end method


# virtual methods
.method protected onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "oobResponse"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 88
    if-eqz p1, :cond_d

    .line 89
    invoke-static {p0, p2, p1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getOutOfBoxActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, nextIntent:Landroid/content/Intent;
    :goto_7
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void

    .line 92
    .end local v0           #nextIntent:Landroid/content/Intent;
    :cond_d
    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/google/android/apps/plus/oob/OobUtils;->getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #nextIntent:Landroid/content/Intent;
    goto :goto_7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_3c

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    :goto_6
    return-void

    .line 104
    :pswitch_7
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 105
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(ILandroid/content/Intent;)V

    goto :goto_6

    .line 108
    :cond_e
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_6

    .line 115
    :pswitch_15
    if-eqz p3, :cond_34

    const-string v1, "no_account"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 117
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 118
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_30

    .line 119
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->showAccountList()V

    goto :goto_6

    .line 121
    :cond_30
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(ILandroid/content/Intent;)V

    goto :goto_6

    .line 126
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_34
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_6

    .line 102
    nop

    :pswitch_data_3c
    .packed-switch 0xa
        :pswitch_7
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-eqz p1, :cond_1f

    .line 49
    const-string v1, "SignOnActivity#callingActivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    .line 54
    :goto_f
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 56
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_26

    .line 58
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->showAccountSelectionOnCreate(Landroid/os/Bundle;)V

    .line 64
    :cond_1e
    :goto_1e
    return-void

    .line 51
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    goto :goto_f

    .line 60
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_26
    if-nez p1, :cond_1e

    .line 61
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(ILandroid/content/Intent;)V

    goto :goto_1e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "SignOnActivity#callingActivity"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    return-void
.end method
