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
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/views/MessageClickListener;"
    }
.end annotation


# static fields
.field private static COLLAPSE_POSTS_THRESHOLD:J


# instance fields
.field private defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

.field private mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

.field private mConversationId:Ljava/lang/String;

.field private mConversationRowId:Ljava/lang/Long;

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

.field private mParticipantList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

.field private mRequestId:Ljava/lang/Integer;

.field private mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

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
    .line 79
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->COLLAPSE_POSTS_THRESHOLD:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 139
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    .line 146
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    .line 147
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    .line 487
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->animateTypingVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/fragments/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    return-void
.end method

.method static synthetic access$1400()J
    .registers 2

    .prologue
    .line 74
    sget-wide v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->COLLAPSE_POSTS_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->checkExpiredTypingStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/apps/plus/fragments/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTotalItemBeforeLoadingOlder:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateTypingVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mParticipantList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized animateTypingVisibility()V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 1011
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    if-nez v1, :cond_1c

    .line 1012
    :cond_a
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1013
    const-string v0, "MessageListFragment"

    const-string v1, "Igoring animation due to null views"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_bd

    .line 1046
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 1017
    :cond_1c
    const/4 v1, 0x0

    :try_start_1d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 1018
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_c0

    const/4 v12, 0x1

    .line 1020
    .local v12, showTyping:Z
    :goto_28
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    if-eq v1, v12, :cond_b9

    .line 1021
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v12, :cond_c3

    :goto_30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1024
    .local v13, translationYDelta:I
    if-eqz v12, :cond_c7

    .line 1025
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1026
    .local v9, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1027
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
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

    .line 1036
    .end local v9           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_6b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 1037
    .local v10, parentHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1038
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

    .line 1041
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1042
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    if-eqz v12, :cond_d8

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    :goto_ad
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTranslateListAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1045
    .end local v10           #parentHeight:I
    .end local v11           #parentWidth:I
    .end local v13           #translationYDelta:I
    :cond_b9
    iput-boolean v12, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z
    :try_end_bb
    .catchall {:try_start_1d .. :try_end_bb} :catchall_bd

    goto/16 :goto_1a

    .line 1011
    .end local v12           #showTyping:Z
    :catchall_bd
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c0
    move v12, v0

    .line 1018
    goto/16 :goto_28

    .line 1021
    .restart local v12       #showTyping:Z
    :cond_c3
    const/16 v0, 0x8

    goto/16 :goto_30

    .line 1032
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

    .line 1042
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
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    .local v0, currentTimeMs:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
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

    .line 259
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    iget-wide v6, v6, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->typingStartTimeMs:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_13

    .line 260
    const-string v6, "MessageListFragment"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 261
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

    .line 263
    :cond_58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 266
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

    .line 267
    .local v3, expiredId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 269
    .end local v3           #expiredId:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method private declared-synchronized isTypingAnimationPlaying()Z
    .registers 2

    .prologue
    .line 1006
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
    .line 1147
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1150
    :cond_d
    return-void
.end method

