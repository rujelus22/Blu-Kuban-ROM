.class Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .registers 4
    .parameter "statusCode"

    .prologue
    .line 1687
    sparse-switch p1, :sswitch_data_3e

    .line 1719
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_c
    return-object v0

    .line 1692
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 1695
    :sswitch_f
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 1698
    :sswitch_17
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_c

    .line 1701
    :sswitch_1e
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_c

    .line 1704
    :sswitch_25
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_c

    .line 1707
    :sswitch_2d
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_c

    .line 1710
    :sswitch_35
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_c

    .line 1687
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_d
        0x11 -> :sswitch_2d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_1e
        0x18 -> :sswitch_d
        0x19 -> :sswitch_25
        0x20 -> :sswitch_17
        0x21 -> :sswitch_35
    .end sparse-switch
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .registers 19
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1588
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1589
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p5, :pswitch_data_4a

    .line 1604
    :cond_9
    :goto_9
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v3

    .line 1605
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    .line 1606
    :try_start_1a
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .local v1, listener:Lcom/android/email/Controller$Result;
    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p6

    .line 1607
    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_24

    .line 1610
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_38
    move-exception v5

    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v5

    .line 1591
    .end local v3           #accountId:J
    :pswitch_3b
    const/16 p6, 0x64

    .line 1592
    goto :goto_9

    .line 1599
    :pswitch_3e
    if-ltz p6, :cond_46

    const/16 v5, 0x64

    move/from16 v0, p6

    if-lt v0, v5, :cond_9

    .line 1611
    :cond_46
    :goto_46
    return-void

    .line 1610
    .restart local v3       #accountId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_47
    :try_start_47
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_38

    goto :goto_46

    .line 1589
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .registers 15
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1621
    const-wide/16 v2, -0x1

    .line 1622
    .local v2, accountId:J
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 1623
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p4, :pswitch_data_3c

    .line 1634
    :cond_9
    :goto_9
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1635
    :try_start_10
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v4, p1

    move v6, p5

    .line 1636
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1a

    .line 1638
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_2c
    move-exception v4

    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v4

    .line 1625
    :pswitch_2f
    const/16 p5, 0x64

    .line 1626
    goto :goto_9

    .line 1629
    :pswitch_32
    if-ltz p5, :cond_38

    const/16 v4, 0x64

    if-lt p5, v4, :cond_9

    .line 1639
    :cond_38
    :goto_38
    return-void

    .line 1638
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_39
    :try_start_39
    monitor-exit v8
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2c

    goto :goto_38

    .line 1623
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public syncMailboxListStatus(JII)V
    .registers 10
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1642
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1643
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_38

    .line 1654
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 1655
    :try_start_e
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1656
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_18

    .line 1658
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v3

    .line 1645
    :pswitch_2b
    const/16 p4, 0x64

    .line 1646
    goto :goto_7

    .line 1649
    :pswitch_2e
    if-ltz p4, :cond_34

    const/16 v3, 0x64

    if-lt p4, v3, :cond_7

    .line 1659
    :cond_34
    :goto_34
    return-void

    .line 1658
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_28

    goto :goto_34

    .line 1643
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .registers 18
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1662
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1663
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_50

    .line 1675
    :cond_9
    :goto_9
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 1677
    .local v11, mbx:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_22

    .line 1684
    .end local v11           #mbx:Lcom/android/emailcommon/provider/Mailbox;
    :cond_15
    :goto_15
    return-void

    .line 1665
    :pswitch_16
    const/16 p4, 0x64

    .line 1666
    goto :goto_9

    .line 1669
    :pswitch_19
    if-ltz p4, :cond_15

    const/16 v5, 0x64

    move/from16 v0, p4

    if-lt v0, v5, :cond_9

    goto :goto_15

    .line 1678
    .restart local v11       #mbx:Lcom/android/emailcommon/provider/Mailbox;
    :cond_22
    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 1679
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 1680
    :try_start_2b
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1681
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    goto :goto_35

    .line 1683
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_4a
    move-exception v5

    monitor-exit v12
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_4a

    throw v5

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_4d
    :try_start_4d
    monitor-exit v12
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    goto :goto_15

    .line 1663
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method
