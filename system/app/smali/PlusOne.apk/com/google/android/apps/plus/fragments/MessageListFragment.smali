.class public Lcom/google/android/apps/plus/fragments/MessageListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/views/MessageClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;,
        Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;,
        Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;,
        Lcom/google/android/apps/plus/fragments/MessageListFragment$MessagesQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/views/MessageClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;"
    }
.end annotation


# static fields
.field private static COLLAPSE_POSTS_THRESHOLD:J

.field private static sInitialized:Z

.field private static sRealtimechatImageHeight:I

.field private static sRealtimechatImageWidth:I


# instance fields
.field private defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

.field private mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

.field private mConversationId:Ljava/lang/String;

.field private mConversationRowId:J

.field private mEarliestEventTimestamp:J

.field private mFirstEventTimestamp:J

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mInitialLoadFinished:Z

.field private mIsGroup:Z

.field private mIsTypingVisible:Z

.field private mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

.field private mLoadingOlderEvents:Z

.field private mMessagesUri:Landroid/net/Uri;

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

.field private mRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mSlideInUpAnimation:Landroid/view/animation/Animation;

.field private mSlideOutDownAnimation:Landroid/view/animation/Animation;

.field private mTotalItemBeforeLoadingOlder:I

.field private mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

.field private mTypingParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypingTextView:Landroid/widget/TextView;

.field private mTypingView:Landroid/view/View;

.field private mTypingVisibilityChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->COLLAPSE_POSTS_THRESHOLD:J

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 127
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 128
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 139
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    .line 146
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    .line 147
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    .line 475
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/fragments/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    return-void
.end method

.method static synthetic access$1600()J
    .registers 2

    .prologue
    .line 70
    sget-wide v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->COLLAPSE_POSTS_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->animateTypingVisibility()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/apps/plus/fragments/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTotalItemBeforeLoadingOlder:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->checkExpiredTypingStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateTypingVisibility()V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 70
    sget v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sRealtimechatImageWidth:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 70
    sget v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sRealtimechatImageHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized animateTypingVisibility()V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 927
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    if-nez v1, :cond_1c

    .line 928
    :cond_a
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 929
    const-string v0, "MessageListFragment"

    const-string v1, "Igoring animation due to null views"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_bd

    .line 960
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 933
    :cond_1c
    const/4 v1, 0x0

    :try_start_1d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 934
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_c0

    const/4 v12, 0x1

    .line 936
    .local v12, showTyping:Z
    :goto_28
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    if-eq v1, v12, :cond_b9

    .line 937
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v12, :cond_c3

    :goto_30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 940
    .local v13, translationYDelta:I
    if-eqz v12, :cond_c7

    .line 941
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 942
    .local v9, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 943
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    .line 950
    .end local v9           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_6b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 951
    .local v10, parentHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 952
    .local v11, parentWidth:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0, v11, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 955
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 956
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v12, :cond_d8

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    :goto_ad
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 957
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 959
    .end local v10           #parentHeight:I
    .end local v11           #parentWidth:I
    .end local v13           #translationYDelta:I
    :cond_b9
    iput-boolean v12, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z
    :try_end_bb
    .catchall {:try_start_1d .. :try_end_bb} :catchall_bd

    goto/16 :goto_1a

    .line 927
    .end local v12           #showTyping:Z
    :catchall_bd
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c0
    move v12, v0

    .line 934
    goto/16 :goto_28

    .line 937
    .restart local v12       #showTyping:Z
    :cond_c3
    const/16 v0, 0x8

    goto/16 :goto_30

    .line 947
    .restart local v13       #translationYDelta:I
    :cond_c7
    :try_start_c7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v6, v13

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    goto :goto_6b

    .line 956
    .restart local v10       #parentHeight:I
    .restart local v11       #parentWidth:I
    :cond_d8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;
    :try_end_da
    .catchall {:try_start_c7 .. :try_end_da} :catchall_bd

    goto :goto_ad
.end method

.method private checkExpiredTypingStatus()V
    .registers 11

    .prologue
    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    .local v0, currentTimeMs:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, expiredUserIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    iget-wide v6, v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->typingStartTimeMs:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_13

    .line 264
    const-string v6, "MessageListFragment"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 265
    const-string v7, "MessageListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Typing status expired for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->userName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 270
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;>;"
    :cond_60
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    .local v3, expiredId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 273
    .end local v3           #expiredId:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method private declared-synchronized isTypingAnimationPlaying()Z
    .registers 2

    .prologue
    .line 922
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1057
    :cond_d
    return-void
