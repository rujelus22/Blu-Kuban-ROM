.class public Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCheckedItemList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

.field private mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

.field public mAllitemCheckBox:Landroid/widget/CheckBox;

.field public mCancelButton:Landroid/widget/Button;

.field private mCheckedItemIdList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mClearButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field public mHeader:Landroid/widget/LinearLayout;

.field public mHeaderListener:Landroid/view/View$OnClickListener;

.field public mHeaderText:Lcom/sec/android/socialhub/view/AlphaTextView;

.field private mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

.field private mReqArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSoftKey:Landroid/widget/LinearLayout;

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;

.field public miListItemCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "MessageDeleteViewWrapper"

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V
    .registers 6
    .parameter "context"
    .parameter "adapter"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    .line 50
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeaderText:Lcom/sec/android/socialhub/view/AlphaTextView;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    .line 53
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCancelButton:Landroid/widget/Button;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    .line 63
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 142
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeaderListener:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 70
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->initialize()V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->initListener()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Lcom/sec/android/socialhub/state/tab/TabState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    return-object v0
.end method

.method public static getCheckedItemList()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    return-object v0
.end method

.method private initListener()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeaderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$1;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$2;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method public enableHeader(Z)V
    .registers 6
    .parameter "bFlag"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeaderText:Lcom/sec/android/socialhub/view/AlphaTextView;

    if-eqz p1, :cond_33

    const/16 v0, 0xff

    :goto_15
    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/view/AlphaTextView;->onSetAlpha(I)Z

    .line 170
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "enableHeader()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bFlag - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 168
    :cond_33
    const/16 v0, 0x78

    goto :goto_15
.end method

.method public getItemKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "appType"
    .parameter "messageId"

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqMap()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectAllQuery()Ljava/lang/String;
    .registers 16

    .prologue
    .line 380
    iget-object v11, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v11}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v1

    .line 382
    .local v1, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v11, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v11, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 386
    .local v9, selectionBuffer:Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v11

    const-string v12, "5_SNS"

    invoke-virtual {v11, v12}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getHash()Ljava/util/HashMap;

    move-result-object v0

    .line 387
    .local v0, Accountlist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 389
    .local v6, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 391
    .local v2, count:I
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_73

    .line 393
    if-eqz v8, :cond_37

    .line 394
    const-string v11, " and "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    :cond_37
    const-string v11, " not sp_type  in ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 400
    .local v5, key:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v10

    .line 403
    .local v10, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v11, 0x18

    :try_start_56
    invoke-interface {v10, v11}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v11

    if-nez v11, :cond_40

    .line 405
    if-lez v2, :cond_63

    .line 406
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_63
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_66
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_56 .. :try_end_66} :catch_69

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 410
    :catch_69
    move-exception v3

    .line 411
    .local v3, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_40

    .line 414
    .end local v3           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    .end local v5           #key:Ljava/lang/String;
    .end local v10           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_6e
    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_73
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, ret:Ljava/lang/String;
    sget-object v11, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v12, "getSelectAllQuery()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "selection = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  account = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " app = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-object v7
.end method

.method public initialize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f030009

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    .line 83
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    .line 84
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/AlphaTextView;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeaderText:Lcom/sec/android/socialhub/view/AlphaTextView;

    .line 85
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCancelButton:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    .line 91
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 567
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 569
    return-void
.end method

.method public onClickItem(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 7
    .parameter "wrapper"

    .prologue
    .line 670
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 672
    .local v0, bSupportDelete:Ljava/lang/Boolean;
    iget v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    const/16 v3, 0x258

    if-ne v2, v3, :cond_1e

    .line 674
    iget v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 677
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v2, 0x18

    :try_start_13
    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 678
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1d
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_13 .. :try_end_1d} :catch_76

    move-result-object v0

    .line 684
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 686
    iget-object v2, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->cache:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper$MessageItemCache;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_51

    .line 688
    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    iget v3, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    iget v3, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 696
    :goto_48
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->notifyDataSetChanged()V

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 703
    :goto_50
    return-void

    .line 693
    :cond_51
    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    iget v3, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    iget v3, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_48

    .line 701
    :cond_6c
    sget-object v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v3, "onClickItem"

    const-string v4, "Doesn\'t support to delete message"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 680
    .restart local v1       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_76
    move-exception v2

    goto :goto_1e
.end method

