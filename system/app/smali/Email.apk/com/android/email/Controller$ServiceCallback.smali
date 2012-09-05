.class public Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 5182
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .registers 7
    .parameter "statusCode"

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x3c

    const/16 v3, 0x19

    const/16 v2, 0xa

    .line 5601
    sparse-switch p1, :sswitch_data_ce

    .line 5691
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_13
    return-object v0

    .line 5606
    :sswitch_14
    const/4 v0, 0x0

    goto :goto_13

    .line 5609
    :sswitch_16
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    .line 5612
    :sswitch_1e
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_13

    .line 5615
    :sswitch_24
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_13

    .line 5619
    :sswitch_2b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x10

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5625
    :sswitch_33
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_13

    .line 5632
    :sswitch_3b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x4

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5635
    :sswitch_43
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/high16 v1, 0x3

    invoke-direct {v0, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5640
    :sswitch_4b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x29

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5643
    :sswitch_53
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5646
    :sswitch_5b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x2b

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5650
    :sswitch_63
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x35

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5653
    :sswitch_6b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x36

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5656
    :sswitch_73
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x3a

    invoke-direct {v0, v4, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(II)V

    goto :goto_13

    .line 5661
    :sswitch_7b
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50001

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_13

    .line 5663
    :sswitch_84
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50002

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_13

    .line 5665
    :sswitch_8d
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50003

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5667
    :sswitch_97
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50004

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5670
    :sswitch_a1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50005

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5673
    :sswitch_ab
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5675
    :sswitch_b2
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const v1, 0x50006

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5678
    :sswitch_bc
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5681
    :sswitch_c5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x71

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_13

    .line 5601
    :sswitch_data_ce
    .sparse-switch
        -0x6 -> :sswitch_5b
        -0x5 -> :sswitch_53
        -0x4 -> :sswitch_4b
        -0x3 -> :sswitch_ab
        0x0 -> :sswitch_14
        0x1 -> :sswitch_14
        0x16 -> :sswitch_16
        0x17 -> :sswitch_24
        0x18 -> :sswitch_14
        0x20 -> :sswitch_1e
        0x27 -> :sswitch_b2
        0x42 -> :sswitch_c5
        0xa8 -> :sswitch_7b
        0xa9 -> :sswitch_84
        0xaa -> :sswitch_8d
        0xab -> :sswitch_97
        0xac -> :sswitch_a1
        0xad -> :sswitch_bc
        0x10000 -> :sswitch_63
        0x20000 -> :sswitch_6b
        0x30000 -> :sswitch_43
        0x40000 -> :sswitch_3b
        0x60000 -> :sswitch_73
        0x100000 -> :sswitch_2b
        0x120000 -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method public addUserAccountStatus(Landroid/os/Bundle;J)V
    .registers 9
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 5763
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accountId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5765
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5766
    :try_start_2f
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5767
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->addUserAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_39

    .line 5769
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 5770
    return-void
.end method

.method public checkMailStatus(JJIIJ)V
    .registers 24
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 5783
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5784
    .local v12, result:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v13, 0x0

    .line 5785
    .local v13, resultType:I
    if-eqz v12, :cond_e

    .line 5786
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v13

    .line 5788
    :cond_e
    const-string v3, "EVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkMailStatus] [accId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [mbId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [exceptionType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [tag - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5792
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v14

    monitor-enter v14

    .line 5793
    :try_start_63
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 5794
    .local v2, l:Lcom/android/email/Controller$Result;
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_6d

    .line 5797
    .end local v2           #l:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_8b
    move-exception v3

    monitor-exit v14
    :try_end_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_8b

    throw v3

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_8e
    :try_start_8e
    monitor-exit v14
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8b

    .line 5798
    return-void
.end method

.method public deactivateSnc()V
    .registers 5

    .prologue
    .line 5835
    const-string v2, "EVENT@CONTR"

    const-string v3, "[deactivateSnc]"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5836
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5837
    :try_start_e
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5838
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1}, Lcom/android/email/Controller$Result;->deactivateSncCallback()V

    goto :goto_18

    .line 5840
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 5841
    return-void
.end method

.method public deleteAccountFromWebPortal(JLjava/lang/String;)V
    .registers 9
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 5825
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteAccountFromWebPortal] [accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " emailId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5828
    :try_start_2f
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5829
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountFromWebCallback(JLjava/lang/String;)V

    goto :goto_39

    .line 5831
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 5832
    return-void
.end method

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .registers 9
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 5480
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteUserAccountStatus] [bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[accountId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5483
    :try_start_29
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5484
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_33

    .line 5486
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_46
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_43

    .line 5487
    return-void
.end method

.method public deviceInfoStatus(I)V
    .registers 6
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5470
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5471
    :try_start_7
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5472
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->deviceInfoCallback(I)V

    goto :goto_11

    .line 5474
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 5475
    return-void
.end method

.method public emptyTrashStatus(JII)V
    .registers 10
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5386
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5387
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_38

    .line 5399
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5400
    :try_start_e
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

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

    .line 5401
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_18

    .line 5403
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v3

    .line 5389
    :pswitch_2b
    const/16 p4, 0x64

    .line 5390
    goto :goto_7

    .line 5393
    :pswitch_2e
    if-ltz p4, :cond_34

    const/16 v3, 0x64

    if-lt p4, v3, :cond_7

    .line 5404
    :cond_34
    :goto_34
    return-void

    .line 5403
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_28

    goto :goto_34

    .line 5387
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public folderCommandStatus(IJI)V
    .registers 10
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5371
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5373
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5374
    :try_start_b
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5375
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_15

    .line 5380
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_25
    move-exception v3

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 5382
    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;II)V
    .registers 12
    .parameter "mailbox"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5808
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5809
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v3, 0x0

    .line 5810
    .local v3, resultType:I
    if-eqz v2, :cond_c

    .line 5811
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    .line 5813
    :cond_c
    const-string v4, "EVENT@CONTR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[folderPushStatus] [mailboxId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] [exceptionType - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [progress - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5

    .line 5817
    :try_start_41
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5818
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-direct {p0, p2}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v4

    invoke-virtual {v1, v4, p1, p3}, Lcom/android/email/Controller$Result;->folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_4b

    .line 5820
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_5f
    move-exception v4

    monitor-exit v5
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_5f

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_62
    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5f

    .line 5821
    return-void
.end method

.method public getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 8
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5724
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAvailableAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5726
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5727
    :try_start_2f
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5728
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_39

    .line 5730
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 5731
    return-void
.end method

.method public getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 8
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5734
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserConfiguredAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncUserEndpointList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5736
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5737
    :try_start_2f
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5738
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_39

    .line 5740
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 5741
    return-void
.end method

.method public getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 8
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 5744
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SncProfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5746
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5747
    :try_start_2f
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5748
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/Controller$Result;->getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_39

    .line 5750
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 5751
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .registers 19
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5192
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5194
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p5, :pswitch_data_4a

    .line 5224
    :cond_9
    :goto_9
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v3

    .line 5225
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    .line 5226
    :try_start_1a
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

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

    .line 5227
    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_24

    .line 5230
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_38
    move-exception v5

    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v5

    .line 5196
    .end local v3           #accountId:J
    :pswitch_3b
    const/16 p6, 0x64

    .line 5197
    goto :goto_9

    .line 5204
    :pswitch_3e
    if-ltz p6, :cond_46

    const/16 v5, 0x64

    move/from16 v0, p6

    if-lt v0, v5, :cond_9

    .line 5231
    :cond_46
    :goto_46
    return-void

    .line 5230
    .restart local v3       #accountId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_47
    :try_start_47
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_38

    goto :goto_46

    .line 5194
    nop

    :pswitch_data_4a
    .packed-switch 0x1a
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public loadMessageForViewStatus(JII)V
    .registers 18
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5492
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5493
    .local v10, result:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v11, 0x0

    .line 5494
    .local v11, resultType:I
    if-eqz v10, :cond_e

    .line 5495
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v11

    .line 5497
    :cond_e
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadMessageForViewStatus] [msgId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [exceptionType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [progress - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5500
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    .line 5503
    .local v9, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 5504
    :try_start_53
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5507
    .local v1, listener:Lcom/android/email/Controller$Result;
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_5d

    .line 5510
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_78
    move-exception v2

    monitor-exit v12
    :try_end_7a
    .catchall {:try_start_53 .. :try_end_7a} :catchall_78

    throw v2

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_7b
    :try_start_7b
    monitor-exit v12
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_78

    .line 5511
    return-void
.end method

.method public loadMoreStatus(JII)V
    .registers 10
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5409
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5410
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_38

    .line 5421
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5422
    :try_start_e
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

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

    .line 5423
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_18

    .line 5425
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v3

    .line 5412
    :pswitch_2b
    const/16 p4, 0x64

    .line 5413
    goto :goto_7

    .line 5416
    :pswitch_2e
    if-ltz p4, :cond_34

    const/16 v3, 0x64

    if-lt p4, v3, :cond_7

    .line 5426
    :cond_34
    :goto_34
    return-void

    .line 5425
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_28

    goto :goto_34

    .line 5410
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public modifyUserAccountStatus(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    .line 5773
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[modifyUserAccountStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5774
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5775
    :try_start_25
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5776
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->modifyUserAccountCallback(Landroid/os/Bundle;)V

    goto :goto_2f

    .line 5778
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 5779
    return-void
.end method

.method public moveConvAlwaysStatus([BIII)V
    .registers 5
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5460
    return-void
.end method

.method public moveItemStatus(JI)V
    .registers 9
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5332
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5334
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5335
    :try_start_b
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5336
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_15

    .line 5338
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_25
    move-exception v3

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 5340
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .registers 14
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5345
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 5346
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_3a

    .line 5358
    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 5359
    :try_start_e
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v2, p1

    move v4, p4

    move-object v5, p5

    .line 5360
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_18

    .line 5362
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v2

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v2

    .line 5348
    :pswitch_2e
    const/16 p4, 0x64

    .line 5349
    goto :goto_7

    .line 5352
    :pswitch_31
    if-ltz p4, :cond_37

    const/16 v2, 0x64

    if-lt p4, v2, :cond_7

    .line 5363
    :cond_37
    :goto_37
    return-void

    .line 5362
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_38
    :try_start_38
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_2b

    goto :goto_37

    .line 5346
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public refreshIRMTemplatesStatus(JII)V
    .registers 12
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5431
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5432
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_54

    .line 5442
    move p4, p3

    .line 5445
    :cond_8
    :goto_8
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5446
    :try_start_f
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5447
    .local v1, listener:Lcom/android/email/Controller$Result;
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_41

    .line 5448
    const-string v3, "IRM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller:refreshIRMTemplatesStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5450
    :cond_41
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_19

    .line 5452
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_45

    throw v3

    .line 5434
    :pswitch_48
    const/16 p4, 0x64

    .line 5435
    goto :goto_8

    .line 5437
    :pswitch_4b
    if-ltz p4, :cond_51

    const/16 v3, 0x64

    if-lt p4, v3, :cond_8

    .line 5453
    :cond_51
    :goto_51
    return-void

    .line 5452
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_52
    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_45

    goto :goto_51

    .line 5432
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method public searchMailboxStatus(JII)V
    .registers 20
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5533
    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    .line 5534
    .local v11, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v6, "EVENT@CONTR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[searchMailboxStatus] [mbId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [exceptionType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] [progress - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[statuscode - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5537
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;

    move-result-object v10

    .line 5539
    .local v10, statusString:Ljava/lang/String;
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    .line 5540
    .local v3, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_e0

    .line 5558
    :cond_60
    :goto_60
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_9c

    .line 5559
    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid MailboxId - mailboxId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    :cond_80
    :goto_80
    return-void

    .line 5542
    :pswitch_81
    const/16 p4, 0x64

    .line 5543
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_60

    .line 5547
    :pswitch_8d
    if-ltz p4, :cond_80

    const/16 v6, 0x64

    move/from16 v0, p4

    if-lt v0, v6, :cond_60

    goto :goto_80

    .line 5552
    :pswitch_96
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    goto :goto_80

    .line 5562
    :cond_9c
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 5564
    .local v13, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v13, :cond_80

    .line 5566
    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 5567
    .local v4, accountId:J
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v14

    monitor-enter v14

    .line 5568
    :try_start_b3
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 5569
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_bd

    .line 5572
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_d2
    move-exception v6

    monitor-exit v14
    :try_end_d4
    .catchall {:try_start_b3 .. :try_end_d4} :catchall_d2

    throw v6

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_d5
    :try_start_d5
    monitor-exit v14
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d2

    .line 5574
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_80

    .line 5540
    :pswitch_data_e0
    .packed-switch 0x1a
        :pswitch_81
        :pswitch_8d
        :pswitch_96
    .end packed-switch
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .registers 14
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5850
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 5851
    :try_start_7
    iget-object v1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 5852
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_11

    .line 5854
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_24
    move-exception v1

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 5855
    return-void
.end method

.method public sendMessageStatus(JJLjava/lang/String;II)V
    .registers 18
    .parameter "accountId"
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5240
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5241
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p6, :pswitch_data_6e

    .line 5254
    :cond_9
    :goto_9
    const-string v3, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMAIL_PERFORMANCE s sendMessageStatus() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 5258
    :try_start_3e
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .local v1, listener:Lcom/android/email/Controller$Result;
    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p7

    .line 5259
    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_48

    .line 5261
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_5c
    move-exception v3

    monitor-exit v9
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_5c

    throw v3

    .line 5243
    :pswitch_5f
    const/16 p7, 0x64

    .line 5244
    goto :goto_9

    .line 5247
    :pswitch_62
    if-ltz p7, :cond_6a

    const/16 v3, 0x64

    move/from16 v0, p7

    if-lt v0, v3, :cond_9

    .line 5262
    :cond_6a
    :goto_6a
    return-void

    .line 5261
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6b
    :try_start_6b
    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_5c

    goto :goto_6a

    .line 5241
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_62
    .end packed-switch
.end method

.method public setDeviceInfoStatus(JII)V
    .registers 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5466
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .registers 10
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5265
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 5266
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_38

    .line 5277
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 5278
    :try_start_e
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

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

    .line 5279
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_18

    .line 5281
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v3

    .line 5268
    :pswitch_2b
    const/16 p4, 0x64

    .line 5269
    goto :goto_7

    .line 5272
    :pswitch_2e
    if-ltz p4, :cond_34

    const/16 v3, 0x64

    if-lt p4, v3, :cond_7

    .line 5282
    :cond_34
    :goto_34
    return-void

    .line 5281
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_28

    goto :goto_34

    .line 5266
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .registers 22
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 5285
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    .line 5286
    .local v3, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_92

    .line 5299
    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 5301
    .local v16, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v16, :cond_33

    .line 5329
    .end local v16           #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1b
    :goto_1b
    return-void

    .line 5288
    :pswitch_1c
    const/16 p4, 0x64

    .line 5289
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    goto :goto_b

    .line 5293
    :pswitch_2a
    if-ltz p4, :cond_1b

    const/16 v6, 0x64

    move/from16 v0, p4

    if-lt v0, v6, :cond_b

    goto :goto_1b

    .line 5303
    .restart local v16       #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_33
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 5316
    .local v4, accountId:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 5317
    :try_start_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 5318
    .local v2, listener:Lcom/android/email/Controller$Result;
    const/4 v9, -0x1

    move-wide/from16 v6, p1

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_4c

    .line 5320
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v15           #i$:Ljava/util/Iterator;
    :catchall_61
    move-exception v6

    monitor-exit v10
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_61

    throw v6

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_64
    :try_start_64
    monitor-exit v10
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    .line 5322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mExternalFreshRequest:Z
    invoke-static {v6}, Lcom/android/email/Controller;->access$1100(Lcom/android/email/Controller;)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz p3, :cond_73

    if-eqz v3, :cond_1b

    .line 5324
    :cond_73
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v7, 0x0

    #setter for: Lcom/android/email/Controller;->mExternalFreshRequest:Z
    invoke-static {v6, v7}, Lcom/android/email/Controller;->access$1102(Lcom/android/email/Controller;Z)Z

    .line 5325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    iget-object v6, v6, Lcom/android/email/Controller;->mCallbackWrapper:Lcom/android/email/ControllerUtility$CallbackWrapper;

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v12, 0x64

    const-wide/16 v13, -0x1

    move-wide v8, v4

    move-wide/from16 v10, p1

    invoke-virtual/range {v6 .. v14}, Lcom/android/email/ControllerUtility$CallbackWrapper;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_1b

    .line 5286
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
    .end packed-switch
.end method

.method public updateUserProfileStatus(Landroid/os/Bundle;)V
    .registers 7
    .parameter "status"

    .prologue
    .line 5754
    const-string v2, "EVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateUserProfileStatus] [Bundle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5755
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 5756
    :try_start_25
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 5757
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->updateUserProfileCallback(Landroid/os/Bundle;)V

    goto :goto_2f

    .line 5759
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 5760
    return-void
.end method
