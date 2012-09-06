.class public Lcom/android/email/activity/MailboxListFragment;
.super Landroid/app/ListFragment;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;,
        Lcom/android/email/activity/MailboxListFragment$EmptyCallback;,
        Lcom/android/email/activity/MailboxListFragment$Callback;
    }
.end annotation


# static fields
.field private static final sTouchFrame:Landroid/graphics/Rect;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

.field private mDragInProgress:Z

.field private mDragItemHeight:I

.field private mDragItemMailboxId:J

.field private mDropTargetId:I

.field private mDropTargetView:Lcom/android/email/activity/MailboxListItem;

.field private mHighlightedMailboxId:J

.field private mImmutableAccountId:Ljava/lang/Long;

.field private mImmutableEnableHighlight:Z

.field private mImmutableInitialCurrentMailboxId:J

.field private mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

.field private final mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

.field private mNextHighlightedMailboxId:J

.field private mParentDetermined:Z

.field private mParentMailboxId:J

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mSavedListState:Landroid/os/Parcelable;

.field private mTargetScrolling:Z

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 151
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 177
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 187
    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 201
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 206
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 208
    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 212
    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 218
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$1;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    .line 755
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MailboxListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->updateHighlightedMailbox(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MailboxListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListItem;)Lcom/android/email/activity/MailboxListItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxListFragment;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxListFragment;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MailboxListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentDetermined:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MailboxListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    return-wide p1
.end method

.method private initializeArgCache()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 331
    :goto_4
    return-void

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    .line 329
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initialParentMailboxId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableInitialCurrentMailboxId:J

    .line 330
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enablehighlight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableEnableHighlight:Z

    goto :goto_4
.end method

.method private isRoot()Z
    .registers 5

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isViewCreated()Z
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;
    .registers 8
    .parameter "accountId"
    .parameter "initialCurrentMailboxId"
    .parameter "enableHighlight"

    .prologue
    .line 293
    new-instance v1, Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MailboxListFragment;-><init>()V

    .line 294
    .local v1, instance:Lcom/android/email/activity/MailboxListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    const-string v2, "initialParentMailboxId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    const-string v2, "enablehighlight"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 299
    return-object v1
.end method

.method private onDragEnded()V
    .registers 2

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    if-eqz v0, :cond_16

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 1079
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->enableUpdates(Z)V

    .line 1080
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->notifyDataSetChanged()V

    .line 1082
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 1084
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 1086
    :cond_16
    return-void
.end method

