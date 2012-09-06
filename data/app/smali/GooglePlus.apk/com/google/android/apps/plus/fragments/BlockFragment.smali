.class public Lcom/google/android/apps/plus/fragments/BlockFragment;
.super Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
.source "BlockFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mSetBlockedRequestId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/BlockFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/BlockFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/BlockFragment;
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "name"
    .parameter "isPlusPage"
    .parameter "blocked"

    .prologue
    .line 138
    if-eqz p5, :cond_37

    .line 139
    if-eqz p4, :cond_33

    const v2, 0x7f0802b8

    .line 148
    .local v2, labelResId:I
    :goto_7
    new-instance v1, Lcom/google/android/apps/plus/fragments/BlockFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/BlockFragment;-><init>()V

    .line 149
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, message:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setCancelable(Z)V

    .line 154
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 155
    invoke-static {p0, p1, p2, p3, p5}, Lcom/google/android/apps/plus/service/EsService;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    .line 158
    return-object v1

    .line 139
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    .end local v2           #labelResId:I
    .end local v3           #message:Ljava/lang/String;
    :cond_33
    const v2, 0x7f0802b7

    goto :goto_7

    .line 143
    :cond_37
    if-eqz p4, :cond_3d

    const v2, 0x7f0802be

    .restart local v2       #labelResId:I
    :goto_3c
    goto :goto_7

    .end local v2           #labelResId:I
    :cond_3d
    const v2, 0x7f0802bd

    goto :goto_3c
.end method


# virtual methods
.method protected handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 169
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    if-eq v1, p1, :cond_6

    .line 193
    :cond_5
    :goto_5
    return-void

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->dismiss()V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    if-eqz v1, :cond_33

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    .line 184
    .local v0, listener:Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    :goto_17
    if-eqz v0, :cond_5

    .line 185
    if-eqz p2, :cond_44

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0801fd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-interface {v0, v3}, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;->onBlockCompleted(Z)V

    goto :goto_5

    .line 178
    .end local v0           #listener:Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    if-eqz v1, :cond_42

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    .restart local v0       #listener:Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    goto :goto_17

    .line 181
    .end local v0           #listener:Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    :cond_42
    const/4 v0, 0x0

    .restart local v0       #listener:Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
    goto :goto_17

    .line 190
    :cond_44
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;->onBlockCompleted(Z)V

    goto :goto_5
.end method

.method protected isIntentAccountActive()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_42

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 119
    const-string v1, "BlockFragment"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 120
    const-string v1, "BlockFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity finished because it is associated with a signed-out account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_42
    :goto_42
    return v0

    .line 125
    :cond_43
    const/4 v0, 0x1

    goto :goto_42
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_1f

    .line 58
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 59
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    .line 60
    const-string v0, "set_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 63
    :cond_1f
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 84
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 86
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 87
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 93
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_21
    :goto_21
    return-void

    .line 91
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_21
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "set_blocked_req_id"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v0, "set_account"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 106
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "block_pending"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/BlockFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 163
    return-void
.end method
