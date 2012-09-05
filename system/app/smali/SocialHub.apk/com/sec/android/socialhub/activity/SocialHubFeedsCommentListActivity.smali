.class public Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;
.super Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.source "SocialHubFeedsCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;,
        Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bIsLoaded:Z

.field private bSupportComment:Z

.field private imeMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mActivityId:Ljava/lang/String;

.field private mActorId:Ljava/lang/String;

.field mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

.field private mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

.field private mCommentSubId:Ljava/lang/String;

.field private mCommentType:Ljava/lang/String;

.field private mCommonTwoButton:Landroid/widget/LinearLayout;

.field private mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

.field private mCursor:Landroid/database/Cursor;

.field private mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

.field private mFromActivity:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field private mIsCommantable:Ljava/lang/String;

.field private mIsFavorite:Ljava/lang/String;

.field private mIsPosting:Z

.field private mIsRecommendable:Ljava/lang/String;

.field private mLeftButton:Landroid/widget/Button;

.field private mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

.field mLikeClickListener:Landroid/view/View$OnClickListener;

.field private mLikeCursor:Landroid/database/Cursor;

.field private mMenu:Landroid/view/Menu;

.field mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mProfileRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvCommentCount:I

.field private mRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRightButton:Landroid/widget/Button;

.field private mSelection:Ljava/lang/String;

.field private mServiceProviderType:I

.field private mTargetId:Ljava/lang/String;