.method private onDragExited()V
    .registers 5

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_10

    .line 954
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 957
    :cond_10
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 958
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 959
    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)V
    .registers 21
    .parameter "event"

    .prologue
    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 968
    .local v5, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gtz v15, :cond_12

    .line 970
    const-string v15, "MailboxListFragment"

    const-string v16, "drag item height is not set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_11
    :goto_11
    return-void

    .line 974
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v15

    float-to-int v8, v15

    .line 975
    .local v8, rawTouchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v15

    float-to-int v9, v15

    .line 976
    .local v9, rawTouchY:I
    invoke-static {v5, v8, v9}, Lcom/android/email/activity/MailboxListFragment;->pointToIndex(Landroid/widget/ListView;II)I

    move-result v14

    .line 977
    .local v14, viewIndex:I
    move v13, v14

    .line 978
    .local v13, targetId:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    if-eq v13, v15, :cond_80

    .line 983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v15, :cond_41

    .line 984
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 985
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 988
    :cond_41
    invoke-virtual {v5, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 990
    .local v3, childView:Landroid/view/View;
    if-nez v3, :cond_b8

    .line 995
    const/4 v6, 0x0

    .line 996
    .local v6, newTarget:Lcom/android/email/activity/MailboxListItem;
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 997
    .local v2, childCount:I
    if-lt v14, v2, :cond_52

    .line 999
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_11

    .line 1003
    :cond_52
    const-string v15, "MailboxListFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "null view; idx: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", cnt: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v2           #childCount:I
    :goto_78
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 1032
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 1037
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_80
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v15

    add-int/lit8 v15, v15, -0x40

    sub-int v10, v9, v15

    .line 1038
    .local v10, scrollDiff:I
    if-lez v10, :cond_ef

    const/4 v11, 0x1

    .line 1039
    .local v11, scrollDown:Z
    :goto_8b
    const/16 v15, 0x40

    if-le v15, v9, :cond_f1

    const/4 v12, 0x1

    .line 1040
    .local v12, scrollUp:Z
    :goto_90
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v15, :cond_f3

    if-eqz v11, :cond_f3

    .line 1041
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v15

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v16

    sub-int v4, v15, v16

    .line 1042
    .local v4, itemsToScroll:I
    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    move/from16 v16, v0

    mul-int v7, v15, v16

    .line 1043
    .local v7, pixelsToScroll:I
    mul-int/lit8 v15, v7, 0x4

    invoke-virtual {v5, v7, v15}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1047
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_11

    .line 1005
    .end local v4           #itemsToScroll:I
    .end local v7           #pixelsToScroll:I
    .end local v10           #scrollDiff:I
    .end local v11           #scrollDown:Z
    .end local v12           #scrollUp:Z
    .restart local v3       #childView:Landroid/view/View;
    :cond_b8
    instance-of v15, v3, Lcom/android/email/activity/MailboxListItem;

    if-nez v15, :cond_bf

    .line 1008
    const/4 v6, 0x0

    .line 1009
    .restart local v6       #newTarget:Lcom/android/email/activity/MailboxListItem;
    const/4 v13, -0x1

    goto :goto_78

    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_bf
    move-object v6, v3

    .line 1011
    check-cast v6, Lcom/android/email/activity/MailboxListItem;

    .line 1012
    .restart local v6       #newTarget:Lcom/android/email/activity/MailboxListItem;
    iget-object v15, v6, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_d2

    .line 1016
    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListItem;->setDropTrashBackground()V

    goto :goto_78

    .line 1017
    :cond_d2
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 1021
    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListItem;->setDropActiveBackground()V

    goto :goto_78

    .line 1026
    :cond_e1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v15, v0, v1}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 1027
    const/4 v13, -0x1

    goto :goto_78

    .line 1038
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    .restart local v10       #scrollDiff:I
    :cond_ef
    const/4 v11, 0x0

    goto :goto_8b

    .line 1039
    .restart local v11       #scrollDown:Z
    :cond_f1
    const/4 v12, 0x0

    goto :goto_90

    .line 1048
    .restart local v12       #scrollUp:Z
    :cond_f3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v15, :cond_118

    if-eqz v12, :cond_118

    .line 1049
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    move/from16 v16, v0

    mul-int v7, v15, v16

    .line 1050
    .restart local v7       #pixelsToScroll:I
    neg-int v15, v7

    mul-int/lit8 v16, v7, 0x4

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1054
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_11

    .line 1055
    .end local v7           #pixelsToScroll:I
    :cond_118
    if-nez v12, :cond_11

    if-nez v11, :cond_11

    .line 1056
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    goto/16 :goto_11
.end method

.method private onDragStarted(Landroid/view/DragEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1092
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 1093
    .local v1, description:Landroid/content/ClipDescription;
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    .line 1094
    .local v4, mimeTypeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v4, :cond_3d

    .line 1095
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/email-message"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1100
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 1102
    const/16 v7, 0x2d

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1103
    .local v0, dash:I
    if-lez v0, :cond_31

    .line 1105
    add-int/lit8 v7, v0, 0x1

    :try_start_27
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_31} :catch_3f

    .line 1110
    :cond_31
    :goto_31
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 1112
    invoke-static {v6}, Lcom/android/email/activity/MailboxFragmentAdapter;->enableUpdates(Z)V

    .line 1114
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 1118
    .end local v0           #dash:I
    .end local v3           #mimeType:Ljava/lang/String;
    :goto_39
    return v5

    .line 1094
    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v3           #mimeType:Ljava/lang/String;
    :cond_3d
    move v5, v6

    .line 1118
    goto :goto_39

    .line 1106
    .restart local v0       #dash:I
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_3f
    move-exception v7

    goto :goto_31
.end method

