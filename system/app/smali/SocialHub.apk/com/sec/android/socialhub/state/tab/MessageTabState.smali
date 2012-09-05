.class public Lcom/sec/android/socialhub/state/tab/MessageTabState;
.super Lcom/sec/android/socialhub/state/tab/TabState;
.source "MessageTabState.java"


# instance fields
.field private mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

.field private mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

.field private mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

.field private mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

.field private mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

.field private mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

.field private mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

.field private mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

.field private mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/state/tab/TabState;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    .line 35
    return-void
.end method


# virtual methods
.method public getDeleteState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 159
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 161
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 167
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    .line 171
    :goto_1c
    return-object v0

    .line 164
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    goto :goto_1c

    .line 171
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    goto :goto_1c

    .line 161
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public getGatewayState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 95
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    .line 109
    :goto_1c
    return-object v0

    .line 102
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    goto :goto_1c

    .line 109
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    goto :goto_1c

    .line 99
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public getNoAccountState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

    return-object v0
.end method

.method public getNormalState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 119
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    .line 133
    :goto_1c
    return-object v0

    .line 126
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    goto :goto_1c

    .line 133
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    goto :goto_1c

    .line 123
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method public getSearchState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 3

    .prologue
    .line 138
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 140
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 142
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_24

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    .line 152
    :goto_1c
    return-object v0

    .line 145
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    goto :goto_1c

    .line 152
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    goto :goto_1c

    .line 142
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_1d
    .end packed-switch
.end method

.method protected initialize()V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    instance-of v0, v0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;

    if-eqz v0, :cond_f

    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    check-cast v0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->initialize(Landroid/content/Context;Lcom/sec/android/socialhub/state/tab/MessageTabState;)V

    .line 45
    :cond_f
    new-instance v0, Lcom/sec/android/socialhub/state/MessageGwState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/MessageGwState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    .line 46
    new-instance v0, Lcom/sec/android/socialhub/state/MessageNoAccountState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getAddAccountView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/MessageNoAccountState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

    .line 47
    new-instance v0, Lcom/sec/android/socialhub/state/MessageNormalState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/MessageNormalState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    .line 48
    new-instance v0, Lcom/sec/android/socialhub/state/MessageSearchState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/MessageSearchState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    .line 49
    new-instance v0, Lcom/sec/android/socialhub/state/MessageDeleteState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/state/MessageDeleteState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 54
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/MessageGwState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/MessageNoAccountState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/MessageNormalState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/MessageSearchState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/MessageDeleteState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 63
    new-instance v0, Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    .line 64
    new-instance v0, Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    .line 65
    new-instance v0, Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    .line 66
    new-instance v0, Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/split/state/MessageSplitGwState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    .line 67
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/split/state/MessageSplitGwState;->setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mGateway:Lcom/sec/android/socialhub/state/MessageGwState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageGwState;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNoAccount:Lcom/sec/android/socialhub/state/MessageNoAccountState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageNoAccountState;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mNormal:Lcom/sec/android/socialhub/state/MessageNormalState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageNormalState;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSearch:Lcom/sec/android/socialhub/state/MessageSearchState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageSearchState;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mDelete:Lcom/sec/android/socialhub/state/MessageDeleteState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/MessageDeleteState;->onDestroy()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitNormal:Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/MessageSplitNormalState;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitSearch:Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/MessageSplitSearchState;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitGateway:Lcom/sec/android/socialhub/split/state/MessageSplitGwState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/MessageSplitGwState;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/MessageTabState;->mSplitDelete:Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/split/state/MessageSplitDeleteState;->onDestroy()V

    .line 91
    return-void
.end method
