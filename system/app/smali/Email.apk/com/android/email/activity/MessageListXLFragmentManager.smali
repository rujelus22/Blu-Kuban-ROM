.class public Lcom/android/email/activity/MessageListXLFragmentManager;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXLFragmentManager$1;,
        Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    }
.end annotation


# static fields
.field private static mAccountId:J

.field private static mIsPhone:Z

.field private static mMailboxId:J

.field public static sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sMessageId:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsActivityResumed:Z

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

.field private mMessageListXL:Lcom/android/email/activity/MessageListXL;

.field private mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mOrientation:I

.field private final mRemovedFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, -0x1

    .line 69
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 72
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 75
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    .line 91
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    .line 873
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mRemovedFragments:Ljava/util/List;

    .line 161
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    .line 163
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    .line 164
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method static synthetic access$1100()J
    .registers 2

    .prologue
    .line 49
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMessageViewClosed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    return v0
.end method

.method private closeMailboxFinder()V
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_c

    .line 1142
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 1145
    :cond_c
    return-void
.end method

.method private destroyThreePane()V
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v0, :cond_9

    .line 1149
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    .line 1151
    :cond_9
    return-void
.end method

.method public static getMailboxId()J
    .registers 2

    .prologue
    .line 258
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    return-wide v0
.end method

.method public static getMessageId()J
    .registers 2

    .prologue
    .line 262
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    return-wide v0
.end method

.method public static getUIAccountId()J
    .registers 2

    .prologue
    .line 245
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    return-wide v0
.end method

.method public static isPhoneMode()Z
    .registers 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    return v0
.end method

.method private onMessageViewClosed()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 1122
    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 1123
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    .line 1124
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_14

    .line 1125
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->clearContent()V

    .line 1127
    :cond_14
    return-void
.end method

.method private restoreMesasgeListState()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    if-eqz v0, :cond_12

    .line 387
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$State;->restore(Lcom/android/email/activity/MessageListFragment;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 390
    :cond_12
    return-void
.end method

.method private saveMessageListFragmentState()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getState()Lcom/android/email/activity/MessageListFragment$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 383
    :cond_c
    return-void
.end method

.method private startInboxLookup()V
    .registers 7

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 1135
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 1137
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    .line 1138
    return-void
.end method

.method private updateMessageView(Landroid/app/FragmentTransaction;JIJ)V
    .registers 10
    .parameter "ft"
    .parameter "messageId"
    .parameter "mode"
    .parameter "mailboxId"

    .prologue
    .line 883
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_30

    .line 884
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateMessageView messageId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] message open mode=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 900
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v0

    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/email/activity/MessageViewFragment;->newInstance(JIJ)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 904
    return-void
.end method


