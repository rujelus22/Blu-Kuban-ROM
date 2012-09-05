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
.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mSetBlockedRequestId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/BlockFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/BlockFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method private getFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    return-object v0
.end method

.method public static startBlock(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZ)V
    .registers 11
    .parameter "activity"
    .parameter "account"
    .parameter "personId"
    .parameter "isPlusPage"
    .parameter "blocked"

    .prologue
    .line 101
    instance-of v4, p0, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    if-nez v4, :cond_c

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "activity should implement Listener"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :cond_c
    if-eqz p4, :cond_49

    .line 107
    if-eqz p3, :cond_45

    const v2, 0x7f07020a

    .line 116
    .local v2, labelResId:I
    :goto_13
    new-instance v1, Lcom/google/android/apps/plus/fragments/BlockFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/BlockFragment;-><init>()V

    .line 117
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, message:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setCancelable(Z)V

    .line 122
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/apps/plus/service/EsService;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "req_pending"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/plus/fragments/BlockFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    return-void

    .line 107
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    .end local v2           #labelResId:I
    .end local v3           #message:Ljava/lang/String;
    :cond_45
    const v2, 0x7f070209

    goto :goto_13

    .line 111
    :cond_49
    if-eqz p3, :cond_4f

    const v2, 0x7f070210

    .restart local v2       #labelResId:I
    :goto_4e
    goto :goto_13

    .end local v2           #labelResId:I
    :cond_4f
    const v2, 0x7f07020f

    goto :goto_4e
.end method


# virtual methods
.method protected handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 132
    iget v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    if-eq v0, p1, :cond_6

    .line 145
    :goto_5
    return-void

    .line 136
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->dismiss()V

    .line 138
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070163

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    invoke-interface {v0, v2}, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;->onBlockCompleted(Z)V

    goto :goto_5

    .line 143
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;->onBlockCompleted(Z)V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_15

    .line 52
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    const-string v0, "set_blocked_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    .line 56
    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 76
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 78
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 79
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 85
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_25
    :goto_25
    return-void

    .line 83
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_25
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "set_blocked_req_id"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment;->mSetBlockedRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    return-void
.end method
