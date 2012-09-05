.class public Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageQueryHandler.java"


# static fields
.field private static instance:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;


# instance fields
.field private mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

.field private mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

.field private mPrevCursorCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->instance:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mPrevCursorCnt:I

    .line 33
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;
    .registers 4
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->instance:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    if-nez v0, :cond_13

    .line 40
    const-class v1, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    monitor-enter v1

    .line 42
    :try_start_7
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->instance:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    .line 43
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->instance:Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;

    return-object v0

    .line 43
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public checkAdapter(Ljava/lang/Object;I)Z
    .registers 5
    .parameter "cookie"
    .parameter "count"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, ret:Z
    iget v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mPrevCursorCnt:I

    if-nez v1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    if-nez p2, :cond_a

    .line 225
    :cond_9
    const/4 v0, 0x1

    .line 227
    :cond_a
    return v0
.end method

.method public collapseAllGroup(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    if-eqz v1, :cond_15

    if-eqz p1, :cond_15

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 207
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->collapseGroup(I)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 210
    .end local v0           #i:I
    :cond_15
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 51
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    iput-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 59
    :cond_12
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    .line 98
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-nez v6, :cond_f

    .line 100
    const-string v6, "MessageQueryHandler"

    const-string v7, "onQueryComplete"

    const-string v8, "mMessageListview is already null"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local p2
    :goto_e
    return-void

    .line 104
    .restart local p2
    :cond_f
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/messagelist/MessageListView;->stopDialog()V

    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, count:I
    if-eqz p3, :cond_1b

    .line 111
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 115
    :cond_1b
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v5

    .line 116
    .local v5, mState:Lcom/sec/android/socialhub/state/tab/TabState;
    invoke-virtual {v5}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 117
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-eqz v0, :cond_2f

    .line 118
    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    sput-object v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mAccountType:Ljava/lang/String;

    .line 120
    :cond_2f
    const/4 v6, 0x3

    if-eq p1, v6, :cond_3d

    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v6, v8, :cond_3d

    .line 122
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v6, v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 125
    :cond_3d
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-virtual {v6, v8}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setEnabledEmptyView(Z)V

    .line 127
    if-eqz p3, :cond_74

    .line 129
    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-nez v6, :cond_5b

    .line 132
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    if-eq v6, v7, :cond_74

    .line 134
    const-string v6, "MessageQueryHandler"

    const-string v7, "onQueryComplete()"

    const-string v8, "Email view mode is standardmode but query reult is Conversation. skipped this query"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 138
    :cond_5b
    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v6, v8, :cond_74

    .line 140
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->MESSAGES_PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-eq v6, v7, :cond_74

    .line 142
    const-string v6, "MessageQueryHandler"

    const-string v7, "onQueryComplete()"

    const-string v8, "Email view mode is conversationmode but query reult is standard. skipped this query"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 148
    :cond_74
    packed-switch p1, :pswitch_data_fc

    .line 193
    .end local p2
    :goto_77
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_80

    .line 195
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_80
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mCursor:Landroid/database/Cursor;

    goto :goto_e

    .line 152
    .restart local p2
    :pswitch_83
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->collapseAllGroup(Landroid/database/Cursor;)V

    .line 153
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v6, p3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 155
    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v6, v8, :cond_ab

    .line 157
    sget-object v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 158
    .local v4, index:I
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v6, v4}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->expandGroup(I)Z

    goto :goto_95

    .line 161
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    :cond_ab
    invoke-virtual {p0, p2, v1}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->checkAdapter(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 164
    sget-object v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 166
    :cond_b6
    iput v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mPrevCursorCnt:I

    goto :goto_77

    .line 170
    :pswitch_b9
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->collapseAllGroup(Landroid/database/Cursor;)V

    .line 171
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v6, p3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 173
    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v6, v8, :cond_e1

    .line 175
    sget-object v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadIndex:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 176
    .restart local v4       #index:I
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    invoke-virtual {v6, v4}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->expandGroup(I)Z

    goto :goto_cb

    .line 179
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    :cond_e1
    invoke-virtual {p0, p2, v1}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->checkAdapter(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 182
    sget-object v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 184
    :cond_ec
    iput v1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mPrevCursorCnt:I

    goto :goto_77

    .line 188
    :pswitch_ef
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    .local v2, groupPosition:I
    iget-object v6, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    invoke-virtual {v6, v2, p3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    goto/16 :goto_77

    .line 148
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_83
        :pswitch_83
        :pswitch_b9
        :pswitch_ef
    .end packed-switch
.end method

.method public setAdapter(Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    .line 86
    return-void
.end method

.method public setListview(Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;)V
    .registers 2
    .parameter "listview"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mListview:Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    .line 90
    return-void
.end method

.method public setMessageListview(Lcom/sec/android/socialhub/messagelist/MessageListView;)V
    .registers 2
    .parameter "listview"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->mMessageListview:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 94
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 72
    if-nez p5, :cond_10

    .line 74
    const-string v0, "MessageQueryHandler"

    const-string v1, "startQuery()"

    const-string v2, "selection is null. maybe session is expired!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/socialhub/messagelist/MessageQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 81
    :goto_f
    return-void

    .line 79
    :cond_10
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
