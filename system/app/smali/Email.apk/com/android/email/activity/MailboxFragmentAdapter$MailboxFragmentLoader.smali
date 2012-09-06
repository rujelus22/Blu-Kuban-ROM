.class Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxFragmentLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mParentKey:J


# direct methods
.method constructor <init>(Landroid/content/Context;JJ)V
    .registers 13
    .parameter "context"
    .parameter "accountId"
    .parameter "parentKey"

    .prologue
    .line 518
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$100()[Ljava/lang/String;

    move-result-object v3

    :goto_c
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1 AND parentKey=? AND type=1"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v6, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iput-object p1, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    .line 526
    iput-wide p2, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    .line 527
    iput-wide p4, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    .line 528
    return-void

    .line 518
    :cond_2d
    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$200()[Ljava/lang/String;

    move-result-object v3

    goto :goto_c
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 35

    .prologue
    .line 539
    const/16 v26, 0x0

    .line 541
    .local v26, parentRemoved:Z
    invoke-super/range {p0 .. p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v33

    .line 544
    .local v33, userMailboxCursor:Landroid/database/Cursor;
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 546
    .local v19, childCount:I
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5c

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$400()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=? AND _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 552
    .local v25, parentCursor:Landroid/database/Cursor;
    new-instance v29, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v25, v3, v4

    const/4 v4, 0x1

    aput-object v33, v3, v4

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 598
    .end local v25           #parentCursor:Landroid/database/Cursor;
    .local v29, returnCursor:Landroid/database/Cursor;
    :goto_52
    new-instance v3, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;-><init>(Landroid/database/Cursor;I)V

    return-object v3

    .line 555
    .end local v29           #returnCursor:Landroid/database/Cursor;
    :cond_5c
    new-instance v30, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 556
    .local v30, starredCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$200()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=? AND type<64 AND flagVisible=1 AND type!=1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 559
    .local v31, systemMailboxCursor:Landroid/database/Cursor;
    new-instance v27, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 560
    .local v27, recentCursor:Landroid/database/MatrixCursor;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 561
    .local v2, headerCursor:Landroid/database/MatrixCursor;
    if-lez v19, :cond_b8

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, name:Ljava/lang/String;
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v2 .. v12}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    .line 565
    .end local v5           #name:Ljava/lang/String;
    :cond_b8
    const/16 v28, 0x0

    .line 566
    .local v28, recentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v32

    .line 567
    .local v32, useTwoPane:Z
    if-eqz v32, :cond_d5

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/activity/RecentMailboxManager;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/email/activity/RecentMailboxManager;->getMostRecent(JZ)Ljava/util/ArrayList;

    move-result-object v28

    .line 571
    :cond_d5
    if-eqz v28, :cond_172

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_172

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f080057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 573
    .restart local v5       #name:Ljava/lang/String;
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v6, v27

    move-object v9, v5

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v6 .. v16}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    .line 574
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_fb
    :goto_fb
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 575
    .local v22, mailboxId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v21

    .line 576
    .local v21, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v21, :cond_fb

    .line 577
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messageCount"

    aput-object v4, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 580
    .local v24, messageCount:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "unreadCount"

    aput-object v4, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 583
    .local v11, unreadCount:I
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v13, 0x0

    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    move-object/from16 v0, v21

    iget-wide v15, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v6, v27

    move-wide/from16 v7, v22

    move/from16 v12, v24

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v6 .. v16}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    goto :goto_fb

    .line 588
    .end local v5           #name:Ljava/lang/String;
    .end local v11           #unreadCount:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v22           #mailboxId:J
    .end local v24           #messageCount:I
    :cond_172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;J)I

    move-result v18

    .line 589
    .local v18, accountStarredCount:I
    if-lez v18, :cond_18f

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    const-wide/16 v14, -0x4

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v13, v30

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    invoke-static/range {v12 .. v17}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$700(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    .line 594
    :cond_18f
    new-instance v29, Landroid/database/MergeCursor;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v30, v3, v4

    const/4 v4, 0x1

    aput-object v31, v3, v4

    const/4 v4, 0x2

    aput-object v27, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v4, 0x4

    aput-object v33, v3, v4

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v29       #returnCursor:Landroid/database/Cursor;
    goto/16 :goto_52
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 532
    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 533
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    .line 535
    :cond_9
    return-void
.end method
