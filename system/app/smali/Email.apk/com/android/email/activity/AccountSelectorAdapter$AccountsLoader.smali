.class Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsLoader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 419
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$000()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "displayName is not \'##snc##\'"

    const/4 v5, 0x0

    const-string v6, "isDefault desc, _id"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    .line 423
    return-void
.end method

.method private addRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "resultCursor"
    .parameter "accountId"
    .parameter "name"
    .parameter "Email"
    .parameter "unread"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 552
    .local v0, rb:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 553
    invoke-virtual {v0, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 554
    invoke-virtual {v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 555
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 556
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 24

    .prologue
    .line 428
    invoke-super/range {p0 .. p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v12

    .line 433
    .local v12, accountsCursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/email/data/ClosingMatrixCursor;

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v12}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 435
    .local v2, resultCursor:Landroid/database/MatrixCursor;
    const/4 v1, -0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 438
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v13

    .line 439
    .local v13, countAccounts:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getAllUnreadCountbyInBox(Landroid/content/Context;)I

    move-result v20

    .line 440
    .local v20, totalUnread:I
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v19

    .line 442
    .local v19, rb1:Landroid/database/MatrixCursor$RowBuilder;
    const-wide/high16 v3, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08009b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0005

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v13, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 447
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 449
    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 451
    .local v8, Position:I
    :cond_6b
    :goto_6b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 453
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, email:Ljava/lang/String;
    const/4 v14, 0x0

    .line 456
    .local v14, domain:Ljava/lang/String;
    const/16 v17, 0x0

    .line 457
    .local v17, emailParts:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 458
    .local v22, withOutDotDomain:Ljava/lang/String;
    if-eqz v16, :cond_ae

    const-string v1, "@"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 460
    const-string v1, "@"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 462
    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_ae

    const/4 v1, 0x1

    aget-object v1, v17, v1

    if-eqz v1, :cond_ae

    .line 464
    const/4 v1, 0x1

    aget-object v1, v17, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 465
    const-string v1, "[.]"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 466
    .local v15, domainWithoutDot:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 471
    .end local v15           #domainWithoutDot:[Ljava/lang/String;
    :cond_ae
    const/4 v1, 0x0

    aget-object v1, v17, v1

    const-string v3, "snc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v1, "snc.snc"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 475
    :cond_c1
    const-string v1, "hotmail"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    const-string v1, "msn"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    const-string v1, "live"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 478
    :cond_df
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 479
    .local v10, accountId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v10, v11, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I

    move-result v21

    .line 482
    .local v21, unread:I
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v18

    .line 483
    .local v18, rb:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 484
    invoke-static {v12}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 485
    invoke-static {v12}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 486
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 487
    const-string v1, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountsLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 493
    .end local v10           #accountId:J
    .end local v14           #domain:Ljava/lang/String;
    .end local v16           #email:Ljava/lang/String;
    .end local v17           #emailParts:[Ljava/lang/String;
    .end local v18           #rb:Landroid/database/MatrixCursor$RowBuilder;
    .end local v21           #unread:I
    .end local v22           #withOutDotDomain:Ljava/lang/String;
    :cond_12f
    invoke-interface {v12, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 494
    :cond_132
    :goto_132
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 495
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 497
    .restart local v16       #email:Ljava/lang/String;
    const/4 v14, 0x0

    .line 498
    .restart local v14       #domain:Ljava/lang/String;
    const/16 v17, 0x0

    .line 499
    .restart local v17       #emailParts:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 500
    .restart local v22       #withOutDotDomain:Ljava/lang/String;
    if-eqz v16, :cond_175

    const-string v1, "@"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 502
    const-string v1, "@"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 504
    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_175

    const/4 v1, 0x1

    aget-object v1, v17, v1

    if-eqz v1, :cond_175

    .line 506
    const/4 v1, 0x1

    aget-object v1, v17, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 507
    const-string v1, "[.]"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 508
    .restart local v15       #domainWithoutDot:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 513
    .end local v15           #domainWithoutDot:[Ljava/lang/String;
    :cond_175
    const-string v1, "snc"

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    const-string v1, "snc.snc"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 517
    :cond_188
    const-string v1, "hotmail"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    const-string v1, "msn"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    const-string v1, "live"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 520
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 521
    .restart local v10       #accountId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v10, v11, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I

    move-result v21

    .line 524
    .restart local v21       #unread:I
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v18

    .line 525
    .restart local v18       #rb:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 526
    invoke-static {v12}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 527
    invoke-static {v12}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 528
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 529
    const-string v1, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountsLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132

    .line 534
    .end local v10           #accountId:J
    .end local v14           #domain:Ljava/lang/String;
    .end local v16           #email:Ljava/lang/String;
    .end local v17           #emailParts:[Ljava/lang/String;
    .end local v18           #rb:Landroid/database/MatrixCursor$RowBuilder;
    .end local v21           #unread:I
    .end local v22           #withOutDotDomain:Ljava/lang/String;
    :cond_1f6
    if-eqz v2, :cond_207

    .line 536
    const-wide v3, 0x100000000000002L

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->addRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;I)V

    .line 538
    :cond_207
    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    .line 540
    .local v9, accountCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$200()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_226

    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$200()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_226

    .line 541
    invoke-static {}, Lcom/android/email/activity/AccountSelectorAdapter;->access$200()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 542
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/AccountSelectorAdapter;->access$202(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 545
    :cond_226
    invoke-static {v9}, Lcom/android/email/activity/AccountSelectorAdapter;->access$202(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 547
    return-object v9
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