.method public onDeleteCheckedItem()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 480
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_99

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v2, array_message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v4, array_email:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v6, array_im:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;

    invoke-direct {v5}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;-><init>()V

    .line 487
    .local v5, array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 489
    .local v8, id:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 491
    .local v9, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v0, :sswitch_data_c4

    goto :goto_23

    .line 496
    :sswitch_3d
    iget-object v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 500
    :sswitch_43
    iget-object v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 503
    :sswitch_49
    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    iget-object v11, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    iget v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v12, :cond_5d

    const-string v0, "inbox"

    :goto_59
    invoke-virtual {v5, v1, v10, v11, v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_5d
    const-string v0, "outbox"

    goto :goto_59

    .line 509
    :sswitch_60
    iget-object v0, v9, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 514
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    :cond_66
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b3

    .line 518
    new-instance v3, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v2}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 519
    .local v3, mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLocked()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 521
    const v10, 0x7f08001c

    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;Ljava/util/ArrayList;Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;Ljava/util/ArrayList;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10, v0}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001b

    new-instance v10, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$5;

    invoke-direct {v10, p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$5;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v3}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->show()Landroid/app/AlertDialog;

    .line 561
    .end local v2           #array_message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
    .end local v4           #array_email:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;
    .end local v6           #array_im:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 562
    return-void

    .line 543
    .restart local v2       #array_message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
    .restart local v4       #array_email:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;
    .restart local v6       #array_im:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_9d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onBackPressed()V

    .line 544
    const-string v0, "1_Messaging"

    invoke-virtual {p0, v2, v0, v12}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 545
    const-string v0, "2_Email"

    invoke-virtual {p0, v4, v0, v12}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 546
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;)V

    .line 547
    const-string v0, "4_SevenIM"

    invoke-virtual {p0, v6, v0, v12}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_99

    .line 553
    .end local v3           #mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
    :cond_b3
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onBackPressed()V

    .line 554
    const-string v0, "2_Email"

    invoke-virtual {p0, v4, v0, v12}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 555
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;)V

    .line 556
    const-string v0, "4_SevenIM"

    invoke-virtual {p0, v6, v0, v12}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_99

    .line 491
    :sswitch_data_c4
    .sparse-switch
        0xc8 -> :sswitch_3d
        0x12c -> :sswitch_3d
        0x136 -> :sswitch_3d
        0x190 -> :sswitch_43
        0x19a -> :sswitch_43
        0x258 -> :sswitch_49
        0x2bc -> :sswitch_60
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 102
    :cond_a
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    .line 104
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_1c
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 113
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    .line 114
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    .line 115
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 117
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    const-string v2, "instance cleared"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public removeMessage(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;)V
    .registers 11
    .parameter "list"

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 575
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    const-string v2, "5_SNS"

    iget-object v3, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_spType:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_spType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_type:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_type:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_msg:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_msg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_thread:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;->array_thread:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v8

    .line 587
    .local v8, ret:I
    if-ltz v8, :cond_64

    .line 589
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v8           #ret:I
    :cond_64
    return-void
.end method