# virtual methods
.method protected addFragmentToRemovalList(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 947
    if-eqz p1, :cond_7

    .line 948
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_7
    return-void
.end method

.method protected commitFragmentTransaction(Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "ft"

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 968
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 969
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 971
    :cond_12
    return-void
.end method

.method public getActualAccountId()J
    .registers 5

    .prologue
    .line 254
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    goto :goto_a
.end method

.method public getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method public getMessageListFragment()Lcom/android/email/activity/MessageListFragment;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method public getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method public goBackToMailbox()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 687
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 689
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_37

    .line 690
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 691
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 692
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    .line 707
    :cond_1c
    :goto_1c
    return-void

    .line 694
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 696
    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 698
    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_1c

    .line 701
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_1c

    .line 704
    :cond_37
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_1c
.end method

.method protected installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 1035
    return-void
.end method

.method public isAccountSelected()Z
    .registers 5

    .prologue
    .line 270
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isMailboxSelected()Z
    .registers 5

    .prologue
    .line 274
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isMessageSelected()Z
    .registers 5

    .prologue
    .line 278
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadState(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    .line 362
    const-string v0, "MessageListXl.state.account_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 363
    .local v1, accountId:J
    const-string v0, "MessageListXl.state.mailbox_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 364
    .local v3, mailboxId:J
    const-string v0, "MessageListXl.state.message_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 365
    .local v5, messageId:J
    const-string v0, "MessageListXl.state.search_str"

    const-string v7, ""

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, searchStr:Ljava/lang/String;
    const-string v0, "MessageListXl.state.message_list_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment$State;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 371
    cmp-long v0, v1, v10

    if-nez v0, :cond_2b

    .line 377
    :goto_2a
    return-void

    .line 374
    :cond_2b
    invoke-static {v9}, Lcom/android/email/activity/MessageListXL;->setSearchString(Ljava/lang/String;)V

    .line 376
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    goto :goto_2a
.end method

.method protected navigateToMessage(JIJ)V
    .registers 13
    .parameter "messageId"
    .parameter "mode"
    .parameter "mailBoxId"

    .prologue
    .line 979
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_26

    .line 980
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "navigateToMessage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, ft:Landroid/app/FragmentTransaction;
    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    .line 984
    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageView(Landroid/app/FragmentTransaction;JIJ)V

    .line 989
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 990
    return-void
.end method

.method public onActivityViewReady(I)V
    .registers 9
    .parameter "orientation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    const v1, 0x7f1001cf

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 177
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 179
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 180
    .local v6, fm:Landroid/app/FragmentManager;
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-nez v0, :cond_52

    .line 187
    const-wide/16 v1, -0x1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    sget-wide v4, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->navigateToMessage(JIJ)V

    .line 190
    :cond_52
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v1, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 192
    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    .line 193
    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 5
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x1

    .line 623
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_14

    .line 624
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MailboxListFragment;->onBackPress(Z)Z

    move-result v1

    if-ne v1, v0, :cond_26

    .line 640
    :cond_13
    :goto_13
    return v0

    .line 627
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_26

    .line 628
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListFragment;->onBackPress(Z)Z

    move-result v1

    if-eq v1, v0, :cond_13

    .line 632
    :cond_26
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3b

    .line 633
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 634
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 635
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setActionBarDisplayHomeEnabled(Z)V

    .line 638
    :cond_3b
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->onBackPressed(Z)Z

    move-result v0

    .line 639
    .local v0, ret:Z
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    goto :goto_13
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 333
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 334
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxFinderCallback:Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;

    .line 335
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->closeMailboxFinder()V

    .line 336
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->destroyThreePane()V

    .line 337
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 338
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 339
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_21

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 342
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 344
    :cond_21
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePaneLayoutCallback:Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;

    .line 345
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 346
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 347
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    .line 348
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    .line 349
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    .line 350
    return-void
.end method

.method public onFragmentSetHasOptionMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 651
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    .line 652
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_1c

    .line 655
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 681
    :cond_1c
    :goto_1c
    return-void

    .line 657
    :cond_1d
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_38

    .line 658
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_1c

    .line 661
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_1c

    .line 663
    :cond_38
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 664
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 665
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_1c

    .line 667
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    goto :goto_1c

    .line 669
    :cond_53
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 670
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_62

    .line 671
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 673
    :cond_62
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 675
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v3, :cond_71

    .line 676
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_1c

    .line 678
    :cond_71
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_1c
.end method

.method public final onInstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 997
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_20

    .line 998
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onInstallFragment  fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_20
    instance-of v0, p1, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v0, :cond_25

    .line 1009
    .end local p1
    :cond_24
    :goto_24
    return-void

    .line 1002
    .restart local p1
    :cond_25
    instance-of v0, p1, Lcom/android/email/activity/MessageListFragment;

    if-nez v0, :cond_24

    .line 1004
    instance-of v0, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_33

    .line 1005
    check-cast p1, Lcom/android/email/activity/MessageViewFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V

    goto :goto_24

    .line 1007
    .restart local p1
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to install unknown fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMailBoxList()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 644
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 645
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->setActionBarCustom()V

    .line 646
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    .line 647
    return v3
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-nez v0, :cond_5

    .line 319
    :goto_4
    return-void

    .line 317
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    .line 318
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    goto :goto_4
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    if-eqz v0, :cond_5

    .line 308
    :goto_4
    return-void

    .line 307
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsActivityResumed:Z

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 353
    const-string v0, "MessageListXl.state.account_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 354
    const-string v0, "MessageListXl.state.mailbox_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v0, "MessageListXl.state.message_id"

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 356
    const-string v0, "MessageListXl.state.search_str"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "MessageListXl.state.message_list_state"

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    return-void
.end method

.method public onSortBy(I)V
    .registers 7
    .parameter "sortType"

    .prologue
    const/4 v4, 0x0

    .line 1356
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 1357
    packed-switch p1, :pswitch_data_30

    .line 1373
    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 1376
    :goto_f
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1377
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 1381
    :goto_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    .line 1382
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 1384
    :cond_24
    return-void

    .line 1370
    :pswitch_25
    invoke-static {p1}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    goto :goto_f

    .line 1379
    :cond_29
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    goto :goto_1a

    .line 1357
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public onSplitLookChanged()V
    .registers 10

    .prologue
    const-wide/16 v7, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 393
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    .line 394
    .local v0, visiblePanes:I
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visiblePanes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_75

    const/4 v1, 0x3

    if-ne v0, v1, :cond_75

    .line 397
    sget v1, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    iget v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v1, v2, :cond_6a

    .line 398
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 404
    :goto_36
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    .line 406
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_6f

    .line 407
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 411
    :goto_44
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 412
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 419
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 490
    :cond_54
    :goto_54
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_66

    .line 491
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_66

    .line 493
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 497
    :cond_66
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    .line 498
    return-void

    .line 400
    :cond_6a
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    sput v1, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    goto :goto_36

    .line 409
    :cond_6f
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_44

    .line 426
    :cond_75
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8d

    .line 427
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    goto :goto_54

    .line 431
    :cond_8d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b8

    .line 432
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_54

    .line 436
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 437
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_b2

    .line 438
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_54

    .line 440
    :cond_b2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_54

    .line 443
    :cond_b8
    if-ne v0, v5, :cond_54

    .line 444
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v1, v5, :cond_d2

    .line 445
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_cc

    .line 446
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 447
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 449
    :cond_cc
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_54

    .line 450
    :cond_d2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-nez v1, :cond_f1

    sget-boolean v1, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v1, :cond_f1

    .line 455
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_54

    .line 457
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 458
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto/16 :goto_54

    .line 461
    :cond_f1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_fa

    .line 462
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 465
    :cond_fa
    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_11c

    .line 466
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 474
    :goto_105
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListFragment;->setListBackgroundColor(Z)V

    .line 475
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 476
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 477
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_54

    .line 468
    :cond_11c
    sget v1, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    iget v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v1, v2, :cond_128

    .line 469
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    goto :goto_105

    .line 471
    :cond_128
    iget v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    sput v1, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    goto :goto_105

    .line 479
    :cond_12d
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 480
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    goto/16 :goto_54
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 298
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 326
    return-void
.end method

.method public final onUninstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 1016
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_20

    .line 1017
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUninstallFragment  fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    if-ne p1, v0, :cond_2a

    .line 1030
    :cond_29
    :goto_29
    return-void

    .line 1022
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eq p1, v0, :cond_29

    .line 1024
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-ne p1, v0, :cond_29

    .line 1025
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->uninstallMessageViewFragment()V

    goto :goto_29
.end method

.method public refreshFragment(I)V
    .registers 8
    .parameter "orientation"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 501
    iput p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    .line 503
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_61

    .line 506
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-ne v0, v2, :cond_34

    .line 507
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_28

    .line 508
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    .line 525
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSplitLookChanged()V

    .line 531
    :goto_27
    return-void

    .line 510
    :cond_28
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_1f

    .line 513
    :cond_34
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v3, :cond_1f

    .line 515
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_4f

    .line 516
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane(Z)V

    goto :goto_1f

    .line 518
    :cond_4f
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5b

    .line 519
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane(Z)V

    goto :goto_1f

    .line 521
    :cond_5b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_1f

    .line 529
    :cond_61
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    goto :goto_27
.end method

.method protected final removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .registers 7
    .parameter "ft"
    .parameter "fragment"

    .prologue
    .line 920
    sget-boolean v1, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v1, :cond_20

    .line 921
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeFragment fragment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_20
    if-nez p2, :cond_23

    .line 936
    :cond_22
    :goto_22
    return-void

    .line 926
    :cond_23
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 929
    :try_start_2b
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_32

    .line 934
    :goto_2e
    invoke-virtual {p0, p2}, Lcom/android/email/activity/MessageListXLFragmentManager;->addFragmentToRemovalList(Landroid/app/Fragment;)V

    goto :goto_22

    .line 930
    :catch_32
    move-exception v0

    .line 931
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swalling IllegalStateException due to known bug for  fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method protected removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 3
    .parameter "ft"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 911
    return-object p1
.end method

.method public resetDatas()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 196
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 197
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 198
    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 199
    return-void
.end method

.method public selectAccount(JJJZZ)V
    .registers 17
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "byExplicitUserAction"
    .parameter "firstCallFromIntent"

    .prologue
    .line 558
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAccount mAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_24

    .line 561
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 563
    :cond_24
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2b

    .line 613
    :goto_2a
    return-void

    .line 568
    :cond_2b
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_38

    if-nez p8, :cond_38

    .line 569
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 572
    :cond_38
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    .line 573
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 574
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragmentState:Lcom/android/email/activity/MessageListFragment$State;

    .line 580
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->openMailboxes(J)V

    .line 581
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearContent()V

    .line 585
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5e

    if-nez p8, :cond_5e

    .line 586
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 589
    :cond_5e
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_9e

    .line 590
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 591
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_92

    .line 592
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    .line 603
    :goto_72
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_a4

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_a4

    .line 606
    const-wide/16 v1, -0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 612
    :goto_8a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountChanged(J)V

    goto :goto_2a

    .line 594
    :cond_92
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto :goto_72

    .line 597
    :cond_98
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto :goto_72

    .line 600
    :cond_9e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto :goto_72

    .line 607
    :cond_a4
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_ae

    .line 608
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->startInboxLookup()V

    goto :goto_8a

    .line 610
    :cond_ae
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    goto :goto_8a
.end method

.method public selectMailbox(JJZZZ)V
    .registers 15
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "byExplicitUserAction"
    .parameter "firstCallFromIntent"
    .parameter "isForSearchResult"

    .prologue
    .line 751
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_c

    .line 752
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 755
    :cond_c
    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_15

    if-eqz p6, :cond_15

    .line 863
    :cond_14
    :goto_14
    return-void

    .line 757
    :cond_15
    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_20

    .line 758
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    goto :goto_14

    .line 762
    :cond_20
    if-eqz p7, :cond_c2

    .line 763
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->setEasSearchString()V

    .line 768
    :goto_25
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_32

    if-nez p6, :cond_32

    .line 771
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->onCloseSerachWithoutAnimation()V

    .line 775
    :cond_32
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    .line 776
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 779
    if-eqz p5, :cond_3f

    .line 780
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->doAutoRefresh()V

    .line 784
    :cond_3f
    const/4 v0, 0x0

    .line 787
    .local v0, isSending:Z
    :try_start_40
    sget-object v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_135

    move-result v0

    .line 792
    :goto_4c
    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_d8

    .line 793
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    .line 801
    .local v1, mailboxType:I
    if-eqz v0, :cond_c7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c7

    .line 802
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 803
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_71

    .line 804
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 827
    .end local v1           #mailboxType:I
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->setSearchSpinnerOption()V

    .line 828
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v2, v3, v4, p7}, Lcom/android/email/activity/MessageListFragment;->openMailbox(JZ)V

    .line 829
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->restoreMesasgeListState()V

    .line 830
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v2, v3, v4, p7, p6}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZZ)V

    .line 831
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_92

    .line 832
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragment;->setMailboxId(J)V

    .line 834
    :cond_92
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    sget-wide v5, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMailboxChanged(JJ)V

    .line 839
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mContext:Landroid/content/Context;

    sget-wide v3, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    sget-wide v5, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageListFragment;->resetNewMessageCount(Landroid/content/Context;JJ)V

    .line 841
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_11b

    .line 843
    sget-boolean v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v2, :cond_114

    .line 844
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 845
    iget v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_106

    .line 846
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_14

    .line 765
    .end local v0           #isSending:Z
    :cond_c2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->releaseEasSearchString()V

    goto/16 :goto_25

    .line 807
    .restart local v0       #isSending:Z
    .restart local v1       #mailboxType:I
    :cond_c7
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 808
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_71

    .line 809
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto :goto_71

    .line 813
    .end local v1           #mailboxType:I
    :cond_d8
    if-eqz v0, :cond_f4

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    const-wide/16 v4, -0x6

    cmp-long v2, v2, v4

    if-nez v2, :cond_f4

    .line 814
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 815
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_71

    .line 816
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto/16 :goto_71

    .line 819
    :cond_f4
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 820
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_71

    .line 821
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    goto/16 :goto_71

    .line 848
    :cond_106
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto/16 :goto_14

    .line 851
    :cond_10d
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->showMiddlePane()V

    goto/16 :goto_14

    .line 854
    :cond_114
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()V

    goto/16 :goto_14

    .line 857
    :cond_11b
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {p0, p3, p4, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 858
    sget-boolean v2, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v2, :cond_14

    .line 859
    const-string v2, "Z7App"

    const-string v3, "from social Hub!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto/16 :goto_14

    .line 788
    :catch_135
    move-exception v2

    goto/16 :goto_4c
.end method

.method public selectMessage(JI)V
    .registers 13
    .parameter "messageId"
    .parameter "mode"

    .prologue
    const/4 v8, 0x1

    .line 1056
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1057
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1059
    :cond_d
    sget-wide v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_14

    .line 1114
    :goto_13
    return-void

    .line 1063
    :cond_14
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->saveMessageListFragmentState()V

    .line 1066
    sput-wide p1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    .line 1069
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(JI)V

    .line 1070
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v8, :cond_46

    .line 1074
    :try_start_26
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1075
    sget-wide v4, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->navigateToMessage(JIJ)V
    :try_end_34
    .catch Ljava/security/InvalidParameterException; {:try_start_26 .. :try_end_34} :catch_35

    goto :goto_13

    .line 1079
    :catch_35
    move-exception v7

    .line 1080
    .local v7, ipe:Ljava/security/InvalidParameterException;
    const-string v0, "Z7App"

    const-string v1, "can not open email when MessageId is -1"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1077
    .end local v7           #ipe:Ljava/security/InvalidParameterException;
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_45
    .catch Ljava/security/InvalidParameterException; {:try_start_3e .. :try_end_45} :catch_35

    goto :goto_13

    .line 1084
    :cond_46
    :try_start_46
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1085
    sget-wide v4, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxId:J

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->navigateToMessage(JIJ)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_7e

    .line 1097
    :goto_54
    sget-boolean v0, Lcom/android/email/activity/MessageListXLFragmentManager;->mIsPhone:Z

    if-eqz v0, :cond_b1

    .line 1098
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1100
    iget v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I

    if-eq v0, v8, :cond_69

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a3

    .line 1102
    :cond_69
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto :goto_13

    .line 1087
    :cond_6f
    :try_start_6f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->showContent(ZZ)V

    .line 1088
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    sget-wide v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7d} :catch_7e

    goto :goto_54

    .line 1090
    :catch_7e
    move-exception v6

    .line 1091
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectMessage() - exception : sMessageId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->sMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 1104
    .end local v6           #e:Ljava/lang/Exception;
    :cond_a3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto/16 :goto_13

    .line 1108
    :cond_aa
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightOnlyPane()V

    goto/16 :goto_13

    .line 1111
    :cond_b1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()V

    goto/16 :goto_13
