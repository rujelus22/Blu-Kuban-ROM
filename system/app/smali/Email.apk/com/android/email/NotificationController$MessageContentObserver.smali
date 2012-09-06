.class Lcom/android/email/NotificationController$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageContentObserver"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;JJ)V
    .registers 7
    .parameter "handler"
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 631
    iput-object p2, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    .line 632
    iput-wide p3, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    .line 633
    iput-wide p5, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    .line 634
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 27
    .parameter "selfChange"

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v4

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v4}, Lcom/android/email/NotificationController;->access$1000(Lcom/android/email/NotificationController;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1000(Lcom/android/email/NotificationController;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    .line 720
    :cond_1e
    :goto_1e
    return-void

    .line 643
    :cond_1f
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$600(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/ContentObserver;

    .line 644
    .local v19, observer:Landroid/database/ContentObserver;
    if-nez v19, :cond_3f

    .line 647
    const-string v2, "Email"

    const-string v3, "Received notification when observer data was null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 650
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 651
    .local v11, account:Lcom/android/emailcommon/provider/Account;
    if-nez v11, :cond_55

    .line 652
    const-string v2, "Email"

    const-string v3, "Couldn\'t find account for changed message notification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 655
    :cond_55
    iget-wide v0, v11, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    move-wide/from16 v21, v0

    .line 656
    .local v21, oldMessageId:J
    iget v0, v11, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    move/from16 v20, v0

    .line 658
    .local v20, oldMessageCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 659
    .local v23, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lastSeenMessageKey"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v14

    .line 663
    .local v14, lastSeenMessageId:Ljava/lang/Long;
    if-nez v14, :cond_8d

    .line 665
    const-string v2, "Email"

    const-string v3, "Couldn\'t find mailbox for changed message notification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 669
    :cond_8d
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=? AND _id>? AND flagRead=0 AND flagLoaded IN (2,1)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_id DESC"

    move-object/from16 v2, v23

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 674
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_bf

    .line 676
    const-string v2, "Email"

    const-string v3, "#onChange(); NULL response for message id query"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 680
    :cond_bf
    :try_start_bf
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 681
    .local v9, newMessageCount:I
    const-wide/16 v16, 0x0

    .line 682
    .local v16, newMessageId:J
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 683
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 686
    :cond_d0
    if-nez v9, :cond_118

    .line 688
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v2, v3, v4}, Lcom/android/email/NotificationController;->access$700(Lcom/android/email/NotificationController;J)I

    move-result v18

    .line 689
    .local v18, notificationId:I
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 712
    .end local v18           #notificationId:I
    :cond_eb
    :goto_eb
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "notifiedMessageId"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    const-string v2, "notifiedMessageCount"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_bf .. :try_end_113} :catchall_183

    .line 718
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1e

    .line 690
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_118
    move/from16 v0, v20

    if-ne v9, v0, :cond_126

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_eb

    cmp-long v2, v16, v21

    if-eqz v2, :cond_eb

    .line 693
    :cond_126
    :try_start_126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "unreadCount"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v24

    .line 697
    .local v24, unreadCount:Ljava/lang/Integer;
    if-nez v24, :cond_152

    .line 698
    const-string v2, "Email"

    const-string v3, "Couldn\'t find unread count for mailbox"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_126 .. :try_end_14d} :catchall_183

    .line 718
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1e

    .line 702
    :cond_152
    :try_start_152
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/NotificationController;->createNewMessageNotification(JJJII)Landroid/app/Notification;

    move-result-object v15

    .line 705
    .local v15, n:Landroid/app/Notification;
    if-eqz v15, :cond_eb

    .line 707
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v3, v4, v5}, Lcom/android/email/NotificationController;->access$700(Lcom/android/email/NotificationController;J)I

    move-result v3

    invoke-virtual {v2, v3, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_181
    .catchall {:try_start_152 .. :try_end_181} :catchall_183

    goto/16 :goto_eb

    .line 718
    .end local v9           #newMessageCount:I
    .end local v15           #n:Landroid/app/Notification;
    .end local v16           #newMessageId:J
    .end local v24           #unreadCount:Ljava/lang/Integer;
    :catchall_183
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method