.method private onDrop(Landroid/view/DragEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 1127
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 1129
    iget v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    .line 1130
    const/4 v9, 0x0

    .line 1152
    :goto_a
    return v9

    .line 1132
    :cond_b
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 1133
    .local v1, controller:Lcom/android/email/Controller;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 1134
    .local v0, clipData:Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 1139
    .local v2, count:I
    new-array v6, v2, [J

    .line 1140
    .local v6, messageIds:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1c
    if-ge v3, v2, :cond_39

    .line 1141
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1142
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1143
    .local v7, msgNum:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1144
    .local v4, id:J
    aput-wide v4, v6, v3

    .line 1140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1147
    .end local v4           #id:J
    .end local v7           #msgNum:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_39
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-object v10, v10, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_48

    .line 1148
    invoke-virtual {v1, v6}, Lcom/android/email/Controller;->deleteMessages([J)V

    goto :goto_a

    .line 1150
    :cond_48
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v10, v10, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual {v1, v6, v10, v11}, Lcom/android/email/Controller;->moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_a
.end method

.method private static pointToIndex(Landroid/widget/ListView;II)I
    .registers 7
    .parameter "list"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 268
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_6
    if-ltz v2, :cond_23

    .line 269
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    .line 271
    sget-object v3, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    sget-object v3, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 277
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_1f
    return v2

    .line 268
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 277
    .end local v0           #child:Landroid/view/View;
    :cond_23
    const/4 v2, -0x1

    goto :goto_1f
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 551
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 552
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_20
    const-string v0, "MailboxListFragment.state.parent_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 555
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 556
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 557
    return-void
.end method

.method private setInitialParentAndHighlight()V
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    .line 394
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getInitialCurrentMailboxId()J

    move-result-wide v2

    .line 395
    .local v2, initialMailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v4

    const-wide/high16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    .line 397
    iput-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 414
    :goto_12
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 415
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    .line 417
    :cond_1a
    return-void

    .line 401
    :cond_1b
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 403
    .local v0, inboxId:J
    cmp-long v4, v2, v0

    if-nez v4, :cond_2f

    .line 406
    iput-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_12

    .line 410
    :cond_2f
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_12
.end method

.method private startLoading(JJ)V
    .registers 12
    .parameter "parentMailboxId"
    .parameter "highlightedMailboxId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 695
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v2, :cond_30

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_30

    .line 696
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startLoading  parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " highlighted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_30
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 700
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    .line 703
    .local v1, parentMailboxChanging:Z
    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_43

    .line 704
    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 705
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 706
    const/4 v1, 0x1

    .line 708
    :cond_43
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 709
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 710
    iput-wide p3, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 713
    :cond_4d
    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    invoke-virtual {v0, v5, v6, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 715
    if-eqz v1, :cond_5c

    .line 716
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MailboxListFragment$Callback;->onParentMailboxChanged()V

    .line 718
    :cond_5c
    return-void
.end method

.method private stopScrolling()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1064
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1065
    .local v0, lv:Landroid/widget/ListView;
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-eqz v1, :cond_e

    .line 1066
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    .line 1071
    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1073
    :cond_e
    return-void
.end method

.method private updateChildViews()V
    .registers 9

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 933
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 935
    .local v3, itemCount:I
    if-lez v3, :cond_19

    iget v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gez v5, :cond_19

    .line 936
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 938
    :cond_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_32

    .line 939
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/email/activity/MailboxListItem;

    if-nez v5, :cond_27

    .line 938
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    move-object v2, v0

    .line 943
    check-cast v2, Lcom/android/email/activity/MailboxListItem;

    .line 944
    .local v2, item:Lcom/android/email/activity/MailboxListItem;
    iget-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    goto :goto_24

    .line 946
    .end local v0           #child:Landroid/view/View;
    .end local v2           #item:Lcom/android/email/activity/MailboxListItem;
    :cond_32
    return-void
.end method

.method private updateHighlightedMailbox(Z)Z
    .registers 13
    .parameter "ensureSelectionVisible"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x1

    .line 895
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isViewCreated()Z

    move-result v5

    if-nez v5, :cond_11

    :cond_f
    move v1, v4

    .line 922
    :cond_10
    :goto_10
    return v1

    .line 898
    :cond_11
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 899
    .local v3, lv:Landroid/widget/ListView;
    const/4 v1, 0x0

    .line 900
    .local v1, found:Z
    iget-wide v5, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_25

    .line 902
    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 903
    const/4 v1, 0x1

    .line 919
    :cond_20
    :goto_20
    if-nez v1, :cond_10

    .line 920
    iput-wide v9, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    goto :goto_10

    .line 906
    :cond_25
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 907
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    if-ge v2, v0, :cond_20

    .line 908
    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v5, v2}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3b

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 911
    :cond_3b
    const/4 v1, 0x1

    .line 912
    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 913
    if-eqz p1, :cond_20

    .line 914
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_20
.end method


# virtual methods
.method public canNavigateUp()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 602
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentDetermined:Z

    if-nez v1, :cond_6

    .line 605
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 338
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnableHighlight()Z
    .registers 2

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 356
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableEnableHighlight:Z

    return v0
.end method

.method public getInitialCurrentMailboxId()J
    .registers 3

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 347
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableInitialCurrentMailboxId:J

    return-wide v0
.end method

.method public getSelectedMailboxId()J
    .registers 5

    .prologue
    .line 563
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_a
.end method

.method public navigateUp()Z
    .registers 12

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 579
    const/4 v0, 0x0

    .line 592
    :goto_7
    return v0

    .line 581
    :cond_8
    new-instance v10, Lcom/android/email/activity/MailboxListFragment$2;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MailboxListFragment$2;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    .line 588
    .local v10, callback:Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v5

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    iget-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;-><init>(Landroid/content/Context;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JZJJLcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 592
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 438
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_20

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 439
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActivityCreated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 446
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 447
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 448
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 450
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    .line 452
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 453
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 362
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 365
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 373
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 374
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    .line 379
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 380
    new-instance v0, Lcom/android/email/activity/MailboxFragmentAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MailboxFragmentAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MailboxFragmentAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    if-nez p1, :cond_47

    .line 384
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->setInitialParentAndHighlight()V

    .line 388
    :goto_46
    return-void

    .line 386
    :cond_47
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_46
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 422
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 423
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_20
    const v0, 0x7f04002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 522
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 523
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 526
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 527
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 510
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 511
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroyView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_20
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 514
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 515
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 531
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 532
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDetach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 535
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, result:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 1196
    :goto_8
    :pswitch_8
    return v0

    .line 1160
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragStarted(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1161
    goto :goto_8

    .line 1173
    :pswitch_e
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_8

    .line 1180
    :pswitch_12
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragEnded()V

    goto :goto_8

    .line 1184
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragLocation(Landroid/view/DragEvent;)V

    goto :goto_8

    .line 1191
    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1192
    goto :goto_8

    .line 1158
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_9
        :pswitch_16
        :pswitch_1a
        :pswitch_12
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "doNotUse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(I)J

    move-result-wide v3

    .line 861
    .local v3, id:J
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 862
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/MailboxListFragment$Callback;->onAccountSelected(J)V

    .line 883
    .end local p2
    :cond_13
    :goto_13
    return-void

    .line 863
    .restart local p2
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isMailboxRow(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 868
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getAccountId(I)J

    move-result-wide v1

    .line 869
    .local v1, accountId:J
    const/4 v5, 0x0

    .line 870
    .local v5, nestedNavigation:Z
    check-cast p2, Lcom/android/email/activity/MailboxListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/email/activity/MailboxListItem;->isNavigable()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_35

    .line 872
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    .line 873
    const/4 v5, 0x1

    .line 875
    :cond_35
    const-wide/high16 v6, 0x1000

    cmp-long v0, v1, v6

    if-nez v0, :cond_3f

    .line 879
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v1

    .line 881
    :cond_3f
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJZ)V

    goto :goto_13
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 490
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 491
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 494
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 495
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 475
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 476
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 482
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    .line 483
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->isMailboxListStale(J)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 484
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 486
    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 539
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 540
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 543
    const-string v0, "MailboxListFragment.state.parent_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 544
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 545
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isViewCreated()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 546
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    :cond_44
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 464
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 465
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 468
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 502
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 503
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 506
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 456
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 457
    return-void
.end method

.method public setHighlightedMailbox(J)V
    .registers 6
    .parameter "mailboxId"

    .prologue
    .line 734
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 735
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setHighlightedMailbox  mailbox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_24
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 751
    :cond_2a
    :goto_2a
    return-void

    .line 740
    :cond_2b
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2a

    .line 743
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 746
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    goto :goto_2a

    .line 749
    :cond_3c
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    .line 750
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->updateHighlightedMailbox(Z)Z

    goto :goto_2a
.end method
