.class public Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessage;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;,
        Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private Head_layout:Landroid/widget/LinearLayout;

.field Soft_RightButton:Landroid/widget/Button;

.field private Soft_btn:Landroid/widget/LinearLayout;

.field Soft_leftButton:Landroid/widget/Button;

.field public bAllCheckState:Z

.field private bSupportMessageDelete:Z

.field private bSupportUserName:Z

.field private mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCheckedFolderType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

.field private mContext:Landroid/content/Context;

.field mDeleteButtonListener:Landroid/view/View$OnClickListener;

.field public mDeleteMode:Z

.field protected mDialog:Landroid/app/ProgressDialog;

.field private mFolder:Ljava/lang/String;

.field private mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMessageId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field public mObserver:Landroid/database/ContentObserver;

.field mPhotoUrlMap:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

.field private mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;

.field private mSenderId:Ljava/lang/String;

.field private mSpType:I

.field private mSubject:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

.field private tSubject:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-string v0, "SocialHubSingleMessageActivity"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    .line 55
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 60
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportUserName:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportMessageDelete:Z

    .line 78
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 85
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 87
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mPhotoUrlMap:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

    .line 89
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 484
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    .line 948
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$6;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mObserver:Landroid/database/ContentObserver;

    .line 1119
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->changeCheckBoxState(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportUserName:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSenderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method private changeCheckBoxState(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V
    .registers 6
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_36

    .line 728
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 733
    :goto_f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 735
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 736
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 745
    :goto_24
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 746
    iget-object v0, p1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 749
    :goto_35
    return-void

    .line 730
    :cond_36
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_f

    .line 740
    :cond_3c
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 741
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_24

    .line 748
    :cond_44
    iget-object v0, p1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_35
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 286
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    .line 287
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_RightButton:Landroid/widget/Button;

    .line 290
    return-void
.end method

.method private setOnClickListener()V
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$5;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    return-void
.end method


# virtual methods
.method public drawTitle(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    if-ne v1, v2, :cond_f

    .line 414
    sget-object v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v2, "drawTitle()"

    const-string v3, "delete mode"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_e
    return-void

    .line 418
    :cond_f
    const/4 v0, 0x0

    .line 420
    .local v0, format:Ljava/lang/String;
    packed-switch p1, :pswitch_data_36

    .line 427
    const v1, 0x7f080102

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_e

    .line 423
    :pswitch_2b
    const v1, 0x7f080101

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_e

    .line 420
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2b
    .end packed-switch
.end method

.method public getListCount()I
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 868
    const/4 v9, 0x0

    .line 870
    .local v9, ret:I
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSenderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V

    .line 871
    .local v0, builder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 873
    .local v8, mSelection:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    move-object v4, v10

    :goto_29
    move-object v3, v10

    move-object v5, v10

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 875
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_39

    .line 877
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 878
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_39
    return v9

    .end local v7           #c:Landroid/database/Cursor;
    :cond_3a
    move-object v4, v8

    .line 873
    goto :goto_29
.end method

.method public getProfileImage(Landroid/view/View;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "url"

    .prologue
    .line 120
    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 122
    .local v4, image:Landroid/widget/ImageView;
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    .line 124
    .local v7, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-interface {v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 126
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_22

    .line 128
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_22
    return-void
.end method

.method public modeChange()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 359
    iget-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    if-eqz v3, :cond_3b

    .line 361
    iput-boolean v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    .line 362
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->tSubject:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v3, v5}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setVisibility(I)V

    .line 367
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_31

    .line 369
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 370
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_31

    .line 372
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->drawTitle(I)V

    .line 376
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_31
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v3, :cond_3a

    .line 378
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 408
    :cond_3a
    :goto_3a
    return-void

    .line 383
    :cond_3b
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    .line 384
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->tSubject:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 389
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v3, 0x18

    :try_start_4a
    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 390
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_56
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_4a .. :try_end_56} :catch_7c

    .line 399
    :goto_56
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v3, v6}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setVisibility(I)V

    .line 401
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setTitle(Ljava/lang/String;)V

    .line 403
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v3, :cond_3a

    .line 405
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3a

    .line 392
    :cond_74
    :try_start_74
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_7b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_74 .. :try_end_7b} :catch_7c

    goto :goto_56

    .line 394
    :catch_7c
    move-exception v1

    .line 396
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_56
.end method

.method public onApiCalled(I)V
    .registers 6
    .parameter

    .prologue
    .line 884
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 886
    packed-switch p1, :pswitch_data_30

    .line 893
    :goto_6
    return-void

    .line 889
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_6

    .line 886
    :pswitch_data_30
    .packed-switch 0x16
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    if-eqz v0, :cond_d

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->modeChange()V

    .line 298
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->notifyDataSetChanged()V

    .line 302
    :goto_c
    return-void

    .line 301
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->finish()V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v1, 0x7f030015

    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mPhotoUrlMap:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

    .line 140
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setUse(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setContentView(I)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setLayout(I)V

    .line 143
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 147
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_75

    .line 149
    const-string v0, "name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;

    .line 150
    const-string v0, "sp_type"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    .line 151
    const-string v0, "sender_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSenderId:Ljava/lang/String;

    .line 152
    const-string v0, "thread_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mThreadId:Ljava/lang/String;

    .line 153
    const-string v0, "_id_origin"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMessageId:Ljava/lang/String;

    .line 154
    const-string v0, "m_subject"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSubject:Ljava/lang/String;

    .line 155
    const-string v0, "taFolder"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mFolder:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v1, "5_SNS"

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 165
    :cond_75
    invoke-static {p0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 167
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->tSubject:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->tSubject:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v9

    .line 173
    .local v9, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    .line 174
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonText(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setTextHint(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setCountTextView(Landroid/widget/TextView;Z)V

    .line 181
    const/4 v0, 0x3

    :try_start_b8
    invoke-interface {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v3, :cond_d3

    .line 183
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 185
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setTitle(Ljava/lang/String;)V

    .line 188
    :cond_d3
    const/16 v0, 0xf

    invoke-interface {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportUserName:Z

    .line 189
    const/16 v0, 0x12

    invoke-interface {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportMessageDelete:Z

    .line 190
    const/16 v0, 0xb

    invoke-interface {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setSupportByte(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getButton()Landroid/widget/Button;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V
    :try_end_103
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_b8 .. :try_end_103} :catch_1a7

    .line 198
    :goto_103
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    .line 200
    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    .line 201
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_btn:Landroid/widget/LinearLayout;

    .line 202
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 204
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->drawButton()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_leftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Soft_RightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 210
    .local v8, layout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 215
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    .line 218
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;

    .line 223
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->Head_layout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 267
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setOnClickListener()V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->registerContentObserver()V

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->requestConnect()V

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->startQuery()V

    .line 271
    return-void

    .line 193
    .end local v8           #layout:Landroid/widget/LinearLayout;
    :catch_1a7
    move-exception v6

    .line 195
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v6}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_103
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 337
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 339
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V

    .line 348
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bSupportMessageDelete:Z

    if-eqz v0, :cond_16

    .line 307
    const v0, 0x7f080002

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 309
    :cond_16
    return v2
.end method

.method public onDeleteCheckedItem(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    .line 437
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteCheckedItem()"

    const-string v2, "Delete Method"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 448
    .local v5, removeMessage:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 451
    .local v4, foldertype:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 455
    .local v6, thread:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 457
    .local v3, account_id:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, index:I
    :goto_34
    array-length v0, v3

    if-ge v8, v0, :cond_42

    .line 459
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    .line 457
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 462
    :cond_42
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    const-string v2, "5_SNS"

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v9

    .line 474
    .local v9, returnDeleteLog:I
    if-gez v9, :cond_5f

    .line 476
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteCheckedItem()"

    const-string v2, "return value is -1!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->notifyDataSetChanged()V

    .line 482
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onDestroy()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->unregisterContentObserver()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    if-eqz v0, :cond_12

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->onDestroy()V

    .line 100
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    .line 103
    :cond_12
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    .line 109
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    .line 116
    :cond_28
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    const/4 v3, 0x0

    .line 811
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onMessageApiCalled(III)V

    .line 813
    packed-switch p2, :pswitch_data_34

    .line 827
    :goto_7
    :pswitch_7
    return-void

    .line 817
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->modeChange()V

    .line 818
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->notifyDataSetChanged()V

    .line 819
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0800ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 824
    :pswitch_22
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 813
    :pswitch_data_34
    .packed-switch 0x13
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 833
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onMessageReponse(IIZILjava/lang/String;)V

    .line 835
    packed-switch p2, :pswitch_data_36

    .line 865
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 839
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    .line 842
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 846
    :cond_10
    if-nez p3, :cond_1d

    .line 849
    const v0, 0x7f0800a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 852
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getListCount()I

    move-result v0

    if-lez v0, :cond_27

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->startQuery()V

    goto :goto_6

    .line 855
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->onBackPressed()V

    goto :goto_6

    .line 861
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 862
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6

    .line 835
    nop

    :pswitch_data_36
    .packed-switch 0x13
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 315
    sget-object v2, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v3, "onOptionsItemSelected()"

    const-string v4, "Delete onClick()"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 327
    :goto_11
    return v1

    .line 319
    :pswitch_12
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->setAllItemChecked()V

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->modeChange()V

    .line 322
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->notifyDataSetChanged()V

    .line 325
    const/4 v1, 0x1

    goto :goto_11

    .line 316
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 355
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 599
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 600
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 530
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 15
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 905
    packed-switch p4, :pswitch_data_4c

    .line 931
    :cond_5
    :goto_5
    return-void

    .line 908
    :pswitch_6
    sput-boolean v4, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 909
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 910
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 911
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->clearText()V

    .line 912
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 914
    invoke-static {p3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    .line 918
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v3, 0x1

    :try_start_2c
    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 920
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "5_SNS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_45
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_5

    .line 923
    :catch_46
    move-exception v0

    .line 925
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_5

    .line 905
    nop

    :pswitch_data_4c
    .packed-switch 0x16
        :pswitch_6
    .end packed-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 12
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
    .line 938
    packed-switch p4, :pswitch_data_12

    .line 946
    :goto_3
    return-void

    .line 941
    :pswitch_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 942
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->clearText()V

    .line 943
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_3

    .line 938
    :pswitch_data_12
    .packed-switch 0x16
        :pswitch_4
    .end packed-switch
.end method

.method public registerContentObserver()V
    .registers 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->SNS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    return-void
.end method

.method public setAllItemChecked()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 500
    sget-object v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v2, "setAllItemChecked()"

    const-string v3, "Set All Listitem checked"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    if-eqz v1, :cond_4c

    .line 503
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->bAllCheckState:Z

    if-eqz v1, :cond_50

    .line 505
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 506
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 507
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 509
    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-ne v1, v4, :cond_47

    .line 513
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_4d

    const-string v1, "inbox"

    :goto_3e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 521
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->notifyDataSetChanged()V

    .line 523
    :cond_4c
    return-void

    .line 514
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_4d
    const-string v1, "outbox"

    goto :goto_3e

    .line 519
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_50
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_47
.end method

.method startQuery()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 792
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSenderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V

    .line 793
    .local v0, builder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 795
    .local v9, mSelection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 796
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 797
    .local v5, projection:[Ljava/lang/String;
    sget-object v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->TAG:Ljava/lang/String;

    const-string v2, "startQuery()"

    invoke-static {v1, v2, v9}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/16 v1, 0xd

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I

    if-ne v1, v2, :cond_41

    .line 799
    const-string v1, "content://com.sec.android.app.provider.sns/message/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 800
    const/4 v5, 0x0

    .line 805
    :goto_2f
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mQueryHandler:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;

    const/16 v2, 0x2a

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v6, v10

    :goto_3a
    move-object v3, v10

    move-object v7, v10

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void

    .line 802
    :cond_41
    sget-object v4, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    .line 803
    sget-object v5, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessage;->PROJECTION:[Ljava/lang/String;

    goto :goto_2f

    :cond_46
    move-object v6, v9

    .line 805
    goto :goto_3a
.end method

.method public unregisterContentObserver()V
    .registers 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 281
    return-void
.end method
