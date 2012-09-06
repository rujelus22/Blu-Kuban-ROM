.class public abstract Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.super Lcom/google/android/apps/plus/phone/HostedFragment;
.source "HostedEsFragment.java"


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mHandler:Landroid/os/Handler;

.field protected mNewerReqId:Ljava/lang/Integer;

.field protected mOlderReqId:Ljava/lang/Integer;

.field private mRestoredFragment:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedEsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected doShowEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 206
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 194
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgressDelayed()V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_15

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 184
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 187
    .end local v0           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected abstract isEmpty()Z
.end method

.method protected isProgressIndicatorVisible()Z
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    if-eqz p1, :cond_30

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mRestoredFragment:Z

    .line 71
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 75
    :cond_1c
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 76
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 79
    :cond_30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .parameter "layoutResId"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->onResume()V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, hadPending:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 121
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 132
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResumeContentFetched(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyView(Landroid/view/View;)V

    .line 139
    :cond_5d
    return-void

    .line 116
    :cond_5e
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 117
    const/4 v0, 0x1

    goto :goto_22

    .line 127
    :cond_62
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 128
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 286
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 148
    const-string v0, "n_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 152
    const-string v0, "o_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    :cond_21
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 85
    return-void
.end method

.method protected removeProgressViewMessages()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    return-void
.end method

.method protected setupEmptyView(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "emptyViewText"

    .prologue
    .line 253
    const v1, 0x7f090086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    .local v0, etv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->removeProgressViewMessages()V

    .line 243
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->removeProgressViewMessages()V

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->doShowEmptyView(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mRestoredFragment:Z

    if-eqz v0, :cond_1b

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    :cond_1a
    :goto_1a
    return-void

    .line 173
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    goto :goto_1a
.end method

.method protected showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "progressText"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 221
    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 224
    :cond_15
    return-void
.end method

.method public startExternalActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 157
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method protected updateSpinner()V
    .registers 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v0

    .line 266
    .local v0, actionBar:Lcom/google/android/apps/plus/views/HostActionBar;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isProgressIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 267
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 271
    :goto_d
    return-void

    .line 269
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->hideProgressIndicator()V

    goto :goto_d
.end method
