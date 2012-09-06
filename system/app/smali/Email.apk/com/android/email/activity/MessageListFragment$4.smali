.class Lcom/android/email/activity/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmptyAndLoading(Landroid/database/Cursor;)Z
    .registers 5
    .parameter "cursor"

    .prologue
    .line 1394
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$2700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 9
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 1275
    .local v0, listContext:Lcom/android/email/MessageListContext;
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v2, :cond_2c

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2c

    .line 1276
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onCreateLoader(messages) listContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_2c
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1281
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v1

    .line 1285
    .local v1, searchInfo:Lcom/android/email/MessageListContext;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setListShownNoAnimation(Z)V

    .line 1286
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageListFragment$4$1;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageListFragment$4$1;-><init>(Lcom/android/email/activity/MessageListFragment$4;Lcom/android/email/MessageListContext;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    .end local v1           #searchInfo:Lcom/android/email/MessageListContext;
    :cond_52
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$802(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1303
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;Lcom/android/email/MessageListContext;)Landroid/content/Loader;

    move-result-object v2

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 13
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v9, 0x8

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1308
    sget-boolean v3, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_31

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_31

    .line 1309
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onLoadFinished(messages) mailboxId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object v0, p2

    .line 1312
    check-cast v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;

    .line 1315
    .local v0, cursor:Lcom/android/email/activity/MessagesAdapter$MessagesCursor;
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1317
    iget-boolean v3, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsFound:Z

    if-nez v3, :cond_51

    .line 1318
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailboxNotFound(Z)V

    .line 1386
    .end local p2
    :goto_50
    return-void

    .line 1323
    .restart local p2
    :cond_51
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v4, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1102(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 1324
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v4, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1325
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v4, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsEasAccount:Z

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1302(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1326
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v4, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsRefreshable:Z

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1402(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1327
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget v4, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mCountTotalAccounts:I

    #setter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1502(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1330
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_ac

    .line 1332
    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->moveToFirst()Z

    .line 1333
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->getLong(I)J

    move-result-wide v6

    #calls: Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/email/activity/MessageListFragment;->access$1600(Lcom/android/email/activity/MessageListFragment;JJ)V

    .line 1337
    :cond_ac
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V
    invoke-static {v3, v2}, Lcom/android/email/activity/MessageListFragment;->access$1700(Lcom/android/email/activity/MessageListFragment;Z)V

    .line 1340
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 1341
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    if-eqz v3, :cond_176

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    iget v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v3, v9, :cond_176

    .line 1342
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessagesAdapter;->setQuery(Ljava/lang/String;)V

    .line 1343
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    check-cast p2, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    .end local p2
    invoke-virtual {p2}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1348
    :goto_eb
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateMailboxSpecificActions()V
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;)V

    .line 1351
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListFragment;->isCombinedMailbox()Z

    move-result v4

    if-eqz v4, :cond_186

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)I

    move-result v4

    if-le v4, v1, :cond_186

    :goto_106
    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessagesAdapter;->setShowColorChips(Z)V

    .line 1355
    :cond_109
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$2000(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)V

    .line 1356
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)V

    .line 1357
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateFooterView()V
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)V

    .line 1358
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1362
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v3

    #calls: Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V
    invoke-static {v1, v3}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;Z)V

    .line 1364
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 1365
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1366
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment$4;->isEmptyAndLoading(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_153

    .line 1372
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1380
    :cond_153
    :goto_153
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_16f

    .line 1381
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1382
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v1, v8}, Lcom/android/email/activity/MessageListFragment;->access$2602(Lcom/android/email/activity/MessageListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1385
    :cond_16f
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListFragment;->access$802(Lcom/android/email/activity/MessageListFragment;Z)Z

    goto/16 :goto_50

    .line 1345
    .restart local p2
    :cond_176
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/email/activity/MessagesAdapter;->setQuery(Ljava/lang/String;)V

    .line 1346
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v3, v8}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    goto/16 :goto_eb

    .end local p2
    :cond_186
    move v1, v2

    .line 1351
    goto/16 :goto_106

    .line 1374
    :cond_189
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_153

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment$4;->isEmptyAndLoading(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_153

    .line 1375
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_153
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1271
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    .line 1400
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1401
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onLoaderReset(messages)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1405
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageListFragment;->access$1102(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 1406
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageListFragment;->access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1407
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageListFragment;->access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 1408
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$1502(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1409
    return-void
.end method
