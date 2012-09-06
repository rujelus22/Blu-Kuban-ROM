.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
.implements Lcom/google/android/finsky/utils/AppSupport$RefundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;
    }
.end annotation


# static fields
.field private static sLastSelectedTabType:I


# instance fields
.field private mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

.field private mBreadcrumb:Ljava/lang/String;

.field private mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

.field mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mListContainer:Landroid/view/ViewGroup;

.field mMobileDataState:Z

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private final mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

.field private mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

.field private mUseActionBarTabs:Z

.field private mUseTwoColumnLayout:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 92
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refundDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/DocumentView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private clearState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 328
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080180

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, tabStrip:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 330
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .end local v0           #tabStrip:Landroid/view/View;
    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_24

    .line 334
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 335
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 336
    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 338
    :cond_24
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    .line 339
    return-void
.end method

.method private configureViewPager(ZZ)V
    .registers 9
    .parameter "shouldShowHeader"
    .parameter "hasSubscriptions"

    .prologue
    const/16 v5, 0x8

    .line 605
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08017f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 606
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_14

    .line 638
    :goto_13
    return-void

    .line 610
    :cond_14
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 611
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 613
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 615
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080180

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    .line 618
    .local v1, tabStrip:Landroid/support/v4/view/PagerTabStrip;
    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 620
    if-eqz p1, :cond_75

    .line 621
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 623
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 625
    .local v0, appColor:I
    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    .line 626
    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 627
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 630
    const/high16 v2, 0x42a0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 632
    const v2, 0x3f333333

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setNonPrimaryAlpha(F)V

    .line 637
    .end local v0           #appColor:I
    :goto_6f
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_13

    .line 634
    :cond_75
    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    goto :goto_6f
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .registers 2
    .parameter "dfeToc"

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;-><init>()V

    .line 123
    .local v0, fragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 125
    return-object v0
.end method

