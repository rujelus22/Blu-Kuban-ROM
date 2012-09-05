.class public Lcom/sec/android/socialhub/state/tab/FeedTabState;
.super Lcom/sec/android/socialhub/state/tab/TabState;
.source "FeedTabState.java"


# instance fields
.field private mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

.field private mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

.field private mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

.field private mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

.field private mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

.field private mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

.field private mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/state/tab/TabState;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    .line 32
    return-void
.end method


# virtual methods
.method public getGatewayState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    .line 100
    :goto_1c
    return-object v0

    .line 93
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    goto :goto_1c

    .line 100
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    goto :goto_1c

    .line 90
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public getNoAccountState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

    return-object v0
.end method

.method public getNormalState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 110
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 114
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    .line 124
    :goto_1c
    return-object v0

    .line 117
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    goto :goto_1c

    .line 124
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    goto :goto_1c

    .line 114
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public getSearchState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 129
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    .line 144
    :goto_1c
    return-object v0

    .line 136
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    goto :goto_1c

    .line 144
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    goto :goto_1c

    .line 133
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method protected initialize()V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    instance-of v0, v0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;

    if-eqz v0, :cond_f

    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    check-cast v0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->initialize(Landroid/content/Context;Lcom/sec/android/socialhub/state/tab/FeedTabState;)V

    .line 41
    :cond_f
    new-instance v0, Lcom/sec/android/socialhub/state/FeedGwState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/FeedGwState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    .line 42
    new-instance v0, Lcom/sec/android/socialhub/state/FeedNoAccountState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getAddAccountView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/FeedNoAccountState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/state/FeedNormalState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/FeedNormalState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    .line 44
    new-instance v0, Lcom/sec/android/socialhub/state/FeedSearchState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/FeedSearchState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    .line 46
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/FeedGwState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/FeedNoAccountState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/FeedNormalState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/FeedSearchState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 56
    new-instance v0, Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    .line 57
    new-instance v0, Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    .line 58
    new-instance v0, Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/FeedSplitGwState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/FeedSplitGwState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mGateway:Lcom/sec/android/socialhub/state/FeedGwState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedGwState;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNoaccount:Lcom/sec/android/socialhub/state/FeedNoAccountState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedNoAccountState;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mNormal:Lcom/sec/android/socialhub/state/FeedNormalState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedNormalState;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSearch:Lcom/sec/android/socialhub/state/FeedSearchState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/FeedSearchState;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/FeedSplitNormalState;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/FeedTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/FeedSplitGwState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/FeedSplitGwState;->onDestroy()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 82
    return-void
.end method