.end method

.method private updateHeaderVisibility()V
    .registers 4

    .prologue
    .line 858
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 859
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHeaderVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    if-eqz v0, :cond_3e

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :goto_3d
    return-void

    .line 865
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d
.end method

.method private declared-synchronized updateTypingVisibility()V
    .registers 11

    .prologue
    const/4 v8, 0x3

    .line 873
    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_82

    if-nez v6, :cond_8

    .line 919
    :goto_6
    monitor-exit p0

    return-void

    .line 876
    :cond_8
    const/4 v6, 0x3

    :try_start_9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 877
    .local v5, userNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 878
    .local v1, total:I
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #total:I
    .local v2, total:I
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    .line 879
    .local v4, userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #total:I
    .restart local v1       #total:I
    iget-object v6, v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->userName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 880
    if-ne v1, v8, :cond_85

    .line 885
    .end local v4           #userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    :goto_35
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_e0

    .line 904
    const v6, 0x7f0701bd

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, typingMessage:Ljava/lang/String;
    :goto_63
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->isTypingAnimationPlaying()Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 912
    const-string v6, "MessageListFragment"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 913
    const-string v6, "MessageListFragment"

    const-string v7, "Animation already playing. Setting typing visibility changed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_7e
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z
    :try_end_81
    .catchall {:try_start_9 .. :try_end_81} :catchall_82

    goto :goto_6

    .line 873
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #total:I
    .end local v3           #typingMessage:Ljava/lang/String;
    .end local v5           #userNames:[Ljava/lang/String;
    :catchall_82
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #total:I
    .restart local v4       #userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    .restart local v5       #userNames:[Ljava/lang/String;
    :cond_85
    move v2, v1

    .line 881
    .end local v1           #total:I
    .restart local v2       #total:I
    goto :goto_21

    .line 889
    .end local v2           #total:I
    .end local v4           #userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    .restart local v1       #total:I
    :pswitch_87
    :try_start_87
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 892
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_92
    const v6, 0x7f0701ba

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 894
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 896
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_a3
    const v6, 0x7f0701bb

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 898
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 900
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_ba
    const v6, 0x7f0701bc

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 917
    :cond_d7
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->animateTypingVisibility()V
    :try_end_da
    .catchall {:try_start_87 .. :try_end_da} :catchall_82

    goto/16 :goto_6

    .end local v1           #total:I
    .end local v3           #typingMessage:Ljava/lang/String;
    .restart local v2       #total:I
    :cond_dc
    move v1, v2

    .end local v2           #total:I
    .restart local v1       #total:I
    goto/16 :goto_35

    .line 885
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_87
        :pswitch_92
        :pswitch_a3
        :pswitch_ba
    .end packed-switch
.end method


# virtual methods
.method public displayLeaveConversationDialog()V
    .registers 5

    .prologue
    .line 1044
    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070182

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070169

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1049
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_conversation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public handleFatalError(I)V
    .registers 9
    .parameter "fatalErrorType"

    .prologue
    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, textResource:I
    packed-switch p1, :pswitch_data_38

    .line 989
    const v2, 0x7f0701a3

    .line 993
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 994
    .local v1, resources:Landroid/content/res/Resources;
    const v3, 0x7f0701a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0701a6

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 999
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "conversation_error"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1001
    return-void

    .line 980
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v1           #resources:Landroid/content/res/Resources;
    :pswitch_30
    const v2, 0x7f0701a4

    .line 982
    goto :goto_7

    .line 984
    :pswitch_34
    const v2, 0x7f0701a5

    .line 986
    goto :goto_7

    .line 978
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method public messageLoadFailed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 419
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 420
    const-string v0, "MessageListFragment"

    const-string v1, "messageLoadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_11
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    .line 423
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    .line 424
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700c6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    return-void
.end method

.method public messageLoadSucceeded()V
    .registers 5

    .prologue
    .line 432
    const-string v1, "MessageListFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 433
    const-string v1, "MessageListFragment"

    const-string v2, "messageLoadSucceeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    return-void
.end method

