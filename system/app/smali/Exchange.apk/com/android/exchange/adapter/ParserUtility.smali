.class public Lcom/android/exchange/adapter/ParserUtility;
.super Ljava/lang/Object;
.source "ParserUtility.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 419
    return-void
.end method

.method public static addMessageData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 18
    .parameter "parser"
    .parameter "msg"
    .parameter "loopTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v8, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v10, 0x0

    .line 28
    .local v10, flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    :cond_6
    :goto_6
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_189

    .line 29
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_194

    .line 151
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_6

    .line 33
    :sswitch_18
    move-object/from16 v0, p1

    invoke-static {p0, v8, v0}, Lcom/android/exchange/adapter/ParserUtility;->attachmentsParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_6

    .line 36
    :sswitch_1e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_6

    .line 39
    :sswitch_2f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v11

    .line 40
    .local v11, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v11, :cond_47

    array-length v2, v11

    if-lez v2, :cond_47

    .line 41
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 43
    :cond_47
    invoke-static {v11}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_6

    .line 46
    .end local v11           #froms:[Lcom/android/emailcommon/mail/Address;
    :sswitch_50
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_6

    .line 49
    :sswitch_61
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_6

    .line 52
    :sswitch_72
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, date:Ljava/lang/String;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 55
    .local v1, cal:Ljava/util/GregorianCalendar;
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xe

    const/16 v7, 0x10

    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x11

    const/16 v14, 0x13

    invoke-virtual {v9, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 59
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_6

    .line 64
    .end local v1           #cal:Ljava/util/GregorianCalendar;
    .end local v9           #date:Ljava/lang/String;
    :sswitch_d7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_6

    .line 67
    :sswitch_e1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ef

    const/4 v2, 0x1

    :goto_e9
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    goto/16 :goto_6

    :cond_ef
    const/4 v2, 0x0

    goto :goto_e9

    .line 70
    :sswitch_f1
    invoke-static/range {p0 .. p1}, Lcom/android/exchange/adapter/ParserUtility;->bodyParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_6

    .line 74
    :sswitch_f6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    goto/16 :goto_6

    .line 77
    :sswitch_100
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    goto/16 :goto_6

    .line 91
    :sswitch_10a
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .end local v10           #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    .line 94
    .restart local v10       #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    invoke-static {p0, v10}, Lcom/android/exchange/adapter/ParserUtility;->flagParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    .line 95
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v2, v10, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 96
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    goto/16 :goto_6

    .line 103
    :sswitch_124
    const-string v2, "ParserUtility"

    const-string v3, "EMAIL_BODY_TRUNCATED1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 107
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 108
    const-string v2, "ParserUtility"

    const-string v3, "EMAIL_BODY_TRUNCATED2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 117
    :sswitch_140
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueOpaque()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->crypt([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    goto/16 :goto_6

    .line 122
    :sswitch_14e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueOpaque()[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    goto/16 :goto_6

    .line 130
    :sswitch_158
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_6

    .line 135
    :sswitch_166
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, text:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/exchange/adapter/ParserUtility;->decodeMsgClass(Ljava/lang/String;)I

    move-result v12

    .line 137
    .local v12, msgClass:I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_178

    .line 138
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    goto/16 :goto_6

    .line 139
    :cond_178
    const/4 v2, 0x1

    if-ne v12, v2, :cond_6

    .line 140
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    goto/16 :goto_6

    .line 147
    .end local v12           #msgClass:I
    .end local v13           #text:Ljava/lang/String;
    :sswitch_182
    move-object/from16 v0, p1

    invoke-static {v0, p0}, Lcom/android/exchange/irm/IRMLicenseParserUtility;->parseLicense(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/adapter/AbstractSyncParser;)V

    goto/16 :goto_6

    .line 154
    :cond_189
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_193

    .line 155
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 157
    :cond_193
    return-void

    .line 29
    :sswitch_data_194
    .sparse-switch
        0x86 -> :sswitch_18
        0x8e -> :sswitch_124
        0x8f -> :sswitch_72
        0x92 -> :sswitch_158
        0x93 -> :sswitch_166
        0x94 -> :sswitch_d7
        0x95 -> :sswitch_e1
        0x96 -> :sswitch_1e
        0x97 -> :sswitch_50
        0x98 -> :sswitch_2f
        0x99 -> :sswitch_61
        0xba -> :sswitch_10a
        0x44a -> :sswitch_f1
        0x44e -> :sswitch_18
        0x585 -> :sswitch_f6
        0x586 -> :sswitch_100
        0x589 -> :sswitch_140
        0x58a -> :sswitch_14e
        0x608 -> :sswitch_182
    .end sparse-switch
.end method

.method private static attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 11
    .parameter "parser"
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/AbstractSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v1, 0x0

    .line 340
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, length:Ljava/lang/String;
    const/4 v3, 0x0

    .line 344
    .local v3, location:Ljava/lang/String;
    const/4 v5, 0x0

    .line 345
    .local v5, umAttOrder:I
    const/4 v4, 0x0

    .line 348
    .local v4, umAttDuration:I
    :goto_5
    const/16 v6, 0x85

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_30

    .line 349
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v6, :sswitch_data_56

    .line 372
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_5

    .line 353
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 354
    goto :goto_5

    .line 357
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 358
    goto :goto_5

    .line 361
    :sswitch_21
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 362
    goto :goto_5

    .line 365
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v5

    .line 366
    goto :goto_5

    .line 368
    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v4

    .line 369
    goto :goto_5

    .line 375
    :cond_30
    if-eqz v1, :cond_55

    if-eqz v2, :cond_55

    if-eqz v3, :cond_55

    .line 376
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 377
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v6, "base64"

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 378
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 379
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 380
    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 381
    invoke-static {v1}, Lcom/android/exchange/adapter/ParserUtility;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 382
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const/4 v6, 0x1

    iput-boolean v6, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 385
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_55
    return-void

    .line 349
    :sswitch_data_56
    .sparse-switch
        0x87 -> :sswitch_1c
        0x88 -> :sswitch_21
        0x90 -> :sswitch_17
        0x44c -> :sswitch_21
        0x450 -> :sswitch_17
        0x451 -> :sswitch_1c
        0x587 -> :sswitch_2b
        0x588 -> :sswitch_26
    .end sparse-switch
.end method

.method private static attachmentsParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter "parser"
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/AbstractSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 325
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_18

    .line 332
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 329
    :sswitch_12
    invoke-static {p0, p1, p2}, Lcom/android/exchange/adapter/ParserUtility;->attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 335
    :cond_16
    return-void

    .line 325
    nop

    :sswitch_data_18
    .sparse-switch
        0x85 -> :sswitch_12
        0x44f -> :sswitch_12
    .end sparse-switch
.end method

.method private static bodyParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "parser"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 176
    const-string v1, "1"

    .line 177
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 178
    .local v0, body:Ljava/lang/String;
    :cond_5
    :goto_5
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    .line 179
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_46

    .line 198
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_5

    .line 181
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 182
    goto :goto_5

    .line 184
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_5

    .line 189
    :sswitch_21
    const-string v2, "ParserUtility"

    const-string v3, "BASE_TRUNCATED1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 192
    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 193
    const-string v2, "ParserUtility"

    const-string v3, "BASE_TRUNCATED2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 211
    :cond_38
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 212
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 218
    :goto_42
    return-void

    .line 214
    :cond_43
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_42

    .line 179
    :sswitch_data_46
    .sparse-switch
        0x446 -> :sswitch_17
        0x44b -> :sswitch_1c
        0x44d -> :sswitch_21
    .end sparse-switch
.end method

.method public static decodeMsgClass(Ljava/lang/String;)I
    .registers 3
    .parameter "cl"

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p0, :cond_4

    .line 170
    :cond_3
    :goto_3
    return v0

    .line 163
    :cond_4
    const-string v1, "IPM.Note.SMIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string v1, "IPM.Note.SMIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 165
    const/4 v0, 0x2

    goto :goto_3

    .line 166
    :cond_16
    const-string v1, "IPM.Note.SMIME.MultipartSigned"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static flagParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;
    .registers 9
    .parameter "parser"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 225
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, state:Ljava/lang/Boolean;
    :goto_6
    const/16 v2, 0xba

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d8

    .line 228
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_da

    .line 286
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_6

    .line 231
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v1

    .line 232
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 233
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 235
    :cond_28
    if-ne v1, v3, :cond_33

    .line 236
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 237
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 239
    :cond_33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 240
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 244
    .end local v1           #status:I
    :sswitch_3c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    goto :goto_6

    .line 247
    :sswitch_43
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    goto :goto_6

    .line 251
    :sswitch_52
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    goto :goto_6

    .line 255
    :sswitch_61
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    goto :goto_6

    .line 259
    :sswitch_70
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    goto :goto_6

    .line 263
    :sswitch_7f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    goto/16 :goto_6

    .line 267
    :sswitch_8f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    goto/16 :goto_6

    .line 271
    :sswitch_9f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v3, :cond_ae

    move v2, v3

    :goto_a6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    goto/16 :goto_6

    :cond_ae
    move v2, v4

    goto :goto_a6

    .line 274
    :sswitch_b0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_6

    .line 278
    :sswitch_c0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    goto/16 :goto_6

    .line 282
    :sswitch_d0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    goto/16 :goto_6

    .line 289
    :cond_d8
    return-object v0

    .line 228
    nop

    :sswitch_data_da
    .sparse-switch
        0xbb -> :sswitch_18
        0xbd -> :sswitch_3c
        0xbe -> :sswitch_43
        0x24b -> :sswitch_52
        0x24c -> :sswitch_70
        0x24d -> :sswitch_7f
        0x25b -> :sswitch_9f
        0x25c -> :sswitch_b0
        0x25e -> :sswitch_61
        0x25f -> :sswitch_8f
        0x262 -> :sswitch_c0
        0x263 -> :sswitch_d0
    .end sparse-switch
.end method

.method public static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "fileName"

    .prologue
    .line 401
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 402
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 403
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1b

    .line 404
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_1b
    if-nez v0, :cond_20

    .line 408
    const-string v2, "application/octet-stream"

    .line 415
    .local v2, mimeType:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v2

    .line 410
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_20
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1f

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f
.end method

.method public static getTimeInMillis(Ljava/lang/String;)J
    .registers 3
    .parameter "tstr"

    .prologue
    .line 294
    const-string v0, "GMT"

    invoke-static {p0, v0}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .parameter "tstr"
    .parameter "timezone"

    .prologue
    .line 298
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 299
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 302
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 303
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method