.method private updateHeaderVisibility()V
    .registers 4

    .prologue
    .line 942
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 943
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

    .line 946
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    if-eqz v0, :cond_3e

    .line 947
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    :goto_3d
    return-void

    .line 949
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

    .line 957
    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_82

    if-nez v6, :cond_8

    .line 1003
    :goto_6
    monitor-exit p0

    return-void

    .line 960
    :cond_8
    const/4 v6, 0x3

    :try_start_9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 961
    .local v5, userNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 962
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

    .line 963
    .local v4, userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #total:I
    .restart local v1       #total:I
    iget-object v6, v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->userName:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 964
    if-ne v1, v8, :cond_85

    .line 969
    .end local v4           #userInfo:Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
    :goto_35
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_e0

    .line 988
    const v6, 0x7f08026b

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

    .line 992
    .local v3, typingMessage:Ljava/lang/String;
    :goto_63
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->isTypingAnimationPlaying()Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 996
    const-string v6, "MessageListFragment"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 997
    const-string v6, "MessageListFragment"

    const-string v7, "Animation already playing. Setting typing visibility changed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_7e
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z
    :try_end_81
    .catchall {:try_start_9 .. :try_end_81} :catchall_82

    goto :goto_6

    .line 957
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

    .line 965
    .end local v1           #total:I
    .restart local v2       #total:I
    goto :goto_21

    .line 973
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

    .line 974
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 976
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_92
    const v6, 0x7f080268

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 978
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 980
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_a3
    const v6, 0x7f080269

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

    .line 982
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 984
    .end local v3           #typingMessage:Ljava/lang/String;
    :pswitch_ba
    const v6, 0x7f08026a

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

    .line 986
    .restart local v3       #typingMessage:Ljava/lang/String;
    goto :goto_63

    .line 1001
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

    .line 969
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
    .registers 6

    .prologue
    .line 1137
    const v1, 0x7f080108

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080230

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1142
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_conversation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public handleFatalError(I)V
    .registers 9
    .parameter "fatalErrorType"

    .prologue
    .line 1063
    const/4 v2, 0x0

    .line 1064
    .local v2, textResource:I
    packed-switch p1, :pswitch_data_38

    .line 1075
    const v2, 0x7f080251

    .line 1079
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1080
    .local v1, resources:Landroid/content/res/Resources;
    const v3, 0x7f080250

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080254

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1085
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "conversation_error"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1087
    return-void

    .line 1066
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v1           #resources:Landroid/content/res/Resources;
    :pswitch_30
    const v2, 0x7f080252

    .line 1068
    goto :goto_7

    .line 1070
    :pswitch_34
    const v2, 0x7f080253

    .line 1072
    goto :goto_7

    .line 1064
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

    .line 432
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 433
    const-string v0, "MessageListFragment"

    const-string v1, "messageLoadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_11
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    .line 436
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 439
    return-void
.end method

.method public messageLoadSucceeded()V
    .registers 5

    .prologue
    .line 445
    const-string v1, "MessageListFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 446
    const-string v1, "MessageListFragment"

    const-string v2, "messageLoadSucceeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 456
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    return-void
.end method

.method public onCancelButtonClicked(J)V
    .registers 5
    .parameter "messageRowId"

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 776
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, 0x15e

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 284
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 287
    .local v0, activity:Landroid/app/Activity;
    if-eqz p1, :cond_c6

    .line 288
    const-string v3, "request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 289
    const-string v3, "request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 293
    :goto_23
    const-string v3, "loading_older_events"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    .line 294
    const-string v3, "initial_load_finished"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 300
    :goto_33
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "participant"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 303
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_group"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "conversation_row_id"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 305
    .local v1, rowId:J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_ce

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    .line 307
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 313
    :goto_91
    const v3, 0x7f040011

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    .line 315
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 330
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideOutDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 331
    const v3, 0x7f04000f

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    .line 332
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$4;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 347
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSlideInUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 348
    return-void

    .line 291
    .end local v1           #rowId:J
    :cond_c2
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    goto/16 :goto_23

    .line 296
    :cond_c6
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    .line 297
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 298
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    goto/16 :goto_33

    .line 310
    .restart local v1       #rowId:J
    :cond_ce
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    goto :goto_91
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

    .line 894
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 895
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "timestamp"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_14
    return-object v0

    :cond_15
    move-object v0, v4

    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 799
    const v4, 0x7f030067

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 800
    .local v3, view:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    .line 801
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->defaultListViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 802
    const v4, 0x7f09014f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    .line 803
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingView:Landroid/view/View;

    const v5, 0x7f090150

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingTextView:Landroid/widget/TextView;

    .line 804
    const v4, 0x7f030068

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 805
    .local v1, header:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 806
    const v4, 0x7f090153

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 807
    new-instance v4, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Landroid/widget/AbsListView;Landroid/database/Cursor;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 808
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 809
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_6c

    .line 810
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 813
    :cond_6c
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 840
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/MessageListFragment$7;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$7;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 865
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    if-eqz v4, :cond_b4

    .line 866
    const v4, 0x7f090151

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, emptyConversationView:Landroid/view/View;
    const v4, 0x7f090152

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 868
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f08031e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 872
    .end local v0           #emptyConversationView:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    :cond_b4
    return-object v3
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1122
    const-string v0, "conversation_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1127
    :cond_23
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1134
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1115
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1094
    const-string v0, "leave_conversation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1095
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_LEAVE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1097
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1108
    :cond_28
    :goto_28
    return-void

    .line 1099
    :cond_29
    const-string v0, "conversation_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 1101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;->leaveConversation()V

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_28

    .line 1104
    :cond_4d
    const-string v0, "MessageListFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1105
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

    goto :goto_28
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

    .line 908
    const-string v1, "MessageListFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 909
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

    .line 911
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-ne v1, v4, :cond_5f

    .line 912
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 914
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->restoreScrollPosition()V

    .line 916
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_60

    .line 917
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showContent(Landroid/view/View;)V

    .line 921
    :goto_41
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    if-eqz v1, :cond_57

    .line 922
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTotalItemBeforeLoadingOlder:I

    sub-int v0, v1, v2

    .line 923
    .local v0, newSelection:I
    if-gez v0, :cond_68

    .line 924
    const/4 v0, 0x0

    .line 928
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 930
    .end local v0           #newSelection:I
    :cond_57
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 931
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V

    .line 933
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->onAsyncData()V

    .line 935
    :cond_5f
    return-void

    .line 919
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_41

    .line 925
    .restart local v0       #newSelection:I
    :cond_68
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_50

    .line 926
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
    .line 74
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
    .line 1053
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1054
    return-void
