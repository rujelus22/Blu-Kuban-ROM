.class public Lcom/android/exchange/adapter/Search;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Search$1;,
        Lcom/android/exchange/adapter/Search$SearchParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 29
    .parameter "context"
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 58
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 59
    .local v12, offset:I
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 60
    .local v11, limit:I
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 61
    .local v8, filter:Ljava/lang/String;
    if-ltz v11, :cond_16

    const/16 v19, 0x64

    move/from16 v0, v19

    if-gt v11, v0, :cond_16

    if-gez v12, :cond_18

    :cond_16
    const/4 v13, 0x0

    .line 133
    :cond_17
    :goto_17
    return v13

    .line 63
    :cond_18
    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_28

    :cond_26
    const/4 v13, 0x0

    goto :goto_17

    .line 65
    :cond_28
    const/4 v13, 0x0

    .line 66
    .local v13, res:I
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    .line 67
    .local v5, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v5, :cond_17

    .line 68
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v18

    .line 69
    .local v18, svc:Lcom/android/exchange/EasSyncService;
    if-eqz v18, :cond_17

    .line 71
    :try_start_37
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_207
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_1a8

    move-result-object v16

    .line 73
    .local v16, searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v16, :cond_57

    .line 127
    :try_start_41
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_54} :catch_55

    goto :goto_17

    .line 129
    .end local v13           #res:I
    .end local v16           #searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :catch_55
    move-exception v19

    goto :goto_17

    .line 74
    .restart local v13       #res:I
    .restart local v16       #searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_57
    :try_start_57
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 75
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 76
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 77
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v19, 0x3c5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x3c7

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 78
    const/16 v19, 0x3c8

    const-string v20, "Mailbox"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 79
    const/16 v19, 0x3c9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x3d3

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 80
    const/16 v19, 0x10

    const-string v20, "Email"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 83
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_a1
    .catchall {:try_start_57 .. :try_end_a1} :catchall_207
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_a1} :catch_1a8

    move-result-object v9

    .line 84
    .local v9, inbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v9, :cond_ba

    const/4 v13, 0x0

    .line 127
    .end local v13           #res:I
    :try_start_a5
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_b8} :catch_55

    goto/16 :goto_17

    .line 85
    .restart local v13       #res:I
    :cond_ba
    :try_start_ba
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    move-wide/from16 v19, v0

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_d5

    .line 86
    const/16 v19, 0x12

    iget-object v0, v9, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 89
    :cond_d5
    const/16 v19, 0x3d5

    move/from16 v0, v19

    invoke-virtual {v15, v0, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 90
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 91
    const/16 v19, 0x3ca

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 92
    if-nez v12, :cond_f3

    .line 93
    const/16 v19, 0x3d9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 95
    :cond_f3
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    move/from16 v19, v0

    if-eqz v19, :cond_102

    .line 96
    const/16 v19, 0x3d7

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 99
    :cond_102
    const/16 v19, 0x3cb

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int v21, v12, v11

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 100
    const/16 v19, 0x445

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 101
    const/16 v19, 0x446

    const-string v20, "2"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 102
    const/16 v19, 0x447

    const-string v20, "20000"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 103
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 104
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 105
    const-string v19, "Search"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_160
    .catchall {:try_start_ba .. :try_end_160} :catchall_207
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_160} :catch_1a8

    move-result-object v14

    .line 107
    .local v14, resp:Lcom/android/exchange/EasResponse;
    :try_start_161
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v6

    .line 108
    .local v6, code:I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v6, v0, :cond_1e2

    .line 109
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_16e
    .catchall {:try_start_161 .. :try_end_16e} :catchall_1a3

    move-result-object v10

    .line 111
    .local v10, is:Ljava/io/InputStream;
    :try_start_16f
    new-instance v17, Lcom/android/exchange/adapter/Search$SearchParser;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v8, v2}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V

    .line 112
    .local v17, sp:Lcom/android/exchange/adapter/Search$SearchParser;
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Search$SearchParser;->parse()Z

    .line 113
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Search$SearchParser;->getTotalResults()I
    :try_end_182
    .catchall {:try_start_16f .. :try_end_182} :catchall_19e

    move-result v13

    .line 115
    :try_start_183
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_1a3

    .line 121
    .end local v10           #is:Ljava/io/InputStream;
    .end local v17           #sp:Lcom/android/exchange/adapter/Search$SearchParser;
    :goto_186
    :try_start_186
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_207
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_1a8

    .line 127
    :try_start_189
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_189 .. :try_end_19c} :catch_55

    goto/16 :goto_17

    .line 115
    .restart local v10       #is:Ljava/io/InputStream;
    :catchall_19e
    move-exception v19

    :try_start_19f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    throw v19
    :try_end_1a3
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_1a3

    .line 121
    .end local v6           #code:I
    .end local v10           #is:Ljava/io/InputStream;
    :catchall_1a3
    move-exception v19

    :try_start_1a4
    invoke-virtual {v14}, Lcom/android/exchange/EasResponse;->close()V

    throw v19
    :try_end_1a8
    .catchall {:try_start_1a4 .. :try_end_1a8} :catchall_207
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a8} :catch_1a8

    .line 123
    .end local v9           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v16           #searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :catch_1a8
    move-exception v7

    .line 124
    .local v7, e:Ljava/io/IOException;
    const/16 v19, 0x1

    :try_start_1ab
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Search exception "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1ab .. :try_end_1cd} :catchall_207

    .line 127
    :try_start_1cd
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1e0
    .catch Landroid/os/RemoteException; {:try_start_1cd .. :try_end_1e0} :catch_55

    goto/16 :goto_17

    .line 118
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #code:I
    .restart local v9       #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v16       #searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1e2
    const/16 v19, 0x1

    :try_start_1e4
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Search returned "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_206
    .catchall {:try_start_1e4 .. :try_end_206} :catchall_1a3

    goto :goto_186

    .line 126
    .end local v6           #code:I
    .end local v9           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #resp:Lcom/android/exchange/EasResponse;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v16           #searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :catchall_207
    move-exception v19

    .line 127
    :try_start_208
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_21b
    .catch Landroid/os/RemoteException; {:try_start_208 .. :try_end_21b} :catch_21c

    .line 126
    :goto_21b
    throw v19

    .line 129
    :catch_21c
    move-exception v20

    goto :goto_21b
.end method
