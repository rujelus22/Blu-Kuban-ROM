.class public abstract Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "EsProfileGatewayActivity.java"


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mHandler:Landroid/os/Handler;

.field protected mPendingRequestId:Ljava/lang/Integer;

.field protected mPersonId:Ljava/lang/String;

.field protected mPersonName:Ljava/lang/String;

.field protected mRedirected:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$1;-><init>(Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method


# virtual methods
.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_e

    .line 218
    :cond_d
    :goto_d
    return-void

    .line 207
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 209
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1f

    .line 210
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 213
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070258

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->finish()V

    goto :goto_d
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, success:Z
    packed-switch p1, :pswitch_data_20

    .line 172
    :cond_4
    :goto_4
    if-nez v1, :cond_9

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->finish()V

    .line 175
    :cond_9
    return-void

    .line 154
    :pswitch_a
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 155
    const-string v2, "selected_circle_ids"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;-><init>(Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    const/4 v1, 0x1

    goto :goto_4

    .line 152
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    if-eqz p1, :cond_47

    .line 72
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 73
    const-string v2, "person_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonId:Ljava/lang/String;

    .line 74
    const-string v2, "person_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonName:Ljava/lang/String;

    .line 75
    const-string v2, "pending_req_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 76
    const-string v2, "pending_req_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 78
    :cond_33
    const-string v2, "redirected"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mRedirected:Z

    .line 83
    :goto_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mRedirected:Z

    if-eqz v2, :cond_4e

    .line 85
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->finish()V

    .line 95
    :cond_46
    :goto_46
    return-void

    .line 80
    :cond_47
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_3b

    .line 89
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_46

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->finish()V

    goto :goto_46
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 136
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 123
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 127
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v0, "person_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "person_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_27

    .line 107
    const-string v0, "pending_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    :cond_27
    const-string v0, "redirected"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mRedirected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method protected setCircleMembership(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonName:Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 184
    const v0, 0x7f07021f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v6

    .line 188
    .local v6, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    :try_start_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "req_pending"

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 194
    :cond_2b
    :goto_2b
    return-void

    .line 189
    :catch_2c
    move-exception v7

    .line 190
    .local v7, t:Ljava/lang/Throwable;
    const-string v0, "EsProfileGatewayActivity"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 191
    const-string v0, "EsProfileGatewayActivity"

    const-string v1, "Cannot show dialog"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method protected showCirclePicker()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->mPersonName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method
