.class public Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;
.super Landroid/app/Activity;
.source "SocialHubAccountListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/adapter/AccountListAdapter$IAccountListInformation;
.implements Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;
    }
.end annotation


# instance fields
.field private bIsLoading:Z

.field private mAccountCnt:I

.field public mAccountViewMode:I

.field private mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

.field private mAddButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field public mCheckedAccountIdList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckedAccountList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/Button;

.field public mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mLayoutAddAccount:Landroid/widget/LinearLayout;

.field private mLayoutDeleteAccount:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mNoAccountLayout:Landroid/widget/LinearLayout;

.field private mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

.field private mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

.field protected mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

.field private mRequestCnt:I

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field public mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

.field private menu_delete:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    .line 76
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 80
    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z

    .line 81
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    .line 83
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    .line 85
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountCnt:I

    .line 87
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    return p1
.end method

.method static synthetic access$110(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Lcom/sec/android/socialhub/adapter/AccountListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public changeOptionMenuState(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 497
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 499
    :cond_9
    return-void
.end method

.method public getAccountCount()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 319
    const/4 v7, 0x0

    .line 321
    .local v7, ret:I
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "app!=\'1_Messaging\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_1b
    iput v7, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountCnt:I

    .line 332
    return v7
.end method

.method public getCheckedListCollection()Ljava/util/Map;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getViewMode()I
    .registers 2

    .prologue
    .line 779
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 756
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 758
    packed-switch p1, :pswitch_data_10

    .line 775
    :goto_6
    return-void

    .line 762
    :pswitch_7
    sparse-switch p2, :sswitch_data_16

    goto :goto_6

    .line 766
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->finish()V

    goto :goto_6

    .line 758
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    .line 762
    :sswitch_data_16
    .sparse-switch
        -0x1 -> :sswitch_b
        0xa -> :sswitch_b
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 517
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    if-nez v0, :cond_8

    .line 519
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 532
    :goto_7
    return-void

    .line 523
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setTitle()V

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->changeOptionMenuState(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->startQuery()V

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateSoftKeyLayout()V

    .line 528
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "onSavedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_12

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    .line 101
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    .line 103
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setContentView(I)V

    .line 104
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mListView:Landroid/widget/ListView;

    .line 105
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutAddAccount:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutDeleteAccount:Landroid/widget/LinearLayout;

    .line 107
    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHeaderView:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHeaderView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 109
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAddButton:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDeleteButton:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCancelButton:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mNoAccountLayout:Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 116
    new-instance v0, Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f03003e

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    .line 117
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    .line 118
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/AsyncQueryHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    const-string v1, "app!=\'1_Messaging\'"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;->setCondition(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setTitle()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setOnClickLintener()V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateSoftKeyLayout()V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 443
    const v0, 0x7f080002

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    .line 445
    return v2
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 679
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 681
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 683
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    .line 686
    :cond_a
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    if-eqz v1, :cond_21

    .line 688
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 689
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1a

    .line 691
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 692
    const/4 v0, 0x0

    .line 694
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->onDestroy()V

    .line 695
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    .line 698
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_21
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    if-eqz v1, :cond_2c

    .line 700
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->onDestroy()V

    .line 701
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    .line 704
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    if-eqz v1, :cond_35

    .line 705
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 707
    :cond_35
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    if-eqz v1, :cond_3e

    .line 708
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 710
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    if-eqz v1, :cond_42

    .line 713
    :cond_42
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    .line 714
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 4
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    .line 735
    return-void
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 742
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    .line 744
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mRequestCnt:I

    if-gtz v0, :cond_1a

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->bIsLoading:Z

    .line 747
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 748
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->refreshAllCheckState()V

    .line 751
    :cond_1a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 489
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 471
    :pswitch_d
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    .line 472
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->notifyDataSetChanged()V

    .line 473
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateSoftKeyLayout()V

    .line 474
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setTitle()V

    .line 476
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_c

    .line 478
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$6;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 468
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->unregisterObserver()V

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 513
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->getAccountCount()I

    move-result v0

    .line 453
    .local v0, count:I
    const/4 v1, 0x1

    .line 455
    .local v1, delete_visible:Z
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    if-eqz v2, :cond_f

    .line 457
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->menu_delete:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    .line 460
    :cond_f
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->changeOptionMenuState(Z)V

    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 460
    :cond_1c
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->registerObserver()V

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->startQuery()V

    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 507
    return-void
.end method

.method public refreshAllCheckState()V
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 338
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->startQuery()V

    .line 341
    return-void
.end method

.method public registerObserver()V
    .registers 5

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 537
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 540
    :goto_12
    return-void

    .line 539
    :cond_13
    const-string v0, "SocialHubAccountListActivity"

    const-string v1, "registerObserver()"

    const-string v2, "context is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public removeAccount(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_30

    .line 720
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 722
    .local v1, id:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 723
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 725
    .local v4, t:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aput-object v4, v1, v2

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_13

    .line 727
    .end local v4           #t:Ljava/lang/String;
    :cond_25
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v5

    invoke-virtual {v5, p0, p1, v1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeAccount(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 729
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:[Ljava/lang/String;
    .end local v2           #index:I
    :goto_2f
    return v5

    :cond_30
    const/4 v5, -0x1

    goto :goto_2f
.end method

.method public setAllItemChecked()V
    .registers 7

    .prologue
    .line 345
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 347
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_62

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    :cond_b
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 353
    .local v1, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 355
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 360
    const-string v2, "SocialHubAccountListActivity"

    const-string v3, "setAllItemChecked()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", collection - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateAllCheckState()V

    .line 368
    .end local v1           #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :goto_61
    return-void

    .line 366
    :cond_62
    const-string v2, "SocialHubAccountListActivity"

    const-string v3, "setAllItemChecked()"

    const-string v4, "cursor is null"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method public setOnClickLintener()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAddButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHeaderView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$5;-><init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method public setTitle()V
    .registers 3

    .prologue
    .line 435
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 436
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    :goto_f
    return-void

    .line 438
    :cond_10
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method public startQuery()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app!=\'1_Messaging\'"

    const-string v7, "_order, account_id asc"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "SocialHubAccountListActivity"

    const-string v1, "startQuery()"

    const-string v2, "query is called , selection is app!=\'1_Messaging\'"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public unregisterObserver()V
    .registers 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 546
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/UinboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 548
    :cond_f
    return-void
.end method

.method public updateAllCheckState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_23

    .line 373
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    :goto_f
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountCnt:I

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mCheckedAccountList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 379
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountCnt:I

    if-nez v0, :cond_29

    .line 380
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    :goto_22
    return-void

    .line 375
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_f

    .line 382
    :cond_29
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_22

    .line 386
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_22
.end method

.method public updateSoftKeyLayout()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 392
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mAccountViewMode:I

    if-nez v0, :cond_17

    .line 394
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutAddAccount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutDeleteAccount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    :goto_16
    return-void

    .line 400
    :cond_17
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutAddAccount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mLayoutDeleteAccount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_16
.end method

.method public updateViewmode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 409
    packed-switch p1, :pswitch_data_1e

    .line 420
    :goto_6
    return-void

    .line 412
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mNoAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 416
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->mNoAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 409
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
    .end packed-switch
.end method
