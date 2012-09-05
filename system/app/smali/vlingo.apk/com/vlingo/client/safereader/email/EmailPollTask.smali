.class Lcom/vlingo/client/safereader/email/EmailPollTask;
.super Lcom/vlingo/client/util/BackgroundTask;
.source "EmailPollTask.java"


# instance fields
.field m_onlyCheckForUnreadEmail:Z

.field m_pollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/safereader/email/EmailPollingEngine;Z)V
    .registers 4
    .parameter "pollingEngine"
    .parameter "onlyCheckForUnreadEmail"

    .prologue
    .line 28
    const-string v0, "EmailPollTask"

    invoke-direct {p0, v0}, Lcom/vlingo/client/util/BackgroundTask;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_pollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    .line 30
    iput-boolean p2, p0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_onlyCheckForUnreadEmail:Z

    .line 31
    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 21

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_pollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v15}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->getEmailAccounts()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 41
    .local v4, emailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 42
    .local v13, numAccounts:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_13
    if-ge v6, v13, :cond_97

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/safereader/email/EmailPollTask;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_97

    .line 44
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/safereader/email/EmailAccount;

    .line 46
    .local v1, account:Lcom/vlingo/client/safereader/email/EmailAccount;
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccount;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_93

    .line 51
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_pollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    iget-object v0, v1, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->getLastCheckTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 56
    .local v8, lastCheckTime:J
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_onlyCheckForUnreadEmail:Z

    move-object/from16 v0, p0

    invoke-virtual {v1, v8, v9, v15, v0}, Lcom/vlingo/client/safereader/email/EmailAccount;->checkForNewEmails(JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;

    move-result-object v5

    .line 58
    .local v5, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    if-eqz v5, :cond_93

    .line 60
    move-wide v10, v8

    .line 61
    .local v10, lastEmailTime:J
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 63
    .local v12, num:I
    if-lez v12, :cond_86

    .line 70
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    const/4 v7, 0x0

    .local v7, j:I
    :goto_4a
    if-ge v7, v12, :cond_86

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/safereader/email/EmailPollTask;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_86

    .line 82
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/safereader/email/Email;

    .line 84
    .local v3, em:Lcom/vlingo/client/safereader/email/Email;
    iget-object v15, v3, Lcom/vlingo/client/safereader/email/Email;->senderAddress:Ljava/lang/String;

    iget-object v0, v3, Lcom/vlingo/client/safereader/email/Email;->from:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/vlingo/client/safereader/email/Email;->body:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/vlingo/client/safereader/email/Email;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-static/range {v15 .. v19}, Lcom/vlingo/client/safereader/MessageContext;->newEmailContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v2

    .line 85
    .local v2, context:Lcom/vlingo/client/safereader/MessageContext;
    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genEmailReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v15

    invoke-static {v15}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v14

    .line 86
    .local v14, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/vlingo/client/safereader/MessageReadbackListener;->processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    .line 88
    iget-wide v15, v3, Lcom/vlingo/client/safereader/email/Email;->date:J

    cmp-long v15, v15, v10

    if-lez v15, :cond_83

    .line 89
    iget-wide v10, v3, Lcom/vlingo/client/safereader/email/Email;->date:J

    .line 81
    :cond_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 100
    .end local v2           #context:Lcom/vlingo/client/safereader/MessageContext;
    .end local v3           #em:Lcom/vlingo/client/safereader/email/Email;
    .end local v7           #j:I
    .end local v14           #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_86
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/safereader/email/EmailPollTask;->m_pollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    iget-object v0, v1, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10, v11}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->setLastCheckTime(Ljava/lang/String;J)V

    .line 42
    .end local v5           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    .end local v8           #lastCheckTime:J
    .end local v10           #lastEmailTime:J
    .end local v12           #num:I
    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    .line 108
    .end local v1           #account:Lcom/vlingo/client/safereader/email/EmailAccount;
    :cond_97
    return-void
.end method