.end method

.method public setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .registers 3
    .parameter "mailboxListFragmentCallback"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 205
    return-void
.end method

.method public setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .registers 3
    .parameter "messageListFragmentCallback"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 220
    return-void
.end method

.method public setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .registers 3
    .parameter "messageViewFragmentCallback"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 228
    :cond_9
    return-void
.end method

.method public setSendingProgressFlag(JZ)V
    .registers 6
    .parameter "accountId"
    .parameter "bool"

    .prologue
    .line 712
    if-eqz p3, :cond_c

    .line 713
    :try_start_2
    sget-object v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 721
    :goto_b
    return-void

    .line 715
    :cond_c
    sget-object v0, Lcom/android/email/activity/MessageListXLFragmentManager;->sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_b

    .line 717
    :catch_16
    move-exception v0

    goto :goto_b
.end method

.method protected uninstallMessageViewFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1039
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 1040
    iput-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 1041
    return-void
.end method

.method public updateMessageCommandButtons(ZZII)V
    .registers 6
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1200
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragment;->enableNavigationButtonsOnView(ZZII)V

    .line 1203
    :cond_d
    return-void
.end method

.method public updateSendingProgressFlag()V
    .registers 5

    .prologue
    .line 724
    sget-object v1, Lcom/android/email/activity/MessageListXLFragmentManager;->sIsMessageSendingStatusPerAccount:Ljava/util/HashSet;

    sget-wide v2, Lcom/android/email/activity/MessageListXLFragmentManager;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 725
    .local v0, isSendingIcon:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v1, :cond_15

    .line 726
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 728
    :cond_15
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_1e

    .line 729
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 731
    :cond_1e
    if-nez v0, :cond_32

    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v1, :cond_32

    .line 732
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 733
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 735
    :cond_32
    return-void
.end method
