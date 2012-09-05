.class public Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "MessageExpandableListAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

.field private mContext:Landroid/content/Context;

.field public mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

.field private mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "MessageExpandableListAdapter"

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 14
    .parameter "context"
    .parameter "Layout"
    .parameter "api"
    .parameter "bouncing"

    .prologue
    const/4 v2, 0x0

    .line 30
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, v2

    move-object v5, v2

    move v6, p2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 26
    iput-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 31
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 33
    iput-object p4, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 34
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->initialize()V

    .line 35
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setMessageAPI(Lcom/sec/android/socialhub/messagelist/IMessageAPI;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setState(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 129
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 130
    .local v0, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    const-string v1, "true"

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setBindView(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 133
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    const/4 v5, 0x1

    .line 103
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 105
    .local v0, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    sget v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v1, v5, :cond_53

    .line 107
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->TAG:Ljava/lang/String;

    const-string v2, " bindGroupView() "

    const-string v3, " mEmailViewMode = MODE_CONVERSATION_VIEW "

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->TAG:Ljava/lang/String;

    const-string v2, " bindGroupView() "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocialHub.PROJECTION_CNT  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->PROJECTION_CNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->PROJECTION_CNT:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v1, v5, :cond_53

    .line 111
    sget v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->PROJECTION_CNT:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miCount:I

    .line 112
    const-string v1, "Title"

    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    .line 113
    if-eqz p4, :cond_63

    const-string v1, "Open"

    :goto_47
    iput-object v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrExt1:Ljava/lang/String;

    .line 115
    iget v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miCount:I

    iget v2, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_66

    .line 116
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    .line 121
    :cond_53
    :goto_53
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setSearchMode(Landroid/view/View;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->setBindView(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    .line 124
    return-void

    .line 113
    :cond_63
    const-string v1, "Hide"

    goto :goto_47

    .line 118
    :cond_66
    iput v5, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    goto :goto_53
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->changeCursor(Landroid/database/Cursor;)V

    .line 68
    :cond_c
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 10
    .parameter "cursor"

    .prologue
    .line 72
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getChildrenCursor()"

    const-string v2, "start getChildrenCursor"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v6

    .line 75
    .local v6, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, selection:Ljava/lang/String;
    if-eqz v6, :cond_55

    iget-object v0, v6, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v1, "0_All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_55
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    .local v7, child:Landroid/database/Cursor;
    return-object v7
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->destroy()V

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    .line 55
    :cond_f
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mBouncing:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    .line 56
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 57
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 59
    return-void
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 91
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setGroupCursor()"

    const-string v2, "start setGroupCursor"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->changeIndexer(Landroid/database/Cursor;)V

    .line 94
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->mListBinder:Lcom/sec/android/socialhub/messagelist/MessageListBinder;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->changeGroupRecipients(Landroid/database/Cursor;)V

    .line 96
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 97
    return-void
.end method
