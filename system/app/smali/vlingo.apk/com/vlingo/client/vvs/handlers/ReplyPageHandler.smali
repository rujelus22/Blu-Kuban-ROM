.class public Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;
.super Ljava/lang/Object;
.source "ReplyPageHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# instance fields
.field private volatile messageContext:Lcom/vlingo/client/safereader/MessageContext;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/safereader/MessageContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    return-object p1
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 23
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 34
    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v16

    const-class v17, Lcom/vlingo/client/contacts/ContactSelectActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v6, intent:Landroid/content/Intent;
    const-string v16, "To"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, address:Ljava/lang/String;
    const-string v16, "Message"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 38
    .local v12, smsText:Ljava/lang/String;
    const-string v16, "Confidence"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, confString:Ljava/lang/String;
    const-string v16, "PhoneType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, phoneTypeString:Ljava/lang/String;
    const/high16 v4, 0x42c8

    .line 41
    .local v4, confidence:F
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_45

    .line 42
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 45
    :cond_45
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_104

    .line 47
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    .line 48
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v16

    new-instance v17, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler$1;-><init>(Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getCurrentMessageContext(Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 58
    .local v13, start:J
    :cond_67
    monitor-enter p0

    .line 59
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d1

    .line 60
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_e4

    .line 67
    :goto_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f2

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vlingo/client/safereader/MessageContext;->getSenderAddress()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_cf

    .line 72
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, number:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sms:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, url:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {v12}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_c8

    .line 78
    const-string v16, "sms_body"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_c8
    const-string v16, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .end local v9           #number:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    :cond_cf
    move-object v7, v6

    .line 147
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #start:J
    .local v7, intent:Landroid/content/Intent;
    :goto_d0
    return-object v7

    .line 61
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v13       #start:J
    :cond_d1
    :try_start_d1
    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_e4

    .line 62
    const-wide/16 v16, 0x64

    :try_start_d4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_e7

    .line 65
    :goto_d7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x7d0

    add-long v18, v18, v13

    cmp-long v16, v16, v18

    if-ltz v16, :cond_67

    goto :goto_71

    .line 61
    :catchall_e4
    move-exception v16

    :try_start_e5
    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v16

    .line 62
    :catch_e7
    move-exception v5

    .line 63
    .local v5, ex:Ljava/lang/Exception;
    const-string v16, "VLG_EXCEPTION"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 87
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_f2
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_104

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/vlingo/client/util/SMSUtil;->getMostRecentMessageFromInbox(Landroid/content/Context;)Lcom/vlingo/client/util/SMSUtil$TextMessage;

    move-result-object v8

    .line 89
    .local v8, lastMessage:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    if-eqz v8, :cond_104

    .line 90
    iget-object v2, v8, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    .line 95
    .end local v8           #lastMessage:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    .end local v13           #start:J
    :cond_104
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 96
    .local v11, res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_219

    .line 97
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v16

    const-class v17, Lcom/vlingo/client/contacts/ContactSelectActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v16, "com.vlingo.client.action"

    const-string v17, "sms"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v16, "query"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v16, "com.vlingo.client.message"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v16, "com.vlingo.client.confidenceScore"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 104
    const-string v16, "com.vlingo.client.title"

    const v17, 0x7f090273

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    if-eqz v10, :cond_200

    .line 106
    const-string v16, "work"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1a3

    .line 107
    const-string v16, "com.vlingo.client.phoneTypes"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 137
    :goto_176
    if-eqz v2, :cond_261

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_261

    .line 138
    const v16, 0x7f090276

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 140
    if-eqz v12, :cond_1a0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1a0

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    :cond_1a0
    :goto_1a0
    move-object v7, v6

    .line 147
    .end local v6           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto/16 :goto_d0

    .line 109
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_1a3
    const-string v16, "mobile"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1c5

    .line 110
    const-string v16, "com.vlingo.client.phoneTypes"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_176

    .line 112
    :cond_1c5
    const-string v16, "home"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1e7

    .line 113
    const-string v16, "com.vlingo.client.phoneTypes"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_176

    .line 116
    :cond_1e7
    const-string v16, "com.vlingo.client.phoneTypes"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_176

    .line 120
    :cond_200
    const-string v16, "com.vlingo.client.phoneTypes"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_176

    .line 127
    :cond_219
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 129
    .restart local v9       #number:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sms:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 130
    .restart local v15       #url:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {v12}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_258

    .line 133
    const-string v16, "sms_body"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_258
    const-string v16, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_176

    .line 145
    .end local v9           #number:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    :cond_261
    const v16, 0x7f090277

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto/16 :goto_1a0
.end method