.end method

.method public onMediaImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "url"
    .parameter "imageOwnerGaiaId"

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 785
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoOnly(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 790
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    .line 791
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 470
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAnimateTypingVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 426
    :goto_e
    return-void

    .line 394
    :cond_f
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsTypingVisible:Z

    .line 395
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingVisibilityChanged:Z

    .line 396
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 397
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_32

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 403
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_42

    .line 406
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 425
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->onResume()V

    goto :goto_e

    .line 409
    :cond_4a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v0

    .line 410
    .local v0, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v0, :cond_60

    .line 412
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_64

    .line 414
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadSucceeded()V

    .line 422
    :cond_60
    :goto_60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    goto :goto_42

    .line 417
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    goto :goto_60
.end method

.method public onRetryButtonClicked(J)V
    .registers 5
    .parameter "messageRowId"

    .prologue
    .line 764
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_RETRY_SEND:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 765
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->retrySendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 767
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 880
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 881
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 882
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    :cond_12
    const-string v0, "loading_older_events"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 885
    const-string v0, "initial_load_finished"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 886
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onUserImageClicked(Ljava/lang/String;)V
    .registers 7
    .parameter "gaiaId"

    .prologue
    .line 751
    if-eqz p1, :cond_18

    .line 752
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 754
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method public reinitialize()V
    .registers 13

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 354
    iput-boolean v8, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z

    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_group"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mIsGroup:Z

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "conversation_row_id"

    invoke-virtual {v4, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 358
    .local v1, rowId:J
    cmp-long v4, v1, v10

    if-eqz v4, :cond_b2

    .line 359
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    .line 360
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mMessagesUri:Landroid/net/Uri;

    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7, v9, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 365
    :goto_5a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "participant"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a9

    .line 368
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090151

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, emptyConversationView:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    if-eqz v4, :cond_b5

    .line 370
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090152

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 371
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f08031e

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    .end local v0           #emptyConversationView:Landroid/view/View;
    .end local v3           #text:Landroid/widget/TextView;
    :cond_a9
    :goto_a9
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->animateTypingVisibility()V

    .line 381
    return-void

    .line 363
    :cond_b2
    iput-object v9, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;

    goto :goto_5a

    .line 375
    .restart local v0       #emptyConversationView:Landroid/view/View;
    :cond_b5
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a9
.end method

.method public setConversationInfo(Ljava/lang/String;JJ)V
    .registers 9
    .parameter "conversationId"
    .parameter "firstEventTimestamp"
    .parameter "earliestEventTimestamp"

    .prologue
    .line 478
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 479
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

    .line 482
    :cond_2b
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;

    .line 483
    iput-wide p2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J

    .line 484
    iput-wide p4, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J

    .line 485
    return-void
.end method

.method public setLeaveConversationListener(Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLeaveConversationListener:Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;

    .line 277
    return-void
.end method

.method public setParticipantList(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, participantList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mParticipantList:Ljava/util/HashMap;

    .line 185
    return-void
.end method
