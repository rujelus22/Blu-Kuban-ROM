.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field protected final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/MessageListContext;)V
    .registers 10
    .parameter "context"
    .parameter "listContext"

    .prologue
    const/4 v4, 0x0

    .line 294
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    .line 298
    iget-wide v0, p2, Lcom/android/email/MessageListContext;->mAccountId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mAccountId:J

    .line 299
    invoke-virtual {p2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    .line 300
    return-void
.end method

.method private loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 12
    .parameter "baseCursor"

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, found:Z
    const/4 v3, 0x0

    .line 313
    .local v3, account:Lcom/android/emailcommon/provider/Account;
    const/4 v4, 0x0

    .line 314
    .local v4, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v5, 0x0

    .line 315
    .local v5, isEasAccount:Z
    const/4 v6, 0x0

    .line 317
    .local v6, isRefreshable:Z
    iget-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1d

    .line 319
    const/4 v2, 0x1

    .line 333
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .local v7, countAccounts:I
    move-object v0, p0

    move-object v1, p1

    .line 334
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 321
    .end local v7           #countAccounts:I
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 322
    if-eqz v4, :cond_e

    .line 323
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_41

    .line 325
    const/4 v2, 0x1

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v5

    .line 327
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v6

    goto :goto_e

    .line 329
    :cond_41
    const/4 v4, 0x0

    goto :goto_e
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 307
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadExtras(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected wrapCursor(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)Landroid/database/Cursor;
    .registers 17
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 347
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/email/activity/MessagesAdapter$1;)V

    return-object v0
.end method
