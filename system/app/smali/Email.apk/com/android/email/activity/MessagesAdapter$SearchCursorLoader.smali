.class Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;
.super Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchCursorLoader"
.end annotation


# instance fields
.field private final mListContext:Lcom/android/email/MessageListContext;

.field private mResultsCount:I

.field private mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V
    .registers 4
    .parameter "context"
    .parameter "listContext"

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V

    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 388
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 389
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    .line 390
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 394
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I

    if-ltz v1, :cond_9

    .line 396
    invoke-super {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 415
    :goto_8
    return-object v1

    .line 399
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v1, :cond_1b

    .line 400
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->getSearchedMailbox()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 406
    :cond_1b
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 408
    .local v0, controller:Lcom/android/email/Controller;
    :try_start_21
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->searchMessages(JLcom/android/emailcommon/service/SearchParams;)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I
    :try_end_31
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_21 .. :try_end_31} :catch_36

    .line 415
    :goto_31
    invoke-super {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_8

    .line 410
    :catch_36
    move-exception v1

    goto :goto_31
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;
    .registers 19
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 422
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter$SearchCursorLoader;->mResultsCount:I

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/emailcommon/provider/Mailbox;ILcom/android/email/activity/MessagesAdapter$1;)V

    return-object v0
.end method