.method public onCancelButtonClicked(J)V
    .registers 5
    .parameter "messageRowId"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 731
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 288
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 291
    .local v0, activity:Landroid/app/Activity;
    sget-boolean v1, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sInitialized:Z

    if-nez v1, :cond_2c

    .line 292
    sput-boolean v7, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sInitialized:Z

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sRealtimechatImageWidth:I

    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/fragments/MessageListFragment;->sRealtimechatImageHeight:I

    .line 299
    :cond_2c
    if-eqz p1, :cond_cc

    .line 300
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 301
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 305
    :goto_42
    const-string v1, "loading_older_events"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    .line 306
    const-string v1, "initial_load_finished"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 312
    :goto_52
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversation_row_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_group"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v7, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 319
    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 336
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 337
    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    .line 338
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/google/android/apps/plus/fragments/MessageListFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 353
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 354
    return-void

    .line 303
    :cond_c8
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    goto/16 :goto_42

    .line 308
    :cond_cc
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 309
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 310
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    goto :goto_52
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 810
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 811
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "timestamp"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :goto_14
    return-object v0

    :cond_15
    move-object v0, v4

    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 750
    const v2, 0x7f030042

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 751
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    .line 752
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 753
    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    .line 754
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    const v3, 0x7f0d00de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;

    .line 755
    const v2, 0x7f030043

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, header:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 757
    const v2, 0x7f0d00df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 758
    new-instance v2, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Landroid/widget/AbsListView;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 759
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 760
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_6c

    .line 761
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 764
    :cond_6c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 788
    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1036
    const-string v0, "conversation_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1041
    :cond_1f
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1029
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1008
    const-string v0, "leave_conversation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1009
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_LEAVE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1022
    :cond_24
    :goto_24
    return-void

    .line 1013
    :cond_25
    const-string v0, "conversation_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1014
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1015
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_24

    .line 1018
    :cond_45
    const-string v0, "MessageListFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1019
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x1

    .line 824
    const-string v1, "MessageListFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 825
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFinished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-ne v1, v4, :cond_5f

    .line 828
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 830
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->restoreScrollPosition()V

    .line 832
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_60

    .line 833
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showContent(Landroid/view/View;)V

    .line 837
    :goto_41
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    if-eqz v1, :cond_57

    .line 838
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTotalItemBeforeLoadingOlder:I

    sub-int v0, v1, v2

    .line 839
    .local v0, newSelection:I
    if-gez v0, :cond_68

    .line 840
    const/4 v0, 0x0

    .line 844
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 846
    .end local v0           #newSelection:I
    :cond_57
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 847
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    .line 849
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->onAsyncData()V

    .line 851
    :cond_5f
    return-void

    .line 835
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_41

    .line 841
    .restart local v0       #newSelection:I
    :cond_68
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_50

    .line 842
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_50
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 968
    return-void
.end method

.method public onMediaImageClick(Ljava/lang/String;)V
    .registers 11
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 740
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "show_photo_only"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 457
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 413
    :goto_e
    return-void

    .line 380
    :cond_f
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    .line 381
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 384
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 386
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_33

    .line 388
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 390
    :cond_33
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_43

    .line 393
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 412
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->onResume()V

    goto :goto_e

    .line 396
    :cond_4b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v0

    .line 397
    .local v0, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v0, :cond_61

    .line 399
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadSucceeded()V

    .line 409
    :cond_61
    :goto_61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    goto :goto_43

    .line 404
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    goto :goto_61
.end method

.method public onRetryButtonClicked(J)V
    .registers 9
    .parameter "messageRowId"

    .prologue
    .line 719
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_RETRY_SEND:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->retrySendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    .line 722
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 796
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 797
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 798
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    :cond_12
    const-string v0, "loading_older_events"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 801
    const-string v0, "initial_load_finished"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onUserImageClicked(J)V
    .registers 10
    .parameter "userId"

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 710
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 711
    return-void
.end method

.method public reinitialize()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 360
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_row_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    .line 363
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_group"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 367
    return-void
.end method

.method public setConversationInfo(Ljava/lang/String;JJ)V
    .registers 9
    .parameter "conversationId"
    .parameter "firstEventTimestamp"
    .parameter "earliestEventTimestamp"

    .prologue
    .line 466
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 467
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationInfo first "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " earliest local "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2b
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;

    .line 471
    iput-wide p2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J

    .line 472
    iput-wide p4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J

    .line 473
    return-void
.end method

.method public setLeaveConversationListener(Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    .line 281
    return-void
.end method
