.class public Lcom/sec/android/widgetapp/socialhub/view/PlainView;
.super Ljava/lang/Object;
.source "PlainView.java"


# instance fields
.field private addAccountListener:Landroid/view/View$OnClickListener;

.field private jumpToStatusUpdateListener:Landroid/view/View$OnClickListener;

.field private mAddAccountButton:Landroid/widget/Button;

.field private mBouncingCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

.field private mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

.field private mContext:Landroid/content/Context;

.field private mEmptyLayout:Landroid/view/View;

.field public mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshImage:Landroid/widget/ImageView;

.field private mRefreshLayout:Landroid/widget/FrameLayout;

.field public mRootView:Landroid/view/View;

.field private mStatusLayout:Landroid/widget/LinearLayout;

.field private mStatusUpdateTextView:Landroid/widget/TextView;

.field private mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

.field private refreshHandler:Landroid/os/Handler;

.field private updateFeedListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    .line 31
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    .line 32
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mStatusUpdateTextView:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mAddAccountButton:Landroid/widget/Button;

    .line 82
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mBouncingCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    .line 105
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView$2;-><init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->jumpToStatusUpdateListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView$3;-><init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->updateFeedListener:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView$4;-><init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->addAccountListener:Landroid/view/View$OnClickListener;

    .line 162
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;-><init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->refreshHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 50
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->InitLayout()V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->InitListener()V

    .line 52
    return-void
.end method

.method private InitLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mStatusLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mStatusUpdateTextView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshImage:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mEmptyLayout:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mEmptyLayout:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mAddAccountButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    .line 65
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshLayout:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 69
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setItemsCanFocus(Z)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->setListView(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mBouncingCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setBouncingCallback(Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;)V

    .line 74
    return-void
.end method

.method private InitListener()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mStatusUpdateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->jumpToStatusUpdateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->updateFeedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mAddAccountButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->addAccountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public setContinue(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setContinue(Z)V

    .line 150
    return-void
.end method

.method public setEmptyView(ZZ)V
    .registers 7
    .parameter "hasAccount"
    .parameter "hasData"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 183
    if-nez p2, :cond_29

    .line 185
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->setEmpty(Z)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mEmptyLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mStatusLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_25

    move v0, v1

    :goto_1a
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mAddAccountButton:Landroid/widget/Button;

    if-eqz p1, :cond_27

    :goto_21
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    :goto_24
    return-void

    :cond_25
    move v0, v2

    .line 188
    goto :goto_1a

    :cond_27
    move v2, v1

    .line 189
    goto :goto_21

    .line 193
    :cond_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mWidgetAllLayout:Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->setEmpty(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mEmptyLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method

.method public setLoading(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setRefresing(Z)V

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "loadingFlag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 158
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->refreshHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method
