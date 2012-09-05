.class public Lcom/sec/android/socialhub/activity/SocialHubMainActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubMainActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/badge/IBadgeHandler;
.implements Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;


# static fields
.field public static isChangeData:Z

.field public static isUpdateProgress:Z


# instance fields
.field private indicatorTextView:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mCurrentFeedAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field public mCurrentMessageAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field private mDialogCheckbox:Landroid/widget/CheckBox;

.field mIsPause:Z

.field public mMenu:Landroid/view/Menu;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mShowNeverAgain:Z

.field mShowNeverListener:Landroid/view/View$OnClickListener;

.field private mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isChangeData:Z

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isUpdateProgress:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mMenu:Landroid/view/Menu;

    .line 103
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mCurrentMessageAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 104
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mCurrentFeedAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 110
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 111
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    .line 112
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->indicatorTextView:Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 538
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mIsPause:Z

    .line 593
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverListener:Landroid/view/View$OnClickListener;

    .line 608
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->indicatorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initSingleton()V
    .registers 2

    .prologue
    .line 195
    invoke-static {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/SocialHubSettings;->get(Landroid/content/Context;)Lcom/sec/android/socialhub/SocialHubSettings;

    .line 198
    return-void
.end method

.method private initTabView()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 238
    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 239
    const v1, 0x1020013

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    .line 241
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup()V

    .line 243
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v3, "Feeds"

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0101

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(I)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 244
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v3, "Messages"

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0102

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(I)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    .local v0, tabIndicator:Landroid/view/ViewGroup;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->indicatorTextView:Landroid/widget/TextView;

    .line 249
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 263
    return-void
.end method

.method private requestDbSync()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v1

    .line 807
    .local v1, requester:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;
    if-eqz v1, :cond_22

    .line 809
    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    .line 810
    .local v0, connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    if-eqz v0, :cond_18

    .line 812
    const-string v2, "1_Messaging"

    invoke-virtual {v0, p0, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestDBSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v2, "4_SevenIM"

    invoke-virtual {v0, p0, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestDBSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v0           #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :goto_17
    return-void

    .line 817
    .restart local v0       #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :cond_18
    const-string v2, "SocialHubMainActivity"

    const-string v3, "requestDbSync()"

    const-string v4, "connector is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 822
    .end local v0           #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :cond_22
    const-string v2, "SocialHubMainActivity"

    const-string v3, "requestDbSync()"

    const-string v4, "requester is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method public InitLintener()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->setOnStateChangedListener(Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;)V

    .line 301
    return-void
.end method

.method public backPressed()V
    .registers 1

    .prologue
    .line 534
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onBackPressed()V

    .line 535
    return-void
.end method

.method protected errorHandle(IIIIIILjava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    .line 890
    packed-switch p3, :pswitch_data_8

    .line 897
    invoke-super/range {p0 .. p7}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->errorHandle(IIIIIILjava/lang/String;)V

    .line 901
    :pswitch_6
    return-void

    .line 890
    nop

    :pswitch_data_8
    .packed-switch 0x19
        :pswitch_6
    .end packed-switch
.end method

.method public onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 498
    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getActionType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 500
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 501
    .local v0, view:Lcom/sec/android/socialhub/messagelist/MessageListView;
    instance-of v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;

    if-eqz v1, :cond_21

    .line 503
    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->onChangeAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 507
    .end local v0           #view:Lcom/sec/android/socialhub/messagelist/MessageListView;
    :cond_21
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 509
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 519
    :cond_30
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 1037
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1039
    sparse-switch p1, :sswitch_data_e6

    .line 1158
    :cond_8
    :goto_8
    :sswitch_8
    return-void

    .line 1045
    :sswitch_9
    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 1046
    if-eqz v0, :cond_8

    .line 1048
    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->notificationPost(Landroid/content/Context;[I)I

    .line 1049
    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->updateNotificationCount()V

    goto :goto_8

    .line 1055
    :sswitch_21
    packed-switch p2, :pswitch_data_120

    goto :goto_8

    .line 1058
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto :goto_8

    .line 1068
    :sswitch_39
    packed-switch p2, :pswitch_data_126

    :pswitch_3c
    goto :goto_8

    .line 1072
    :pswitch_3d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto :goto_8

    .line 1082
    :sswitch_51
    packed-switch p2, :pswitch_data_130

    goto :goto_8

    .line 1085
    :pswitch_55
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto :goto_8

    .line 1096
    :sswitch_69
    packed-switch p2, :pswitch_data_136

    :pswitch_6c
    goto :goto_8

    .line 1100
    :pswitch_6d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto :goto_8

    .line 1109
    :sswitch_81
    packed-switch p2, :pswitch_data_140

    goto :goto_8

    .line 1112
    :pswitch_85
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto/16 :goto_8

    .line 1119
    :sswitch_9a
    packed-switch p2, :pswitch_data_146

    goto/16 :goto_8

    .line 1122
    :pswitch_9f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto/16 :goto_8

    .line 1129
    :sswitch_b4
    packed-switch p2, :pswitch_data_14c

    goto/16 :goto_8

    .line 1132
    :pswitch_b9
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->refreshActivity()V

    goto/16 :goto_8

    .line 1141
    :sswitch_ce
    if-eq p2, v0, :cond_8

    .line 1145
    if-nez p2, :cond_8

    .line 1147
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mContext:Landroid/content/Context;

    const-string v1, "IM signning operation was canceled"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1154
    :sswitch_df
    if-ne p2, v0, :cond_8

    .line 1155
    invoke-static {p0, p1, p3}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->onHandleResult(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 1039
    :sswitch_data_e6
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_39
        0x3 -> :sswitch_51
        0x4 -> :sswitch_69
        0x5 -> :sswitch_81
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_9
        0x8 -> :sswitch_b4
        0xa -> :sswitch_df
        0xb -> :sswitch_df
        0xc -> :sswitch_df
        0xd -> :sswitch_df
        0x190 -> :sswitch_8
        0x1f4 -> :sswitch_ce
    .end sparse-switch

    .line 1055
    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch

    .line 1068
    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3d
    .end packed-switch

    .line 1082
    :pswitch_data_130
    .packed-switch 0x3
        :pswitch_55
    .end packed-switch

    .line 1096
    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6d
    .end packed-switch

    .line 1109
    :pswitch_data_140
    .packed-switch 0xa
        :pswitch_85
    .end packed-switch

    .line 1119
    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_9f
    .end packed-switch

    .line 1129
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_b9
    .end packed-switch
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter

    .prologue
    .line 845
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2e

    .line 847
    sparse-switch p1, :sswitch_data_8e

    .line 884
    :goto_7
    :sswitch_7
    monitor-exit p0

    return-void

    .line 850
    :sswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_7

    .line 845
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 859
    :sswitch_31
    :try_start_31
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_7

    .line 864
    :sswitch_43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_7

    .line 873
    :sswitch_68
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_7

    .line 878
    :sswitch_7a
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_8b
    .catchall {:try_start_31 .. :try_end_8b} :catchall_2e

    goto/16 :goto_7

    .line 847
    nop

    :sswitch_data_8e
    .sparse-switch
        0x4 -> :sswitch_31
        0x5 -> :sswitch_7
        0x7 -> :sswitch_43
        0xb -> :sswitch_7a
        0x10 -> :sswitch_68
        0x28 -> :sswitch_9
        0x2b -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 408
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onBackPressed()"

    const-string v3, "back key pressed"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    .line 412
    .local v0, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v0, :cond_14

    .line 413
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 414
    :cond_14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 582
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 584
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    .line 586
    .local v0, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v0, :cond_e

    .line 588
    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/tab/TabState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 590
    :cond_e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/sec/android/socialhub/split/HubSplitSetting;->updateSplitSettingValue(Landroid/content/Context;)V

    .line 124
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 126
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onCreate()"

    const-string v2, "Social Hub UI start to create."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.socialhub.SERVICE_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->initSingleton()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountCount()I

    move-result v0

    if-ge v0, v6, :cond_63

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->getShowFirstLaunchValue(Landroid/content/Context;)I

    move-result v0

    .line 136
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onCreate()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_________________ current First Launch status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eq v0, v6, :cond_55

    const/4 v1, -0x1

    if-ne v0, v1, :cond_63

    :cond_55
    sget-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->isLaunchedAlready:Z

    if-nez v0, :cond_63

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    :cond_63
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setUse(Z)V

    .line 147
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setLayout(I)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setTitleBarVisibility(Z)V

    .line 151
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;

    const v1, 0x7f0b0102

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;

    invoke-virtual {v2, p0, v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->onCreate(Landroid/content/Context;Lcom/sec/android/socialhub/flipper/FeedViewFlipper;Lcom/sec/android/socialhub/flipper/MessageViewFlipper;)V

    .line 153
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->initTabView()V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->InitLintener()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->registerObserver()V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->requestConnect()V

    .line 161
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onCreate()"

    const-string v2, "Social Hub UI end"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v8, 0x7f08001c

    const v7, 0x7f08001b

    const v5, 0x7f03000e

    const v4, 0x1020001

    const/4 v6, 0x0

    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x0

    .line 619
    .local v0, alertDialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_aa

    .line 704
    :goto_12
    return-object v0

    .line 623
    :pswitch_13
    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 624
    .local v2, contents:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;

    .line 625
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    const v4, 0x7f0b002f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 628
    .local v3, textView:Landroid/widget/TextView;
    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 630
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 633
    const v4, 0x7f08000a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$5;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$5;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 656
    goto :goto_12

    .line 661
    .end local v2           #contents:Landroid/view/View;
    .end local v3           #textView:Landroid/widget/TextView;
    :pswitch_5e
    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 662
    .restart local v2       #contents:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;

    .line 663
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    const v4, 0x7f0b002f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 666
    .restart local v3       #textView:Landroid/widget/TextView;
    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 668
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 671
    const v4, 0x7f08001d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$8;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$8;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$7;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$7;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 619
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_13
        :pswitch_5e
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 710
    if-nez p1, :cond_d

    .line 712
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onCreateOptionsMenu()"

    const-string v2, "menu is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x0

    .line 717
    :goto_c
    return v0

    .line 715
    :cond_d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->changeOptionMenu(Landroid/view/Menu;)V

    .line 716
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 717
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 394
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onDestroy()V

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setSyncEnabled(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->unregisterObserver()V

    .line 400
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->onDestroy(Landroid/content/Context;)V

    .line 402
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onDestroy"

    const-string v2, "onDestroy is called!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1163
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onMessageApiCalled()"

    const-string v2, "called!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1170
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onMessageReponse()"

    const-string v2, "called!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    const-string v2, "android.intent.action.socialhub.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 172
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    if-eqz v2, :cond_34

    .line 174
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    .line 175
    .local v0, feedTab:Lcom/sec/android/socialhub/state/tab/FeedTabState;
    if-eqz v0, :cond_34

    .line 177
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->changeState(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 179
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/state/FeedNormalState;

    .line 180
    .local v1, normal_state:Lcom/sec/android/socialhub/state/FeedNormalState;
    if-eqz v1, :cond_34

    .line 182
    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-direct {v2, p0, v4, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 183
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/FeedNormalState;->requestRefresh()V

    .line 187
    .end local v0           #feedTab:Lcom/sec/android/socialhub/state/tab/FeedTabState;
    .end local v1           #normal_state:Lcom/sec/android/socialhub/state/FeedNormalState;
    :cond_34
    const-string v2, "SocialHubMainActivity"

    const-string v3, "onNewIntent()"

    const-string v4, "It\'s from other Activity or Notification. so refresh now!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_3d
    const-string v2, "SocialHubMainActivity"

    const-string v3, "onNewIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receved new intent action - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 723
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 724
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 725
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onPause()V

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isReqServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setSyncEnabled(Z)V

    .line 468
    :cond_d
    return-void
.end method

.method public onRefreshView(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;>;"
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onRefreshView(Ljava/util/ArrayList;)V

    .line 526
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;

    .line 528
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    goto :goto_7

    .line 530
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    :cond_17
    return-void
.end method

.method public onReqServiceConnected()V
    .registers 1

    .prologue
    .line 798
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onReqServiceConnected()V

    .line 800
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->requestDbSync()V

    .line 801
    return-void
.end method

.method public onRequestFocusChange()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 305
    const/4 v8, 0x0

    .line 307
    .local v8, tab:Landroid/view/View;
    const/4 v0, 0x0

    .line 309
    .local v0, bSetFocus:Z
    const/4 v4, 0x0

    .line 311
    .local v4, current:Lcom/sec/android/socialhub/state/BaseState;
    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v9}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v7

    .line 313
    .local v7, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-nez v7, :cond_16

    .line 315
    const-string v9, "SocialHubMainActivity"

    const-string v10, "onRequestFocusChange()"

    const-string v11, "state is null!!"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_15
    :goto_15
    return-void

    .line 319
    :cond_16
    invoke-virtual {v7}, Lcom/sec/android/socialhub/state/tab/TabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v5

    .line 320
    .local v5, flipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
    invoke-virtual {v5}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v6

    check-cast v6, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    .line 322
    .local v6, listview:Lcom/sec/android/socialhub/view/SearchBaseLayout;
    instance-of v9, v7, Lcom/sec/android/socialhub/state/tab/FeedTabState;

    if-eqz v9, :cond_66

    .line 324
    invoke-virtual {v7}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v4

    .line 326
    if-nez v4, :cond_34

    .line 328
    const-string v9, "SocialHubMainActivity"

    const-string v10, "onRequestFocusChange()"

    const-string v11, "current is null!! in FeedTabState"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 332
    :cond_34
    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 334
    instance-of v9, v4, Lcom/sec/android/socialhub/state/FeedNormalState;

    if-eqz v9, :cond_64

    .line 336
    const/4 v0, 0x1

    .line 366
    :goto_44
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 368
    if-ne v0, v11, :cond_88

    .line 370
    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getAccountBar()Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    move-result-object v1

    .line 371
    .local v1, bar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v2

    .line 372
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v3

    .line 373
    .local v3, button_id:I
    invoke-virtual {v8, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 374
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto :goto_15

    .line 340
    .end local v1           #bar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;
    .end local v2           #button:Landroid/widget/Button;
    .end local v3           #button_id:I
    :cond_64
    const/4 v0, 0x0

    goto :goto_44

    .line 346
    :cond_66
    invoke-virtual {v7}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v4

    .line 348
    if-nez v4, :cond_76

    .line 350
    const-string v9, "SocialHubMainActivity"

    const-string v10, "onRequestFocusChange()"

    const-string v11, "current is null!! in MessageTabState"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 354
    :cond_76
    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 356
    instance-of v9, v4, Lcom/sec/android/socialhub/state/MessageNormalState;

    if-eqz v9, :cond_86

    .line 358
    const/4 v0, 0x1

    goto :goto_44

    .line 362
    :cond_86
    const/4 v0, 0x0

    goto :goto_44

    .line 378
    :cond_88
    invoke-virtual {v5}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 380
    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getAccountBar()Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    move-result-object v1

    .line 382
    .restart local v1       #bar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v2

    .line 384
    .restart local v2       #button:Landroid/widget/Button;
    instance-of v9, v4, Lcom/sec/android/socialhub/state/MessageSearchState;

    if-nez v9, :cond_9f

    instance-of v9, v4, Lcom/sec/android/socialhub/state/FeedSearchState;

    if-eqz v9, :cond_15

    .line 386
    :cond_9f
    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getSearchBar()Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto/16 :goto_15
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 444
    invoke-static {p0}, Lcom/sec/android/socialhub/split/HubSplitSetting;->updateSplitSettingValue(Landroid/content/Context;)V

    .line 446
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isReqServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setSyncEnabled(Z)V

    .line 451
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->requestDbSync()V

    .line 457
    :goto_13
    return-void

    .line 455
    :cond_14
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onResume()"

    const-string v2, "req_service is not connected!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    const/4 v3, 0x4

    .line 202
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    if-nez v1, :cond_12

    .line 206
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onSaveInstanceState()"

    const-string v3, "StateMgr is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_11
    return-void

    .line 209
    :cond_12
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    if-nez v1, :cond_24

    .line 211
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onSaveInstanceState()"

    const-string v3, "getCurrent tab is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 215
    :cond_24
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 217
    .local v0, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v0, :cond_3a

    .line 219
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onSaveInstanceState()"

    const-string v3, "getAccountInfo is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 224
    :cond_3a
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v1, v2

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    if-nez v1, :cond_9d

    const/4 v1, -0x1

    :goto_79
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    if-eqz v1, :cond_8e

    .line 231
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :cond_8e
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getLastPage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 229
    :cond_9d
    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_79
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    if-nez v3, :cond_f

    .line 733
    const-string v3, "SocialHubMainActivity"

    const-string v4, "onSearchRequested()"

    const-string v5, "mStateMgr is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_e
    :goto_e
    return v2

    .line 737
    :cond_f
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    .line 738
    .local v1, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v1, :cond_e

    .line 743
    instance-of v3, v1, Lcom/sec/android/socialhub/state/tab/FeedTabState;

    if-eqz v3, :cond_33

    .line 745
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 746
    .local v0, current:Lcom/sec/android/socialhub/state/BaseState;
    if-eqz v0, :cond_e

    .line 750
    instance-of v2, v0, Lcom/sec/android/socialhub/state/FeedSearchState;

    if-eqz v2, :cond_2d

    .line 752
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 776
    :goto_28
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSearchRequested()Z

    move-result v2

    goto :goto_e

    .line 756
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->handleSearchrequest()V

    goto :goto_28

    .line 761
    .end local v0           #current:Lcom/sec/android/socialhub/state/BaseState;
    :cond_33
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 762
    .restart local v0       #current:Lcom/sec/android/socialhub/state/BaseState;
    if-eqz v0, :cond_e

    .line 766
    instance-of v2, v0, Lcom/sec/android/socialhub/state/MessageSearchState;

    if-eqz v2, :cond_41

    .line 768
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    goto :goto_28

    .line 772
    :cond_41
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->handleSearchrequest()V

    goto :goto_28
.end method

.method public onServiceConnected()V
    .registers 6

    .prologue
    .line 782
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 784
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_28

    .line 786
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getStateFromShared()V

    .line 787
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 793
    :goto_27
    return-void

    .line 791
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->restoreInstanceState()V

    goto :goto_27
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 906
    const-string v0, "SocialHubMainActivity"

    const-string v1, "onSnsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reqtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sparse-switch p4, :sswitch_data_116

    .line 963
    :cond_34
    :goto_34
    return-void

    .line 911
    :sswitch_35
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_3e

    .line 912
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 914
    :cond_3e
    instance-of v0, p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_34

    check-cast p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->onGetDeepLink(II)V

    goto :goto_34

    .line 918
    :sswitch_48
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_34

    .line 922
    :sswitch_62
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_6b

    .line 923
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 925
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_34

    .line 930
    :sswitch_84
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_8d

    .line 931
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 933
    :cond_8d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_34

    .line 937
    :sswitch_a6
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto/16 :goto_34

    .line 941
    :sswitch_c1
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_ca

    .line 942
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 944
    :cond_ca
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto/16 :goto_34

    .line 949
    :sswitch_e5
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_ee

    .line 950
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 952
    :cond_ee
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto/16 :goto_34

    .line 956
    :sswitch_109
    invoke-static {v8}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 957
    if-eqz v0, :cond_34

    .line 959
    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->updateNotificationCount()V

    goto/16 :goto_34

    .line 908
    :sswitch_data_116
    .sparse-switch
        0x4 -> :sswitch_62
        0x5 -> :sswitch_48
        0x7 -> :sswitch_84
        0xb -> :sswitch_e5
        0x10 -> :sswitch_c1
        0x19 -> :sswitch_109
        0x28 -> :sswitch_35
        0x2b -> :sswitch_a6
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 20
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_9

    .line 973
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 975
    :cond_9
    sparse-switch p4, :sswitch_data_d4

    .line 1032
    :cond_c
    :goto_c
    return-void

    .line 978
    :sswitch_d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_16

    .line 979
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 981
    :cond_16
    instance-of v0, p1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_c

    goto :goto_c

    .line 989
    :sswitch_1b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_c

    .line 994
    :sswitch_38
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_41

    .line 995
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 997
    :cond_41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_c

    .line 1002
    :sswitch_5e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_c

    .line 1003
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_c

    .line 1008
    :sswitch_68
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto :goto_c

    .line 1012
    :sswitch_85
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_8e

    .line 1013
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1015
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto/16 :goto_c

    .line 1020
    :sswitch_ac
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_b5

    .line 1021
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1023
    :cond_b5
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChange(Landroid/net/Uri;IIIZZLjava/lang/String;Z)V

    goto/16 :goto_c

    .line 975
    nop

    :sswitch_data_d4
    .sparse-switch
        0x4 -> :sswitch_38
        0x5 -> :sswitch_1b
        0x7 -> :sswitch_5e
        0xb -> :sswitch_ac
        0x10 -> :sswitch_85
        0x28 -> :sswitch_d
        0x2b -> :sswitch_68
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 421
    invoke-static {p0}, Lcom/sec/android/socialhub/split/HubSplitSetting;->updateSplitSettingValue(Landroid/content/Context;)V

    .line 423
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStart()V

    .line 425
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mIsPause:Z

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isServiceConneceted()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 429
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    .line 430
    .local v0, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v0, :cond_1e

    .line 432
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onResume(Landroid/content/Context;)V

    .line 439
    .end local v0           #state:Lcom/sec/android/socialhub/state/tab/TabState;
    :cond_1e
    :goto_1e
    return-void

    .line 437
    :cond_1f
    const-string v1, "SocialHubMainActivity"

    const-string v2, "onStart()"

    const-string v3, "service is not connected!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 474
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStop()V

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isReqServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 478
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->setSyncEnabled(Z)V

    .line 481
    :cond_e
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    .line 483
    .local v0, state:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v0, :cond_1d

    .line 485
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onPause(Landroid/content/Context;)V

    .line 488
    :cond_1d
    sput-boolean v2, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->isChangeData:Z

    .line 489
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mIsPause:Z

    .line 491
    return-void
.end method

.method public registerObserver()V
    .registers 2

    .prologue
    .line 569
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/badge/BadgeManager;->registerBadgeInterface(Lcom/sec/android/socialhub/badge/IBadgeHandler;)V

    .line 570
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateLocalBadge(Landroid/content/Context;)V

    .line 571
    return-void
.end method

.method public restoreInstanceState()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 828
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 829
    .local v1, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 830
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 831
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 832
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 833
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 834
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 835
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 836
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->PREF_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 838
    .local v0, lastPage:I
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->restoreLastPage(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 839
    return-void
.end method

.method public setSyncEnabled(Z)V
    .registers 7
    .parameter "value"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v1

    .line 544
    .local v1, requester:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;
    if-eqz v1, :cond_1a

    .line 546
    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    .line 547
    .local v0, connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    if-eqz v0, :cond_10

    .line 549
    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->setSyncEnabled(Z)Z

    .line 560
    .end local v0           #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :goto_f
    return-void

    .line 553
    .restart local v0       #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :cond_10
    const-string v2, "SocialHubMainActivity"

    const-string v3, "setSyncEnabled()"

    const-string v4, "connector is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 558
    .end local v0           #connector:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    :cond_1a
    const-string v2, "SocialHubMainActivity"

    const-string v3, "setSyncEnabled()"

    const-string v4, "requester is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public unregisterObserver()V
    .registers 2

    .prologue
    .line 575
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/badge/BadgeManager;->unregisterBadgeInterface(Lcom/sec/android/socialhub/badge/IBadgeHandler;)V

    .line 576
    return-void
.end method

.method public updateBadge(I)V
    .registers 6
    .parameter

    .prologue
    .line 1175
    .line 1177
    const-string v0, "SocialHubMainActivity"

    const-string v1, "updateBadge()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1223
    return-void
.end method
