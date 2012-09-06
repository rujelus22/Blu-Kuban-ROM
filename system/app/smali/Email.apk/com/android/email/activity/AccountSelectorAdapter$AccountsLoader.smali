.class Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "AccountSelectorAdapter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsLoader"
.end annotation


# static fields
.field private static final RECENT_MAILBOX_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mFolderProperties:Lcom/android/email/FolderProperties;

.field private final mMailboxId:J

.field private final mUseTwoPane:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 426
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->RECENT_MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JJZ)V
    .registers 14
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "useTwoPane"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 311
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$000()[Ljava/lang/String;

    move-result-object v3

    const-string v6, "isDefault desc, _id"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    .line 314
    iput-wide p2, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    .line 315
    iput-wide p4, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mMailboxId:J

    .line 316
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mFolderProperties:Lcom/android/email/FolderProperties;

    .line 317
    iput-boolean p6, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    .line 318
    return-void
.end method

.method private addAccountsToCursor(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Landroid/database/Cursor;)I
    .registers 25
    .parameter "matrixCursor"
    .parameter "accountCursor"

    .prologue
    .line 335
    const/16 v20, -0x1

    .line 336
    .local v20, accountPosition:I
    const/4 v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 338
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p1

    #setter for: Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I
    invoke-static {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->access$202(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I

    .line 339
    const/16 v16, 0x0

    .line 340
    .local v16, totalUnread:I
    :cond_13
    :goto_13
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 342
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 343
    .local v4, accountId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v5, v2}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I

    move-result v8

    .line 345
    .local v8, unread:I
    invoke-static/range {p2 .. p2}, Lcom/android/email/activity/AccountSelectorAdapter;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, name:Ljava/lang/String;
    #calls: Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/email/activity/AccountSelectorAdapter;->access$300(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, emailAddress:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v9, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v10, v4

    invoke-direct/range {v1 .. v11}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 349
    add-int v16, v16, v8

    .line 350
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_13

    .line 351
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    goto :goto_13

    .line 355
    .end local v4           #accountId:J
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #emailAddress:Ljava/lang/String;
    .end local v8           #unread:I
    :cond_4a
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 356
    .local v21, countAccounts:I
    const/4 v1, 0x1

    move/from16 v0, v21

    if-le v0, v1, :cond_87

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    move/from16 v0, v21

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 359
    .local v15, accountCount:Ljava/lang/String;
    const/4 v11, 0x1

    const-wide/high16 v12, 0x1000

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    #calls: Lcom/android/email/activity/AccountSelectorAdapter;->getCombinedViewDisplayName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/16 v17, -0x1

    const-wide/high16 v18, 0x1000

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v19}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 365
    invoke-static/range {p1 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->access$208(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)I

    .line 367
    .end local v15           #accountCount:Ljava/lang/String;
    :cond_87
    return v20
.end method

.method private addHeaderRow(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .registers 14
    .parameter "cursor"
    .parameter "name"

    .prologue
    .line 451
    const/4 v2, -0x2

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 453
    return-void
.end method

.method private addMailboxRows(Landroid/database/MatrixCursor;ILjava/util/Collection;)V
    .registers 16
    .parameter "matrixCursor"
    .parameter "accountPosition"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, mailboxIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->RECENT_MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id"

    invoke-static {v3, p3}, Lcom/android/emailcommon/utility/Utility;->buildInSelection(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/email/activity/RecentMailboxManager;->RECENT_MAILBOXES_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 438
    .local v11, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_18
    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 439
    :goto_1b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 440
    const/4 v2, 0x0

    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mFolderProperties:Lcom/android/email/FolderProperties;

    invoke-virtual {v0, v11}, Lcom/android/email/FolderProperties;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mFolderProperties:Lcom/android/email/FolderProperties;

    invoke-virtual {v0, v11}, Lcom/android/email/FolderProperties;->getMessageCount(Landroid/database/Cursor;)I

    move-result v7

    iget-wide v9, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_42

    goto :goto_1b

    .line 446
    :catchall_42
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_47
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 448
    return-void
.end method

.method private addMailboxesToCursor(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)V
    .registers 12
    .parameter "matrixCursor"
    .parameter "accountPosition"

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-wide v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 415
    :cond_9
    :goto_9
    return-void

    .line 380
    :cond_a
    iget-wide v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    const-wide/high16 v7, 0x1000

    cmp-long v5, v5, v7

    if-nez v5, :cond_1a

    .line 381
    iget-boolean v4, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    if-nez v4, :cond_9

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addShowAllFoldersRow(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)V

    goto :goto_9

    .line 387
    :cond_1a
    const/4 v0, 0x0

    .line 388
    .local v0, emailAddress:Ljava/lang/String;
    const/4 v5, -0x1

    if-eq p2, v5, :cond_2b

    .line 389
    invoke-virtual {p1, p2}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->moveToPosition(I)Z

    .line 390
    const-string v5, "emailAddress"

    invoke-virtual {p1, v5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_2b
    iget-object v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/activity/RecentMailboxManager;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;

    move-result-object v1

    .line 394
    .local v1, mailboxManager:Lcom/android/email/activity/RecentMailboxManager;
    const/4 v3, 0x0

    .line 395
    .local v3, recentMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-boolean v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    if-nez v5, :cond_3e

    .line 397
    iget-wide v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    iget-boolean v7, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/email/activity/RecentMailboxManager;->getMostRecent(JZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 399
    :cond_3e
    if-nez v3, :cond_66

    move v2, v4

    .line 400
    .local v2, recentCount:I
    :goto_41
    #setter for: Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I
    invoke-static {p1, v2}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->access$502(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I

    .line 402
    iget-boolean v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    if-nez v5, :cond_59

    .line 404
    iget-object v5, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    const v6, 0x7f080055

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addHeaderRow(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 408
    :cond_59
    if-lez v2, :cond_5e

    .line 409
    invoke-direct {p0, p1, p2, v3}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addMailboxRows(Landroid/database/MatrixCursor;ILjava/util/Collection;)V

    .line 412
    :cond_5e
    iget-boolean v4, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mUseTwoPane:Z

    if-nez v4, :cond_9

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addShowAllFoldersRow(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)V

    goto :goto_9

    .line 399
    .end local v2           #recentCount:I
    :cond_66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_41
.end method

.method private addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 13
    .parameter "cursor"
    .parameter "rowType"
    .parameter "id"
    .parameter "name"
    .parameter "emailAddress"
    .parameter "messageCount"
    .parameter "listPosition"
    .parameter "accountId"

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 466
    return-void
.end method

.method private addShowAllFoldersRow(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)V
    .registers 14
    .parameter "matrixCursor"
    .parameter "accountPosition"

    .prologue
    const/4 v2, 0x0

    .line 418
    const/4 v0, 0x1

    #setter for: Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mHasShowAllFolders:Z
    invoke-static {p1, v0}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->access$602(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Z)Z

    .line 419
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, name:Ljava/lang/String;
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    iget-wide v9, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    move-object v0, p0

    move-object v1, p1

    move v7, v2

    move v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;IJLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 423
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 9

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v7

    .line 324
    .local v7, accountsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 326
    .local v0, resultCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
    invoke-direct {p0, v0, v7}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addAccountsToCursor(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Landroid/database/Cursor;)I

    move-result v6

    .line 327
    .local v6, accountPosition:I
    invoke-direct {p0, v0, v6}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addMailboxesToCursor(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)V

    .line 329
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->setAccountMailboxInfo(Landroid/content/Context;JJ)V

    .line 330
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
