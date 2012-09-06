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
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
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

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 226
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 214
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .end local v0           #emptyView:Landroid/view/View;
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgressDelayed()V
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_15

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 207
    .end local v0           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected abstract isEmpty()Z
.end method

.method protected isPaused()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    return v0
.end method

.method protected onAsyncData()V
    .registers 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 313
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    if-eqz v1, :cond_d

    .line 314
    check-cast v0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onAsyncData()V

    .line 316
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_30

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mRestoredFragment:Z

    .line 76
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    const-string v0, "n_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 80
    :cond_1c
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 81
    const-string v0, "o_pending_req"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 84
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
    .line 98
    const/4 v1, 0x0

    invoke-virtual {p1, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    .line 152
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, hadPending:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 122
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 133
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v1, :cond_5d

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResumeContentFetched(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyView(Landroid/view/View;)V

    .line 141
    :cond_5d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mPaused:Z

    .line 142
    return-void

    .line 117
    :cond_61
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 118
    const/4 v0, 0x1

    goto :goto_22

    .line 128
    :cond_65
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 129
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 304
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 168
    const-string v0, "n_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 172
    const-string v0, "o_pending_req"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    :cond_21
    return-void
.end method

.method protected removeProgressViewMessages()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    return-void
.end method

.method protected setupEmptyView(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "emptyViewText"

    .prologue
    .line 273
    const v1, 0x7f090086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    .local v0, etv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 275
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->removeProgressViewMessages()V

    .line 263
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->removeProgressViewMessages()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mRestoredFragment:Z

    if-eqz v0, :cond_1b

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    :cond_1a
    :goto_1a
    return-void

    .line 193
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    goto :goto_1a
.end method

.method protected showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "progressText"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 241
    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 244
    :cond_15
    return-void
.end method

.method public startExternalActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 177
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 283
    if-nez p1, :cond_3

    .line 289
    :goto_2
    return-void

    .line 287
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