.field private mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;-><init>()V

    .line 74
    const-string v0, "SocialHubFeedsCommentListActivity"

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->TAG:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z

    .line 97
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 102
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    .line 103
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLeftButton:Landroid/widget/Button;

    .line 105
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRightButton:Landroid/widget/Button;

    .line 109
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mSelection:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

    .line 118
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bIsLoaded:Z

    .line 120
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    .line 121
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    .line 126
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 130
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    .line 131
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    .line 132
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mMenu:Landroid/view/Menu;

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    .line 950
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeClickListener:Landroid/view/View$OnClickListener;

    .line 1261
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/feedslist/FeedView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentSubId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/view/HeaderLightView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/Menu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;Ljava/lang/String;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getFeedWrapper(Ljava/lang/String;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    return-object v0
.end method

.method private callCommentRetrieve(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 777
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    if-eqz v0, :cond_55

    .line 779
    if-ne p1, v7, :cond_23

    .line 782
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    if-nez v1, :cond_20

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    :goto_15
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentSubId:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentRetrieveNext(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :goto_1f
    return-void

    .line 782
    :cond_20
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    goto :goto_15

    .line 794
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    if-nez v1, :cond_48

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    :goto_31
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentSubId:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentRetrieve(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_4b

    .line 804
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestComments()"

    const-string v2, "success to call"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 794
    :cond_48
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    goto :goto_31

    .line 808
    :cond_4b
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestComments()"

    const-string v2, "fail to call"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 815
    :cond_55
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestComments()"

    const-string v2, "service is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setNoTitle()V

    goto :goto_1f
.end method

.method private drawOriginalActivity(Ljava/lang/String;Z)Z
    .registers 18
    .parameter "activity_id"
    .parameter "is_connected"

    .prologue
    .line 389
    const-string v2, "SocialHubFeedsCommentListActivity"

    const-string v6, "drawOriginalActivity()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", is_connected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "activity_id=\'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 393
    .local v14, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 397
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_35
    invoke-direct {p0, v14}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getFeedCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 403
    if-eqz v11, :cond_13c

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_13c

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    .line 406
    new-instance v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    invoke-direct {v3, v2}, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;-><init>(Landroid/view/View;)V

    .line 407
    .local v3, wrapper_feed:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
    new-instance v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .line 408
    .local v4, wrapper_data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    invoke-virtual {v4, v11}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 410
    new-instance v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/socialhub/feedslist/FeedView;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;Lcom/sec/android/socialhub/image/ImageCacheManager;Landroid/widget/Adapter;)V

    .line 412
    .local v1, feed:Lcom/sec/android/socialhub/feedslist/FeedView;
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 414
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 416
    iget-object v2, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 418
    .local v5, sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    invoke-virtual {v5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v13

    .line 419
    .local v13, handler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    invoke-virtual {v13, p0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->changeContext(Landroid/content/Context;Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;)V

    .line 525
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedView;->setVisibleView(I)V

    .line 527
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/widget/Adapter;Z)V

    .line 529
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    const v6, 0x7f0b000c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_a2
    .catchall {:try_start_35 .. :try_end_a2} :catchall_135
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a2} :catch_10f

    .line 534
    const/4 v2, 0x0

    :try_start_a3
    invoke-virtual {v5, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupport(I)Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_101

    .line 535
    iget-object v2, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getActorPhotoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_b5
    .catchall {:try_start_a3 .. :try_end_b5} :catchall_135
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_a3 .. :try_end_b5} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b5} :catch_10f

    .line 549
    :goto_b5
    :try_start_b5
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 551
    new-instance v2, Lcom/sec/android/socialhub/view/HeaderLightView;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/HeaderLightView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

    .line 553
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mHeaderView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 554
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 556
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLightView:Lcom/sec/android/socialhub/view/HeaderLightView;

    new-instance v6, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    invoke-virtual {v2, v6}, Lcom/sec/android/socialhub/view/HeaderLightView;->setOnScrollController(Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;)V

    .line 564
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setPadding(IIII)V

    .line 566
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->setLightEffect(I)V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->drawTitle()V

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->drawButton()V

    .line 570
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setOnClickListener()V
    :try_end_fa
    .catchall {:try_start_b5 .. :try_end_fa} :catchall_135
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_fa} :catch_10f

    .line 572
    const/4 v2, 0x1

    .line 582
    if-eqz v11, :cond_100

    .line 584
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    .end local v1           #feed:Lcom/sec/android/socialhub/feedslist/FeedView;
    .end local v3           #wrapper_feed:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
    .end local v4           #wrapper_data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .end local v5           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    .end local v13           #handler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    :cond_100
    :goto_100
    return v2

    .line 537
    .restart local v1       #feed:Lcom/sec/android/socialhub/feedslist/FeedView;
    .restart local v3       #wrapper_feed:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
    .restart local v4       #wrapper_data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .restart local v5       #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    .restart local v13       #handler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    :cond_101
    :try_start_101
    iget-object v2, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_135
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_101 .. :try_end_109} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_109} :catch_10f

    goto :goto_b5

    .line 539
    :catch_10a
    move-exception v12

    .line 541
    .local v12, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_10b
    invoke-virtual {v12}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_135
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_b5

    .line 576
    .end local v1           #feed:Lcom/sec/android/socialhub/feedslist/FeedView;
    .end local v3           #wrapper_feed:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
    .end local v4           #wrapper_data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .end local v5           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    .end local v12           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    .end local v13           #handler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    :catch_10f
    move-exception v12

    .line 578
    .local v12, e:Ljava/lang/Exception;
    :try_start_110
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_135

    .line 582
    if-eqz v11, :cond_118

    .line 584
    .end local v12           #e:Ljava/lang/Exception;
    :goto_115
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_118
    const-string v2, "SocialHubFeedsCommentListActivity"

    const-string v6, "drawOriginalActivity()"

    const-string v7, "Feed is removed!!!!!!!"

    invoke-static {v2, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const v2, 0x7f0800b0

    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 590
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setResult(I)V

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->finish()V

    .line 592
    const/4 v2, 0x0

    goto :goto_100

    .line 582
    :catchall_135
    move-exception v2

    if-eqz v11, :cond_13b

    .line 584
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_13b
    throw v2

    :cond_13c
    if-eqz v11, :cond_118

    goto :goto_115
.end method

.method private getCursor(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 924
    .line 926
    if-nez p1, :cond_d

    .line 928
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "getCursor()"

    const-string v2, "uri is null!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :goto_c
    return-object v4

    .line 932
    :cond_d
    const-string v0, "owner"

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->FeedViewProjection:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 937
    :goto_3f
    if-nez v0, :cond_73

    .line 939
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "getCursor()"

    const-string v2, "cursor is null!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 935
    :cond_4b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/socialhub/feedslist/GroupWrapper;->GroupProjection:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3f

    .line 943
    :cond_73
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "getCursor()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v4, v0

    .line 947
    goto/16 :goto_c
.end method

.method private getFeedCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    .line 597
    const/4 v6, 0x0

    .line 599
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 601
    .local v1, mUri:Landroid/net/Uri;
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v2, "getFeedCursor()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-nez v1, :cond_30

    .line 605
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v2, "getCursor()"

    const-string v3, "uri is null!!!!"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_2f
    return-object v4

    .line 609
    :cond_30
    const-string v0, "owner"

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_53

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->FeedViewProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 614
    :goto_47
    if-nez v6, :cond_60

    .line 616
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v2, "getCursor()"

    const-string v3, "cursor is null!!!!"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 612
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/socialhub/feedslist/GroupWrapper;->GroupProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_47

    .line 619
    :cond_60
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v2, "getCursor()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v4, v6

    .line 622
    goto :goto_2f
.end method

.method private getFeedWrapper(Ljava/lang/String;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 8
    .parameter "selection"

    .prologue
    .line 627
    const/4 v2, 0x0

    .line 629
    .local v2, wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    const/4 v0, 0x0

    .line 633
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getFeedCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 635
    const-string v4, "owner"

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 637
    new-instance v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    .end local v2           #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .local v3, wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    move-object v2, v3

    .line 644
    .end local v3           #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .restart local v2       #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    :goto_18
    invoke-virtual {v2, v0}, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->changeCursor(Landroid/database/Cursor;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_2a

    .line 652
    if-eqz v0, :cond_21

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 655
    :goto_20
    const/4 v0, 0x0

    .line 659
    :cond_21
    return-object v2

    .line 641
    :cond_22
    :try_start_22
    new-instance v3, Lcom/sec/android/socialhub/feedslist/GroupWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/socialhub/feedslist/GroupWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_2a

    .end local v2           #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .restart local v3       #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    move-object v2, v3

    .end local v3           #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .restart local v2       #wrapper:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    goto :goto_18

    .line 646
    :catch_2a
    move-exception v1

    .line 648
    .local v1, e:Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    .line 652
    if-eqz v0, :cond_21

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 652
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_34
    move-exception v4

    if-eqz v0, :cond_3b

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 655
    const/4 v0, 0x0

    .line 652
    :cond_3b
    throw v4
.end method

.method private getIntentData()V
    .registers 5

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 666
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_67

    .line 668
    const-string v1, "service_provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    .line 669
    const-string v1, "activity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    .line 670
    const-string v1, "actor_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;

    .line 671
    const-string v1, "recommendable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;

    .line 672
    const-string v1, "comment_target_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    .line 673
    const-string v1, "comment_sub_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentSubId:Ljava/lang/String;

    .line 674
    const-string v1, "comment_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    .line 675
    const-string v1, "commentable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsCommantable:Ljava/lang/String;

    .line 676
    const-string v1, "comment_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRecvCommentCount:I

    .line 677
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    .line 684
    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v2, "5_SNS"

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 691
    :goto_66
    return-void

    .line 688
    :cond_67
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setResult(I)V

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->finish()V

    goto :goto_66
.end method

.method private initializeView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 315
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 317
    .local v7, layout:Landroid/widget/LinearLayout;
    invoke-static {p0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mImgMgr:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 318
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    .line 319
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    const v2, 0x7f030004

    const/4 v3, 0x0

    new-array v4, v8, [Ljava/lang/String;

    new-array v5, v8, [I

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    .line 324
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setUseEmptyView(Z)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useFlickUp(Z)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useLoadMore(Z)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setFooterDivider(Z)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setDividerHeight(I)V

    .line 332
    return-void
.end method

.method private setNoTitle()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 822
    const v0, 0x7f0800cc

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setTitle(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method private setOnClickListener()V
    .registers 5

    .prologue
    .line 695
    iget-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 698
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsCommantable:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsCommantable:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 734
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 752
    :goto_27
    return-void

    .line 738
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->buttonCheck()V

    goto :goto_27

    .line 743
    :cond_2c
    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 744
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    .line 746
    .local v0, handler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLeftButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 747
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRightButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 749
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->getReplyClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->getRetweetListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27
.end method


# virtual methods
.method public ChangeLikeButton()V
    .registers 4

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    if-eqz v0, :cond_16

    .line 866
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawExtendLikeButtonEx(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawExtendFavoriteButtonEx(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 869
    :cond_16
    return-void
.end method

.method public drawButton()V
    .registers 3

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 350
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setButtonText(I)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setTextHint(I)V

    .line 358
    :goto_15
    return-void

    .line 355
    :cond_16
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRightButton:Landroid/widget/Button;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_15
.end method

.method public drawTitle()V
    .registers 3

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 338
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setTitle(Ljava/lang/String;)V

    .line 344
    :goto_f
    return-void

    .line 342
    :cond_10
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 364
    packed-switch p1, :pswitch_data_16

    .line 373
    :cond_7
    :goto_7
    return-void

    .line 367
    :pswitch_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 369
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x9

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->refreshCommentListUI(Landroid/net/Uri;IIZZZ)V

    goto :goto_7

    .line 364
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 6
    .parameter

    .prologue
    .line 1053
    monitor-enter p0

    const/16 v0, 0x4e20

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setTimeOut(I)V

    .line 1055
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onApiCalled(I)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_37

    .line 1057
    sparse-switch p1, :sswitch_data_7e

    .line 1081
    :goto_c
    :sswitch_c
    monitor-exit p0

    return-void

    .line 1060
    :sswitch_e
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getResources()Landroid/content/res/Resources;

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

    .line 1061
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_37

    goto :goto_c

    .line 1053
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1064
    :sswitch_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->showTitleProgress()V

    goto :goto_c

    .line 1072
    :sswitch_3e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getResources()Landroid/content/res/Resources;

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

    .line 1073
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_c

    .line 1077
    :sswitch_67
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_7c
    .catchall {:try_start_3a .. :try_end_7c} :catchall_37

    goto :goto_c

    .line 1057
    nop

    :sswitch_data_7e
    .sparse-switch
        0x7 -> :sswitch_e
        0x9 -> :sswitch_67
        0xa -> :sswitch_3a
        0x28 -> :sswitch_3e
        0x2c -> :sswitch_c
    .end sparse-switch
.end method

.method public onChangeLike(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    .line 875
    if-nez p1, :cond_42

    .line 877
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onChangeLike()"

    const-string v2, "uri is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFromActivity:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 885
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mSelection:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mSelection:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getCursor(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 889
    if-nez v0, :cond_47

    .line 891
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onChangeLike()"

    const-string v2, "cursor is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :goto_41
    return-void

    .line 882
    :cond_42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_13

    .line 896
    :cond_47
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_53

    .line 898
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 899
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    .line 902
    :cond_53
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "onChangeLike()"

    const-string v3, "compelted"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    .line 906
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_af

    .line 908
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    const-string v2, "recommendable"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;

    .line 909
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    const-string v2, "is_favorite"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;

    .line 911
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onChangeLike()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recommandable - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is_favorite - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :goto_ab
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->ChangeLikeButton()V

    goto :goto_41

    .line 915
    :cond_af
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onChangeLike()"

    const-string v2, "moveToFirst Error!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    if-eqz v0, :cond_d

    .line 384
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawName(Landroid/content/Context;Z)V

    .line 385
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setUse(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setUseEmptyView(Z)V

    .line 146
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setLayout(I)V

    .line 148
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getIntentData()V

    .line 150
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    .line 151
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLeftButton:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRightButton:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setCountTextView(Landroid/widget/TextView;Z)V

    .line 157
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    .line 159
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 161
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    .line 164
    .local v7, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 166
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->setVisibility(I)V

    .line 171
    :cond_74
    const/4 v0, 0x1

    :try_start_75
    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    .line 173
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    if-nez v0, :cond_8c

    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_85
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_75 .. :try_end_85} :catch_b4

    .line 189
    :goto_85
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->initializeView()V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->requestConnect()V

    .line 192
    return-void

    .line 179
    :cond_8c
    :try_start_8c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommonTwoButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    const/16 v0, 0xb

    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setSupportByte(Z)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->getButton()Landroid/widget/Button;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V
    :try_end_b3
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_8c .. :try_end_b3} :catch_b4

    goto :goto_85

    .line 184
    :catch_b4
    move-exception v6

    .line 186
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v6}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_85
.end method

.method public onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V

    .line 237
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 199
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    if-ne v1, v3, :cond_1b

    .line 201
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mMenu:Landroid/view/Menu;

    .line 203
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->isRefreshing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->changeLoadingState(Z)V

    .line 205
    :cond_1b
    return v3
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 289
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 293
    :cond_f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 295
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 296
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mLikeCursor:Landroid/database/Cursor;

    .line 299
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    if-eqz v0, :cond_25

    .line 301
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->onDestroy()V

    .line 302
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    .line 304
    :cond_25
    return-void
.end method

.method public onGetDeepLink(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 974
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onGetDeepLink()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "req_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 980
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onGetDeepLink()"

    const-string v2, "attached image deep link"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :try_start_30
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DeepLink;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_10d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_e0

    move-result-object v1

    .line 989
    if-eqz v1, :cond_6e

    .line 991
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 992
    const-string v0, "url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    const-string v2, "target_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 994
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->putDeeplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 996
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catchall {:try_start_40 .. :try_end_6e} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_6e} :catch_15b

    .line 1005
    :cond_6e
    if-eqz v1, :cond_73

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1011
    :cond_73
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_79
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1017
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onGetDeepLink()"

    const-string v2, "profile image deep link"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :try_start_91
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DeepLink;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1024
    if-eqz v6, :cond_d1

    .line 1026
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1027
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1028
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->putDeeplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1030
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_d1
    .catchall {:try_start_91 .. :try_end_d1} :catchall_149
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_d1} :catch_11e

    .line 1039
    :cond_d1
    if-eqz v6, :cond_d6

    .line 1041
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_d6
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_dc
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_df
    return-void

    .line 999
    :catch_e0
    move-exception v0

    move-object v1, v6

    .line 1001
    :goto_e2
    :try_start_e2
    const-string v2, "SocialHubFeedsCommentListActivity"

    const-string v3, "onGetDeepLink()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_e2 .. :try_end_100} :catchall_159

    .line 1005
    if-eqz v1, :cond_105

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1011
    :cond_105
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_79

    .line 1005
    :catchall_10d
    move-exception v0

    move-object v1, v6

    :goto_10f
    if-eqz v1, :cond_114

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1011
    :cond_114
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    throw v0

    .line 1033
    :catch_11e
    move-exception v0

    .line 1035
    :try_start_11f
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "onGetDeepLink()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13d
    .catchall {:try_start_11f .. :try_end_13d} :catchall_149

    .line 1039
    if-eqz v6, :cond_142

    .line 1041
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_142
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_dc

    .line 1039
    :catchall_149
    move-exception v0

    if-eqz v6, :cond_14f

    .line 1041
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_14f
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    throw v0

    .line 1005
    :catchall_159
    move-exception v0

    goto :goto_10f

    .line 999
    :catch_15b
    move-exception v0

    goto :goto_e2
.end method

.method public onLoadMore()V
    .registers 3

    .prologue
    .line 1198
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onLoadMore()V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(Z)V

    .line 1200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 218
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 214
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(Z)V

    .line 215
    const/4 v0, 0x1

    goto :goto_b

    .line 211
    :pswitch_data_14
    .packed-switch 0x7f0b012b
        :pswitch_c
    .end packed-switch
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onPause()V

    .line 281
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onResume()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    if-eqz v0, :cond_c

    .line 273
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->notifyDataSetChanged()V

    .line 274
    :cond_c
    return-void
.end method

.method public onServiceConnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onServiceConnected()V

    .line 244
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bIsLoaded:Z

    if-nez v0, :cond_23

    .line 246
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->drawOriginalActivity(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bIsLoaded:Z

    .line 248
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bIsLoaded:Z

    if-ne v0, v2, :cond_23

    .line 250
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->setServiceProvider(I)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    :cond_23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bIsLoaded:Z

    if-ne v0, v2, :cond_31

    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->bSupportComment:Z

    if-ne v0, v2, :cond_31

    .line 258
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(Z)V

    .line 261
    :cond_31
    invoke-virtual {p0, v3, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->onChangeLike(Ljava/lang/String;ZLjava/lang/String;)V

    .line 262
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 18
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 1102
    sparse-switch p4, :sswitch_data_6c

    .line 1163
    :cond_3
    :goto_3
    return-void

    .line 1109
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v1, :cond_d

    .line 1110
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1112
    :cond_d
    invoke-static {p3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 1114
    .local v8, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v8, :cond_3

    .line 1118
    const/4 v1, 0x7

    :try_start_14
    invoke-interface {v8, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1120
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->onChangeLike(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_21
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_3

    .line 1123
    :catch_22
    move-exception v9

    .line 1125
    .local v9, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v9}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_3

    .line 1133
    .end local v8           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v9           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :sswitch_27
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    const/4 v2, 0x1

    move/from16 v0, p6

    invoke-virtual {v1, p4, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->handleCommentRetrieve(IZZ)V

    goto :goto_3

    .line 1137
    :sswitch_30
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1138
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->onGetDeepLink(I)V

    goto :goto_3

    .line 1142
    :sswitch_39
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1143
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mComposer:Lcom/sec/android/socialhub/view/SocialHubDirectComposer;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->clearText()V

    .line 1144
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->refreshCommentListUI(Landroid/net/Uri;IIZZZ)V

    .line 1145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z

    .line 1147
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v10

    .line 1150
    .local v10, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x2

    :try_start_57
    invoke-interface {v10, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1152
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(ZZ)V
    :try_end_65
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_57 .. :try_end_65} :catch_66

    goto :goto_3

    .line 1155
    :catch_66
    move-exception v9

    .line 1157
    .restart local v9       #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v9}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_3

    .line 1102
    nop

    :sswitch_data_6c
    .sparse-switch
        0x7 -> :sswitch_4
        0x9 -> :sswitch_39
        0xa -> :sswitch_27
        0x28 -> :sswitch_30
        0x2c -> :sswitch_27
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 14
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1171
    sparse-switch p4, :sswitch_data_24

    .line 1192
    :goto_5
    return-void

    .line 1174
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1175
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->onChangeLike(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_5

    .line 1180
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    invoke-virtual {v0, p4, v1, v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->handleCommentRetrieve(IZZ)V

    goto :goto_5

    .line 1184
    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_5

    .line 1188
    :sswitch_1c
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1189
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsPosting:Z

    goto :goto_5

    .line 1171
    :sswitch_data_24
    .sparse-switch
        0x7 -> :sswitch_6
        0x9 -> :sswitch_1c
        0xa -> :sswitch_10
        0x28 -> :sswitch_16
        0x2c -> :sswitch_10
    .end sparse-switch
.end method

.method public refreshCommentListUI(Landroid/net/Uri;IIZZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 829
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "refreshCommentListUI()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bFetch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :try_start_38
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$Comment;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/adapter/SocialHubCommentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 841
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_71

    .line 843
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 847
    :cond_71
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCursor:Landroid/database/Cursor;

    .line 849
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->drawTitle(Landroid/database/Cursor;)V
    :try_end_78
    .catchall {:try_start_38 .. :try_end_78} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_78} :catch_79

    .line 860
    :goto_78
    return-void

    .line 851
    :catch_79
    move-exception v0

    .line 853
    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_78

    .line 856
    :catchall_7e
    move-exception v0

    throw v0
.end method

.method public requestComments(Z)V
    .registers 6
    .parameter

    .prologue
    .line 756
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestComments()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is_next = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Comment count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRecvCommentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 765
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->callCommentRetrieve(Z)V

    .line 771
    :goto_55
    return-void

    .line 769
    :cond_56
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestComments()"

    const-string v2, "targetType or targetId is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method