.method public removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 15
    .parameter
    .parameter "app_type"
    .parameter "isAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 596
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 598
    const-string v0, "1_Messaging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 600
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    const-string v2, "1_Messaging"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v10, v3, v9

    new-array v4, v7, [Ljava/lang/String;

    aput-object v10, v4, v9

    new-array v5, v7, [Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v8

    .line 612
    .local v8, ret:I
    if-ltz v8, :cond_47

    .line 614
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v8           #ret:I
    :cond_47
    :goto_47
    return-void

    .line 617
    :cond_48
    const-string v0, "2_Email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 619
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    const-string v2, "2_Email"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v10, v3, v9

    new-array v4, v7, [Ljava/lang/String;

    aput-object v10, v4, v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-array v6, v7, [Ljava/lang/String;

    aput-object v10, v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v8

    .line 631
    .restart local v8       #ret:I
    if-ltz v8, :cond_47

    .line 633
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 636
    .end local v8           #ret:I
    :cond_86
    const-string v0, "4_SevenIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 638
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->ICallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    const-string v2, "4_SevenIM"

    new-array v3, v7, [Ljava/lang/String;

    aput-object v10, v3, v9

    new-array v4, v7, [Ljava/lang/String;

    aput-object v10, v4, v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-array v6, v7, [Ljava/lang/String;

    aput-object v10, v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v8

    .line 650
    .restart local v8       #ret:I
    if-ltz v8, :cond_47

    .line 652
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mReqArray:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

.method public setAllItemChecked()V
    .registers 10

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getSelectAllQuery()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 432
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    if-eqz v6, :cond_59

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_59

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    :cond_21
    new-instance v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v6, v1}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 445
    .local v8, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    iget v1, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v2, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 447
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    iget v1, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v2, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    iget v1, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    iget-object v2, v8, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getItemKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 454
    .end local v8           #wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    :cond_59
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    .line 456
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "setAllItemChecked"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listItemCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_8f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7d} :catch_84

    .line 465
    if-eqz v6, :cond_83

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    const/4 v6, 0x0

    .line 471
    :cond_83
    :goto_83
    return-void

    .line 459
    :catch_84
    move-exception v7

    .line 461
    .local v7, e:Ljava/lang/Exception;
    :try_start_85
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8f

    .line 465
    if-eqz v6, :cond_83

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    const/4 v6, 0x0

    goto :goto_83

    .line 465
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_8f
    move-exception v0

    if-eqz v6, :cond_96

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    const/4 v6, 0x0

    :cond_96
    throw v0
.end method

.method public setDeleteModeEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_16

    .line 215
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateCheckStateEnabeld()V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 227
    :goto_15
    return-void

    .line 222
    :cond_16
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mSoftKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_15
.end method

.method public setListItemCount()V
    .registers 18

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v11

    .line 239
    .local v11, current:Lcom/sec/android/socialhub/state/BaseState;
    if-nez v11, :cond_14

    .line 241
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount()"

    const-string v3, "current is null. maybe activity is destroyed."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_13
    return-void

    .line 245
    :cond_14
    invoke-virtual {v11}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v7

    .line 247
    .local v7, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v7, :cond_24

    .line 249
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount()"

    const-string v3, "account is null."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 253
    :cond_24
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account info : account = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " app = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " accountID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-nez v1, :cond_68

    .line 257
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount()"

    const-string v3, "mQueryBuilder is null."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 261
    :cond_68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v1, v7}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, selection:Ljava/lang/String;
    if-eqz v4, :cond_172

    .line 264
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " and sp_type != 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    :goto_81
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v10, 0x0

    .line 275
    .local v10, count:Landroid/database/Cursor;
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date DESC LIMIT 2500"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 282
    if-eqz v10, :cond_17f

    .line 284
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    .line 286
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_17f

    .line 288
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 290
    .local v15, mAllItemkey:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    :cond_c7
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 294
    .local v8, app_type:I
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 295
    .local v16, messageId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, key:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 298
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_ed
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c7

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 304
    .local v9, clonedItem:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_101
    :goto_101
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #key:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 306
    .restart local v14       #key:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;

    invoke-virtual {v1, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 309
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11f
    .catchall {:try_start_9c .. :try_end_11f} :catchall_186
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_11f} :catch_120

    goto :goto_101

    .line 315
    .end local v8           #app_type:I
    .end local v9           #clonedItem:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #mAllItemkey:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #messageId:Ljava/lang/String;
    :catch_120
    move-exception v12

    .line 317
    .local v12, e:Ljava/lang/Exception;
    :try_start_121
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_186

    .line 321
    if-eqz v10, :cond_12a

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v10, 0x0

    .line 332
    .end local v12           #e:Ljava/lang/Exception;
    :cond_12a
    :goto_12a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_142

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$4;-><init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    :cond_142
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setListItemCount()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ListItemCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " checkedItemCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 266
    .end local v10           #count:Landroid/database/Cursor;
    :cond_172
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "sp_type != 2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_81

    .line 321
    .restart local v10       #count:Landroid/database/Cursor;
    :cond_17f
    if-eqz v10, :cond_12a

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v10, 0x0

    goto :goto_12a

    .line 321
    :catchall_186
    move-exception v1

    if-eqz v10, :cond_18d

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v10, 0x0

    :cond_18d
    throw v1
.end method

.method public setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 232
    return-void
.end method

.method public updateAllCheckState()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 351
    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    if-nez v0, :cond_23

    .line 353
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 365
    :goto_15
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 367
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    :goto_22
    return-void

    .line 357
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_15

    .line 362
    :cond_29
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_15

    .line 371
    :cond_2f
    iget v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->miListItemCnt:I

    if-nez v0, :cond_39

    .line 372
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_22

    .line 374
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_22
.end method

.method public updateCheckStateEnabeld()V
    .registers 9

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->getSelectAllQuery()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->enableHeader(Z)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_2b

    .line 202
    if-eqz v6, :cond_28

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v6, 0x0

    .line 209
    :cond_28
    :goto_28
    return-void

    .line 193
    :cond_29
    const/4 v0, 0x0

    goto :goto_1f

    .line 196
    :catch_2b
    move-exception v7

    .line 198
    .local v7, e:Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 202
    if-eqz v6, :cond_28

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v6, 0x0

    goto :goto_28

    .line 202
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3d

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v6, 0x0

    :cond_3d
    throw v0
.end method
