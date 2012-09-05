.class public abstract Lcom/google/android/apps/plus/fragments/EsFragment;
.super Landroid/support/v4/app/Fragment;
.source "EsFragment.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field protected mNewerReqId:Ljava/lang/Integer;

.field protected mOlderReqId:Ljava/lang/Integer;

.field private mPaused:Z

.field private mRestoredFragment:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EsFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected doShowEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 220
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 208
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgressDelayed()V
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_15

    .line 196
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 201
    .end local v0           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected abstract isEmpty()Z
.end method

.method protected isPaused()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    return v0
.end method

.method protected onAsyncData()V
    .registers 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 307
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    if-eqz v1, :cond_d

    .line 308
    check-cast v0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onAsyncData()V

    .line 310
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_30

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mRestoredFragment:Z

    .line 75
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 76
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 79
    :cond_1c
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 80
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 83
    :cond_30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .parameter "layoutResId"

    .prologue
    .line 97
    const/4 v1, 0x0

    invoke-virtual {p1, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    .line 151
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, hadPending:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 121
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 132
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResumeContentFetched(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyView(Landroid/view/View;)V

    .line 140
    :cond_5d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    .line 141
    return-void

    .line 116
    :cond_61
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 117
    const/4 v0, 0x1

    goto :goto_22

    .line 127
    :cond_65
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 128
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 167
    const-string v0, "n_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 171
    const-string v0, "o_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :cond_21
    return-void
.end method

.method protected removeProgressViewMessages()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    return-void
.end method

.method protected setupEmptyView(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "emptyViewText"

    .prologue
    .line 267
    const v1, 0x7f0d007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    .local v0, etv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->removeProgressViewMessages()V

    .line 257
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->removeProgressViewMessages()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyView(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mRestoredFragment:Z

    if-eqz v0, :cond_1b

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    :cond_1a
    :goto_1a
    return-void

    .line 187
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    goto :goto_1a
.end method

.method protected showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "progressText"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 235
    const v0, 0x7f0d0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 238
    :cond_15
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 277
    if-nez p1, :cond_3

    .line 283
    :goto_2
    return-void

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v0, :cond_11

    const/16 v0, 0x8

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