.method private recordState()V
    .registers 6

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 355
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_11

    .line 356
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 358
    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2d

    .line 360
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 361
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    :cond_2c
    :goto_2c
    return-void

    .line 363
    :cond_2d
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2c

    .line 365
    const/4 v1, -0x1

    .line 366
    .local v1, indexOfVisibleChild:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_33
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 367
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5c

    .line 368
    move v1, v0

    .line 373
    :cond_48
    if-ltz v1, :cond_2c

    .line 374
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 375
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    sget v4, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2c

    .line 366
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private refundDocument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"
    .parameter "accountName"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 532
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "refund_confirm"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 544
    :goto_c
    return-void

    .line 536
    :cond_d
    const v3, 0x7f07019f

    const v4, 0x7f0700d6

    const v5, 0x7f0700d7

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 538
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "account_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x4

    invoke-virtual {v0, p0, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 543
    const-string v3, "refund_confirm"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private showAccountSelectorIfNecessary(I)V
    .registers 5
    .parameter "selectedTabIndex"

    .prologue
    .line 597
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    if-eqz v1, :cond_13

    .line 598
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v0

    .line 599
    .local v0, selectedTabType:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    .line 602
    .end local v0           #selectedTabType:I
    :cond_13
    return-void

    .line 599
    .restart local v0       #selectedTabType:I
    :cond_14
    const/16 v1, 0x8

    goto :goto_10
.end method

.method private switchSelectedTab(I)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 570
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4c

    .line 571
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v6, :cond_f

    .line 575
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    .line 577
    :cond_f
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v6, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    .line 578
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4c

    .line 579
    if-ne p1, v1, :cond_47

    const/4 v2, 0x1

    .line 580
    .local v2, selectedTab:Z
    :goto_20
    if-eqz v2, :cond_49

    move v4, v5

    .line 581
    .local v4, visibility:I
    :goto_23
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 585
    .local v3, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    if-nez v3, :cond_41

    .line 586
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v7, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    check-cast v3, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 587
    .restart local v3       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 589
    :cond_41
    invoke-interface {v3, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .end local v0           #container:Landroid/view/View;
    .end local v2           #selectedTab:Z
    .end local v3           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v4           #visibility:I
    :cond_47
    move v2, v5

    .line 579
    goto :goto_20

    .line 580
    .restart local v2       #selectedTab:Z
    :cond_49
    const/16 v4, 0x8

    goto :goto_23

    .line 593
    .end local v1           #i:I
    .end local v2           #selectedTab:Z
    :cond_4c
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    .line 594
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 215
    const v0, 0x7f0400a0

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, breadcrumbText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 141
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f07016b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_17
    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 147
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    .line 149
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    .line 152
    if-eqz p1, :cond_4b

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 159
    :cond_4b
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 160
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 161
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mMobileDataState:Z

    .line 162
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 163
    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 180
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForAccount(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 183
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToLoading()V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->requestData()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    .line 189
    :goto_99
    return-void

    .line 187
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    goto :goto_99
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->setRetainInstance(Z)V

    .line 132
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    .line 385
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 386
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 318
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 510
    packed-switch p1, :pswitch_data_e

    .line 520
    :goto_3
    return-void

    .line 512
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_3

    .line 515
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_3

    .line 510
    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "scrollState"

    .prologue
    .line 390
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 394
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v0, :cond_8

    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchSelectedTab(I)V

    .line 403
    :goto_7
    return-void

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->onPageSelected(I)V

    goto :goto_7
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onPause()V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 10
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_36

    .line 502
    :pswitch_3
    const-string v3, "Unexpected requestCode %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :goto_12
    return-void

    .line 489
    :pswitch_13
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_12

    .line 493
    :pswitch_19
    const-string v3, "package_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v3, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_12

    .line 497
    .end local v0           #packageName:Ljava/lang/String;
    :pswitch_25
    const-string v3, "package_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, refundPackage:Ljava/lang/String;
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, refundAccount:Ljava/lang/String;
    invoke-static {v2, v1, p0}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    goto :goto_12

    .line 486
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_19
        :pswitch_3
        :pswitch_13
        :pswitch_25
    .end packed-switch
.end method

.method public onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V
    .registers 5
    .parameter "result"
    .parameter "packageName"

    .prologue
    .line 554
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 567
    :goto_b
    :pswitch_b
    return-void

    .line 556
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_b

    .line 563
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AppSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refresh()V

    goto :goto_b

    .line 554
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onRefundStart()V
    .registers 1

    .prologue
    .line 549
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onResume()V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->recordState()V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 345
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method public openDocDetails(Lcom/google/android/finsky/api/model/Document;)V
    .registers 8
    .parameter "document"

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const-string v3, "myApps"

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_f
    :goto_f
    return-void

    .line 409
    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    if-eqz v0, :cond_f

    .line 411
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    .line 412
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->setVisibility(I)V

    .line 414
    :cond_22
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/api/model/Document;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    goto :goto_f
.end method

.method public rebindActionBar()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 314
    return-void
.end method

.method public rebindViews()V
    .registers 25

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->switchToData()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindActionBar()V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    if-eqz v2, :cond_13

    .line 307
    :goto_12
    return-void

    .line 234
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v12

    .line 236
    .local v12, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v11

    .line 239
    .local v11, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 241
    .local v15, fragmentView:Landroid/view/View;
    const v2, 0x7f08009d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 242
    .local v21, topBanner:Landroid/view/View;
    if-eqz v21, :cond_65

    .line 243
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    const v2, 0x7f08009e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 245
    .local v18, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 247
    .local v13, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v13, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 248
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const v2, 0x7f08009c

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 251
    .local v22, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 254
    .end local v13           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v18           #pinstripeOverlay:Landroid/view/View;
    .end local v22           #topBannerLeading:Landroid/view/View;
    :cond_65
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-nez v2, :cond_167

    const/16 v19, 0x1

    .line 255
    .local v19, shouldShowHeader:Z
    :goto_6d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->hasSubscriptions()Z

    move-result v8

    .line 257
    .local v8, hasSubscriptions:Z
    new-instance v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->configureViewPager(ZZ)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsTabbedAdapter.CurrentTabType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 269
    .local v14, defaultTabType:I
    :goto_b9
    const/4 v2, 0x1

    sput v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    .line 270
    const/16 v17, 0x0

    .line 271
    .local v17, indexOfSelectedItem:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_da

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabType(I)I

    move-result v2

    if-ne v2, v14, :cond_16f

    .line 273
    move/from16 v17, v16

    .line 278
    :cond_da
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseActionBarTabs:Z

    if-eqz v2, :cond_1bf

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080186

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CustomActionBar;->clearTabs()V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    const/16 v16, 0x0

    :goto_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_178

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-interface {v2, v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 286
    .local v20, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_173

    const/16 v23, 0x0

    .line 287
    .local v23, visibility:I
    :goto_13a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_176

    const/4 v2, 0x1

    :goto_15f
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 282
    add-int/lit8 v16, v16, 0x1

    goto :goto_101

    .line 254
    .end local v8           #hasSubscriptions:Z
    .end local v14           #defaultTabType:I
    .end local v16           #i:I
    .end local v17           #indexOfSelectedItem:I
    .end local v19           #shouldShowHeader:Z
    .end local v20           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v23           #visibility:I
    :cond_167
    const/16 v19, 0x0

    goto/16 :goto_6d

    .line 266
    .restart local v8       #hasSubscriptions:Z
    .restart local v19       #shouldShowHeader:Z
    :cond_16b
    sget v14, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->sLastSelectedTabType:I

    goto/16 :goto_b9

    .line 271
    .restart local v14       #defaultTabType:I
    .restart local v16       #i:I
    .restart local v17       #indexOfSelectedItem:I
    :cond_16f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c0

    .line 286
    .restart local v20       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    :cond_173
    const/16 v23, 0x8

    goto :goto_13a

    .line 290
    .restart local v23       #visibility:I
    :cond_176
    const/4 v2, 0x0

    goto :goto_15f

    .line 293
    .end local v20           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    .end local v23           #visibility:I
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mCustomActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->setSelectedTab(I)V

    .line 300
    :goto_181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mUseTwoColumnLayout:Z

    if-eqz v2, :cond_1ac

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mAccountSelector:Lcom/google/android/finsky/layout/AccountSelectorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 303
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->showAccountSelectorIfNecessary(I)V

    .line 306
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f080187

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/DocumentView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;

    goto/16 :goto_12

    .line 295
    :cond_1bf
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 296
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->onPageScrolled(IFI)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_181
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->rebindViews()V

    .line 211
    :goto_9
    return-void

    .line 209
    :cond_a
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_9
.end method

.method protected requestData()V
    .registers 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->clearState()V

    .line 323
    return-void
.end method
