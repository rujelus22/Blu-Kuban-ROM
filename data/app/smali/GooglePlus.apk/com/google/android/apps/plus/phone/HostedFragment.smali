.class public abstract Lcom/google/android/apps/plus/phone/HostedFragment;
.super Landroid/support/v4/app/Fragment;
.source "HostedFragment.java"


# instance fields
.field private mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

.field private mCalled:Z

.field private mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

.field private mPaused:Z

.field private mRecorded:Z

.field private mStartTime:J

.field private mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 2
    .parameter "actionBar"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 79
    return-void
.end method

.method public clearNavigationAction()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mRecorded:Z

    .line 165
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartTime:J

    .line 167
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 168
    return-void
.end method

.method public detachActionBar()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    .line 86
    return-void
.end method

.method public abstract getAccount()Lcom/google/android/apps/plus/content/EsAccount;
.end method

.method public getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    return-object v0
.end method

.method protected invalidateActionBar()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->invalidateActionBar()V

    .line 135
    :cond_9
    return-void
.end method

.method protected isPaused()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mPaused:Z

    return v0
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onActionButtonClicked(I)V
    .registers 2
    .parameter "actionId"

    .prologue
    .line 126
    return-void
.end method

.method protected onAsyncData()V
    .registers 7

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 199
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mRecorded:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    if-eqz v0, :cond_1e

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartTime:J

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mRecorded:Z

    .line 205
    :cond_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mCalled:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mCalled:Z

    if-nez v0, :cond_19

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call super.onSetArguments()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_19
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mPaused:Z

    .line 61
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 2
    .parameter "actionBar"

    .prologue
    .line 102
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 108
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mPaused:Z

    .line 52
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mCalled:Z

    .line 68
    return-void
.end method

.method public abstract recordNavigationAction()V
.end method

.method public recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 9
    .parameter "startView"
    .parameter "endView"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->needsAsyncData()Z

    move-result v0

    if-nez v0, :cond_21

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 180
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_20

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mRecorded:Z

    if-nez v0, :cond_20

    if-eqz p2, :cond_20

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-wide/16 v3, -0x1

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mRecorded:Z

    .line 191
    .end local v1           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_20
    :goto_20
    return-void

    .line 187
    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mStartTime:J

    .line 189
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/HostedFragment;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_20
.end method

.method protected recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 144
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_d

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 147
    :cond_d
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache;->clearFailedRequests()V

    .line 118
    return-void
.end method
