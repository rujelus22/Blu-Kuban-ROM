.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# static fields
.field public static mThreadIdFromComposeMessageFragment:J


# instance fields
.field private mCMASViewer:Lcom/android/mms/ui/CMASViewer;

.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEmptyScreen:Landroid/view/View;

.field private mForceShowComposer:Z

.field private mIsCmasViewOnly:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mOptionMenuCount:I

.field private mOptionSelectResult:Z

.field private mRightScreen:Landroid/view/View;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private onCMASClose:Lcom/android/mms/ui/OnEventListener;

.field private onCMASViewStateChanged:Lcom/android/mms/ui/OnEventListener;

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 1054
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    .line 1069
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onCMASClose:Lcom/android/mms/ui/OnEventListener;

    .line 1085
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    .line 1228
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$5;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    .line 1259
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$6;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onCMASViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationComposer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationComposer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationComposer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->cmasRequestsClosing()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getCmasMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/CMASViewer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationComposer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    return-void
.end method

.method private addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 7
    .parameter "id"
    .parameter "list"
    .parameter "composer"

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1471
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1473
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_1a

    .line 1474
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 1475
    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1476
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1477
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1479
    :cond_1a
    if-eqz p3, :cond_28

    .line 1480
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 1481
    invoke-virtual {v1, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1482
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1483
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1485
    :cond_28
    return-void
.end method

.method private calcSplitMode()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1137
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v2, v0, :cond_14

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1189
    :cond_13
    :goto_13
    return v0

    .line 1141
    :cond_14
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_1e

    .line 1142
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_13

    move v0, v1

    .line 1143
    goto :goto_13

    .line 1149
    :cond_1e
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_70

    .line 1150
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v2

    move v3, v2

    .line 1152
    :goto_2f
    const/4 v2, 0x0

    .line 1153
    if-ne v3, v4, :cond_42

    .line 1154
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_6e

    move v0, v1

    .line 1173
    :cond_37
    :goto_37
    packed-switch v0, :pswitch_data_72

    .line 1187
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():unknown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1156
    :cond_42
    if-eqz v3, :cond_37

    .line 1159
    sget-boolean v2, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eq v2, v0, :cond_37

    .line 1162
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_37

    move v0, v1

    .line 1163
    goto :goto_37

    .line 1175
    :pswitch_4e
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1178
    :pswitch_56
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1181
    :pswitch_5e
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1184
    :pswitch_66
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_6e
    move v0, v2

    goto :goto_37

    :cond_70
    move v3, v4

    goto :goto_2f

    .line 1173
    :pswitch_data_72
    .packed-switch -0x1
        :pswitch_4e
        :pswitch_56
        :pswitch_5e
        :pswitch_66
    .end packed-switch
.end method

.method private cmasRequestsClosing()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 946
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "composerRequestsClosing()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 950
    if-ne v0, v3, :cond_1a

    .line 952
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v0, :cond_16

    .line 953
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    .line 985
    :cond_15
    :goto_15
    return-void

    .line 955
    :cond_16
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_15

    .line 962
    :cond_1a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 963
    if-nez v0, :cond_25

    .line 966
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeCmasView()V

    .line 970
    :cond_25
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getCmasMessageStatus()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_30

    .line 972
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeCmasView()V

    .line 975
    :cond_30
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_15

    .line 977
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getCmasMessageStatus()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-ne v0, v3, :cond_45

    .line 978
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 980
    :cond_45
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getCmasMessageStatus()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 981
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_15
.end method

.method private composerRequestsClosing()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 904
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "composerRequestsClosing()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 908
    if-ne v0, v4, :cond_1b

    .line 910
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v0, :cond_17

    .line 911
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    .line 943
    :cond_16
    :goto_16
    return-void

    .line 913
    :cond_17
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_16

    .line 920
    :cond_1b
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 921
    if-nez v0, :cond_29

    .line 923
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 924
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 928
    :cond_29
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    if-nez v0, :cond_35

    .line 929
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 930
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 933
    :cond_35
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_16

    .line 935
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    if-ne v0, v4, :cond_48

    .line 936
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 938
    :cond_48
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    if-ne v0, v3, :cond_16

    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_16
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .registers 2
    .parameter

    .prologue
    .line 184
    if-eqz p0, :cond_10

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getCmasMessageStatus()I
    .registers 5

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v0, -0x1

    .line 1118
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_1e

    .line 1119
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewer;->getState()I

    move-result v0

    .line 1120
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1e

    .line 1122
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_37

    .line 1123
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1132
    :cond_1e
    :goto_1e
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return v0

    .line 1126
    :cond_37
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_1e
.end method

.method private getComposeMessageStatus()I
    .registers 5

    .prologue
    .line 1095
    const/4 v0, -0x1

    .line 1097
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1c

    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1c

    .line 1101
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_35

    .line 1102
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1111
    :cond_1c
    :goto_1c
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    return v0

    .line 1105
    :cond_35
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_1c
.end method

.method private getLauncherList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 787
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_12
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v1

    .line 791
    :goto_16
    return-object v1

    .line 788
    :catch_17
    move-exception v0

    .line 789
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method private handleMoveTaskToBack()V
    .registers 4

    .prologue
    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 798
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "move to back"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    .line 810
    :goto_1b
    return-void

    .line 803
    :cond_1c
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1b

    .line 806
    :catch_27
    move-exception v0

    .line 808
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private initCMASViewer()Lcom/android/mms/ui/CMASViewer;
    .registers 6

    .prologue
    .line 293
    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 294
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 296
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/CMASViewer;

    .line 297
    .local v0, cmasviewer:Lcom/android/mms/ui/CMASViewer;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/CMASViewer;->setActivity(Landroid/app/Activity;)V

    .line 298
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->onCMASClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 299
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->onCMASViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 302
    return-object v0
.end method

.method private initSplitManager()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 813
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "initSplitManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v0, :cond_19

    .line 885
    :goto_18
    return v3

    .line 819
    :cond_19
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 822
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 850
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v4

    .line 851
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 858
    if-eqz v4, :cond_a7

    .line 859
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_99

    .line 860
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_96

    :cond_39
    move v1, v2

    .line 875
    :goto_3a
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 876
    const-string v5, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSplitManager width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    new-instance v5, Lcom/android/mms/ui/SplitManager;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v5, v6, v7, v8, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 878
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 879
    if-ne v4, v2, :cond_b5

    .line 880
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 883
    :goto_8f
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v3, v2

    .line 885
    goto :goto_18

    .line 863
    :cond_96
    const/4 v0, 0x2

    move v1, v0

    goto :goto_3a

    .line 865
    :cond_99
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_a5

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_a5

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_bb

    :cond_a5
    move v1, v2

    .line 866
    goto :goto_3a

    .line 870
    :cond_a7
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_bb

    :cond_b3
    move v1, v2

    .line 871
    goto :goto_3a

    .line 882
    :cond_b5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_8f

    :cond_bb
    move v1, v3

    goto/16 :goto_3a
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, result:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 197
    const/4 v0, 0x1

    .line 211
    :goto_8
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return v0

    .line 199
    :cond_21
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 200
    const/4 v0, 0x1

    goto :goto_8

    .line 202
    :cond_29
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 203
    const/4 v0, 0x1

    goto :goto_8

    .line 205
    :cond_31
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 206
    const/4 v0, 0x1

    goto :goto_8

    .line 208
    :cond_39
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isIntentForCMAS(Landroid/content/Intent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_10
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    const-class v2, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 258
    :cond_24
    const/4 v0, 0x1

    .line 260
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6f

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v3, "cmas"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_28

    const-class v3, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 287
    :cond_28
    :goto_28
    return v1

    .line 274
    :cond_29
    if-nez v2, :cond_45

    .line 286
    :cond_2b
    :goto_2b
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForComposer(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 287
    goto :goto_28

    .line 276
    :cond_45
    const-class v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_6d
    move v0, v1

    goto :goto_2b

    .line 282
    :cond_6f
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_2b
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 189
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 190
    .local v0, hasMain:Z
    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 241
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 236
    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 246
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    .local v0, hasMain:Z
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isLauncherTaskRunning()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 754
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 755
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_15

    .line 756
    :cond_d
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :goto_14
    return v7

    .line 761
    :cond_15
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 762
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 765
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 766
    .local v3, launcherInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 767
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 768
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v7, 0x1

    goto :goto_14

    .line 774
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5c
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    const-string v5, "thread_id"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 219
    .local v1, tempThread_id:J
    const-string v5, "isFailedNoti"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 221
    .local v0, isFailedNoti:Z
    if-ne v0, v4, :cond_28

    .line 222
    cmp-long v5, v1, v6

    if-lez v5, :cond_29

    const/high16 v5, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_29

    const/high16 v5, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_29

    .line 230
    :cond_28
    :goto_28
    return v3

    :cond_29
    move v3, v4

    .line 227
    goto :goto_28
.end method

.method private refreshSplitManager(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1194
    const-string v0, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v0, :cond_1e

    .line 1226
    :cond_1d
    :goto_1d
    return-void

    .line 1199
    :cond_1e
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 1200
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v2, v0, :cond_46

    .line 1201
    if-nez p1, :cond_1d

    .line 1204
    if-eqz v0, :cond_3b

    .line 1205
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_1d

    .line 1208
    :cond_3b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_1d

    .line 1212
    :cond_46
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 1214
    if-eqz v0, :cond_64

    .line 1215
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1216
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_6b

    .line 1217
    const/4 v0, 0x2

    .line 1222
    :goto_56
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1223
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_1d

    .line 1219
    :cond_64
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    :cond_6b
    move v0, v1

    goto :goto_56
.end method

.method private removeCmasView()V
    .registers 3

    .prologue
    .line 1004
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "removeComposer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_c

    .line 1018
    :goto_b
    return-void

    .line 1009
    :cond_c
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1010
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onPause()V

    .line 1014
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStop()V

    .line 1015
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onDestroy()V

    .line 1016
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    goto :goto_b
.end method

.method private removeComposer()V
    .registers 4

    .prologue
    .line 988
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "removeComposer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_c

    .line 1000
    :cond_b
    :goto_b
    return-void

    .line 993
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 995
    if-eqz v0, :cond_b

    .line 996
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipExplicit()V

    .line 997
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 998
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_b
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 8
    .parameter "list"
    .parameter "composer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1489
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1491
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_1e

    .line 1492
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1493
    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 1494
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1495
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1496
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 1498
    :cond_1e
    if-eqz p2, :cond_2e

    .line 1499
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1500
    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 1501
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1502
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1503
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1505
    :cond_2e
    return-void
.end method

.method private showEmptyScreen(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1022
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_3d

    .line 1026
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cv.v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_3d
    if-eqz p1, :cond_52

    .line 1029
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_48

    .line 1030
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    :cond_48
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_51

    .line 1034
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1052
    :cond_51
    :goto_51
    return-void

    .line 1039
    :cond_52
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-nez v0, :cond_6b

    .line 1040
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_51

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    goto :goto_51

    .line 1043
    :cond_6b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-eqz v0, :cond_84

    .line 1044
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_51

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    .line 1047
    :cond_84
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-eqz v0, :cond_51

    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51
.end method


# virtual methods
.method public CreateConversationList()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 306
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_17

    .line 308
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_16

    .line 309
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 315
    :cond_16
    :goto_16
    return-void

    .line 313
    :cond_17
    const v0, 0x7f080056

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 314
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public ShowSipOnComposeMessage()V
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_11

    .line 1325
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 1332
    :cond_11
    return-void
.end method

.method public finishCMASViewer(Z)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 1424
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Finish CMAS Viewer"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 1427
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_29

    .line 1428
    if-eqz p1, :cond_2a

    .line 1429
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1430
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-ne v2, v3, :cond_24

    if-nez v1, :cond_29

    .line 1431
    :cond_24
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0, v0}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1443
    :cond_29
    :goto_29
    return v0

    .line 1434
    :cond_2a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_29

    .line 1437
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1438
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0, v0}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1439
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public getNextSplitMode()I
    .registers 2

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewOnly:Z

    if-eqz v0, :cond_12

    :cond_c
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v0, :cond_12

    .line 894
    :cond_10
    const/4 v0, -0x1

    .line 899
    :goto_11
    return v0

    .line 896
    :cond_12
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 897
    const/4 v0, 0x2

    goto :goto_11

    .line 899
    :cond_1e
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSplitMode()I
    .registers 5

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1319
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    return v0
.end method

.method public isSplitBarTouch()Z
    .registers 2

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public isSplitModeActive()Z
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1360
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_17

    .line 1361
    const/4 v0, 0x1

    .line 1362
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1449
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    if-nez p1, :cond_11

    .line 1451
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :cond_10
    :goto_10
    return-void

    .line 1454
    :cond_11
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1456
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_35

    .line 1459
    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    goto :goto_10

    .line 1460
    :cond_35
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_10

    .line 1461
    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1462
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1463
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1464
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 1465
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    goto :goto_10
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged(),newConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9d

    const/4 v1, 0x1

    .line 506
    .local v1, isLandscape:Z
    :goto_26
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v2, v1, :cond_93

    .line 507
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 511
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v2, :cond_87

    .line 512
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 514
    .local v0, display:Landroid/view/Display;
    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 517
    .end local v0           #display:Landroid/view/Display;
    :cond_87
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 519
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_93

    .line 520
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 525
    :cond_93
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_9c

    .line 526
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/CMASViewer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    :cond_9c
    return-void

    .end local v1           #isLandscape:Z
    :cond_9d
    move v1, v3

    .line 504
    goto :goto_26
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 532
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected,item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, consumed:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_27

    .line 535
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/CMASViewer;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 536
    :cond_27
    if-eqz v0, :cond_2b

    .line 537
    const/4 v1, 0x1

    .line 539
    :goto_2a
    return v1

    :cond_2b
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_2a
.end method

.method public onConversationDeleteMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1291
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1294
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 1295
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1298
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_3c

    .line 1300
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 1302
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 1307
    :cond_2b
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 1309
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1315
    :cond_3c
    return-void
.end method

.method public onConversationDeleteStart()V
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_9

    .line 1419
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    .line 1421
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 111
    invoke-super {p0, v9}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "\tonCreate()"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, ConversationListOn:Z
    const/4 v0, 0x0

    .line 118
    .local v0, ComposeMessageOn:Z
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_e2

    move v5, v6

    :goto_23
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 122
    const v5, 0x7f080055

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    .line 123
    const v5, 0x7f080057

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 124
    const v5, 0x7f080059

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 128
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 129
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ConversationListOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const v5, 0x7f080056

    new-instance v8, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 131
    const/4 v1, 0x1

    .line 134
    :cond_5f
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 136
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCMAS(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 138
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCMASViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    .line 141
    :cond_71
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v5, :cond_8e

    .line 142
    :cond_7b
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ComposeMessageOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const v5, 0x7f080058

    new-instance v8, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v9, v8}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_8e
    if-nez v1, :cond_e5

    if-eqz v0, :cond_e5

    move v5, v6

    :goto_93
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 149
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v5, :cond_e7

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v5, :cond_e7

    move v5, v6

    :goto_9e
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewOnly:Z

    .line 151
    if-eqz v1, :cond_b8

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, key:Ljava/lang/String;
    if-eqz p1, :cond_b8

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 155
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 158
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #key:Ljava/lang/String;
    :cond_b8
    if-eqz v0, :cond_e9

    .line 159
    const/4 v2, 0x0

    .line 160
    .restart local v2       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 161
    .restart local v4       #key:Ljava/lang/String;
    if-eqz p1, :cond_d4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 162
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 163
    invoke-static {v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    .line 165
    :cond_d4
    if-eqz v2, :cond_db

    .line 166
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 168
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_db
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 180
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #key:Ljava/lang/String;
    :goto_de
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    .line 181
    return-void

    .end local v3           #intent:Landroid/content/Intent;
    :cond_e2
    move v5, v7

    .line 120
    goto/16 :goto_23

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_e5
    move v5, v7

    .line 147
    goto :goto_93

    :cond_e7
    move v5, v7

    .line 149
    goto :goto_9e

    .line 171
    :cond_e9
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v5, :cond_fa

    .line 172
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    sput-boolean v6, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 173
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v5, v9, v3}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 174
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_de

    .line 178
    :cond_fa
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_de
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 1374
    packed-switch p1, :pswitch_data_10

    .line 1382
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1376
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_3

    .line 1377
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 1374
    :pswitch_data_10
    .packed-switch 0x7f080000
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 415
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_11

    .line 418
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 419
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_17

    .line 420
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 421
    :cond_17
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 668
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 678
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    .line 748
    :cond_b
    :goto_b
    return v2

    .line 682
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-nez v4, :cond_14

    move v2, v3

    .line 683
    goto :goto_b

    .line 686
    :cond_14
    if-ne p1, v6, :cond_59

    .line 687
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "onKeyUp():KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_b

    .line 692
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 693
    .local v0, splitMode:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_41

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v4, :cond_3b

    if-nez v0, :cond_41

    .line 695
    :cond_3b
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_b

    .line 699
    :cond_41
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_53

    .line 700
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_b

    .line 704
    :cond_53
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 705
    if-eq v0, v2, :cond_90

    .line 706
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 728
    .end local v0           #splitMode:I
    :cond_59
    :goto_59
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6d

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_b

    .line 733
    :cond_6d
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_81

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/CMASViewer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_b

    .line 740
    :cond_81
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_c2

    if-ne p1, v6, :cond_c2

    .line 741
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_c2

    .line 742
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto/16 :goto_b

    .line 707
    .restart local v0       #splitMode:I
    :cond_90
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v3, :cond_ad

    .line 708
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 710
    .local v1, useSplitView:Z
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_aa

    if-eqz v1, :cond_aa

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 712
    :cond_aa
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_59

    .line 715
    .end local v1           #useSplitView:Z
    :cond_ad
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewOnly:Z

    if-eqz v3, :cond_59

    .line 716
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 718
    .restart local v1       #useSplitView:Z
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_bf

    if-eqz v1, :cond_bf

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_59

    .line 720
    :cond_bf
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_59

    .line 748
    .end local v0           #splitMode:I
    .end local v1           #useSplitView:Z
    :cond_c2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 431
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "\tonNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 437
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 438
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForApplication(), just bring to front"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_19
    return-void

    .line 442
    :cond_1a
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v0

    .line 444
    .local v0, forList:Z
    if-eqz v0, :cond_32

    .line 445
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForList(), show list"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_5d

    .line 447
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 451
    :goto_30
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 454
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 456
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v1

    .line 458
    .local v1, tempAnimationEnabled:Z
    if-nez v0, :cond_45

    .line 459
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 462
    :cond_45
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_69

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 468
    :goto_4e
    if-nez v0, :cond_55

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 496
    .end local v1           #tempAnimationEnabled:Z
    :cond_55
    :goto_55
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 449
    :cond_5d
    const v2, 0x7f080056

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_30

    .line 465
    .restart local v1       #tempAnimationEnabled:Z
    :cond_69
    const v2, 0x7f080058

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v4, v3}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_4e

    .line 473
    .end local v1           #tempAnimationEnabled:Z
    :cond_75
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCMAS(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 474
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_85

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_55

    .line 477
    :cond_85
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCMASViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    .line 478
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v4, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 479
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 480
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_55

    .line 492
    :cond_9b
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_55

    .line 493
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_55
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 544
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2c

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 552
    :cond_2c
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_3c

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 556
    :cond_3c
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_4c

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/CMASViewer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 559
    :cond_4c
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 605
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 393
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_11

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 402
    :cond_11
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 564
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onPrepareOptionsMenu()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 567
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    .line 568
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 595
    :cond_19
    :goto_19
    return v1

    .line 571
    :cond_1a
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_19

    .line 574
    :cond_26
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 576
    .local v0, splitMode:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 578
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z

    .line 580
    :cond_3f
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    .line 581
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)Z

    .line 583
    :cond_4b
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5e

    if-eqz v0, :cond_5e

    .line 585
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/CMASViewer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 587
    :cond_5e
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu() mOptionMenuCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    .line 593
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_19
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 1415
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 367
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 372
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 375
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 378
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 379
    .local v0, isAnimationEnable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_22

    .line 380
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 382
    :cond_22
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2f

    .line 384
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2f

    .line 385
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    .line 389
    :cond_2f
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 332
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_25

    .line 337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 342
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_25
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_40

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 346
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 348
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_40
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_14

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 614
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 320
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_1a

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 328
    :cond_1a
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 406
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_14

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 410
    :cond_14
    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 427
    :cond_9
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1510
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    .line 1515
    :goto_11
    return-void

    .line 1514
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_11
.end method

.method public openThread(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1336
    const-string v0, "cmas"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1337
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of isCMAS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1339
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_34

    .line 1340
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    .line 1357
    :goto_33
    return-void

    .line 1342
    :cond_34
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCMASViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, v4, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCMASViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_33

    .line 1351
    :cond_4a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_54

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_33

    .line 1354
    :cond_54
    const v0, 0x7f080058

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v4, v1}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_33
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .registers 4
    .parameter "threadId"

    .prologue
    .line 1395
    sput-wide p1, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    .line 1397
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_8

    .line 1398
    const/4 v0, 0x0

    .line 1400
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_7
.end method

.method public requestFocusOnComposer()Z
    .registers 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_6

    .line 1405
    const/4 v0, 0x0

    .line 1407
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_5
.end method

.method public requsetFocusOnConversationList(J)Z
    .registers 4
    .parameter "threadId"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_6

    .line 1387
    const/4 v0, 0x0

    .line 1389
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_5
.end method

.method public setConversationSelectAll(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1273
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_1d

    .line 1279
    :goto_1c
    return-void

    .line 1278
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    goto :goto_1c
.end method

.method public setMessageSelectAll(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1282
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_1d

    .line 1288
    :goto_1c
    return-void

    .line 1287
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_1c
.end method
