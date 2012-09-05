.class public Lcom/samsung/map/AnyMessageFolder;
.super Lcom/samsung/map/MessageFolder;
.source "AnyMessageFolder.java"


# instance fields
.field content:Landroid/content/ContentResolver;

.field emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

.field mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .parameter "emailAccountId"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/samsung/map/MessageFolder;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->content:Landroid/content/ContentResolver;

    .line 52
    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    .line 54
    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->content:Landroid/content/ContentResolver;

    .line 59
    new-instance v0, Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-direct {v0, p2}, Lcom/samsung/map/MmsSmsMessageFolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    .line 60
    const/4 v0, -0x1

    if-le p1, v0, :cond_21

    .line 61
    new-instance v0, Lcom/samsung/map/EmailMessageFolder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/map/EmailMessageFolder;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    .line 64
    :cond_21
    return-void
.end method


# virtual methods
.method public GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 8
    .parameter "Handle"
    .parameter "Attachment"
    .parameter "Charset"
    .parameter "FractionRequest"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/samsung/map/AnyMessageFolder;->getMsgType(I)I

    move-result v0

    .line 136
    .local v0, type:I
    packed-switch v0, :pswitch_data_22

    .line 148
    :cond_7
    :pswitch_7
    new-instance v1, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    const/16 v2, 0xc4

    invoke-direct {v1, p0, v2}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    :goto_e
    return-object v1

    .line 139
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/map/MmsSmsMessageFolder;->GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-result-object v1

    goto :goto_e

    .line 142
    :pswitch_16
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    if-eqz v1, :cond_7

    .line 143
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/map/EmailMessageFolder;->GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-result-object v1

    goto :goto_e

    .line 136
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_f
        :pswitch_16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 12
    .parameter "folder"
    .parameter "Transparent"
    .parameter "Retry"
    .parameter "Charset"
    .parameter "msg"

    .prologue
    .line 156
    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget-object v0, p5, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    iget v0, v0, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_22

    .line 159
    :cond_16
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/map/MmsSmsMessageFolder;->PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;

    move-result-object v0

    .line 161
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/map/EmailMessageFolder;->PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;

    move-result-object v0

    goto :goto_21
.end method

.method public SetFolder(Ljava/lang/String;)I
    .registers 4
    .parameter "name"

    .prologue
    const/16 v0, 0xc4

    .line 185
    invoke-super {p0, p1}, Lcom/samsung/map/MessageFolder;->SetFolder(Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-virtual {v1, p1}, Lcom/samsung/map/MmsSmsMessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 195
    :cond_d
    :goto_d
    return v0

    .line 191
    :cond_e
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v1, p1}, Lcom/samsung/map/EmailMessageFolder;->SetFolder(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_d

    .line 195
    const/16 v0, 0xa0

    goto :goto_d
.end method

.method public SetStatus(III)I
    .registers 6
    .parameter "handle"
    .parameter "StatusIndicator"
    .parameter "StatusValue"

    .prologue
    .line 167
    invoke-static {p1}, Lcom/samsung/map/AnyMessageFolder;->getMsgType(I)I

    move-result v0

    .line 169
    .local v0, type:I
    packed-switch v0, :pswitch_data_1c

    .line 179
    :cond_7
    :pswitch_7
    const/16 v1, 0xc4

    :goto_9
    return v1

    .line 172
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/map/MmsSmsMessageFolder;->SetStatus(III)I

    move-result v1

    goto :goto_9

    .line 174
    :pswitch_11
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    if-eqz v1, :cond_7

    .line 175
    iget-object v1, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/map/EmailMessageFolder;->SetStatus(III)I

    move-result v1

    goto :goto_9

    .line 169
    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_a
        :pswitch_11
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public Update()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v0}, Lcom/samsung/map/EmailMessageFolder;->Update()I

    move-result v0

    .line 204
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0xd1

    goto :goto_a
.end method

.method public getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .registers 35
    .parameter "folder"
    .parameter "MaxListCount"
    .parameter "ListStartOffset"
    .parameter "SubjectLength"
    .parameter "ParameterMask"
    .parameter "FilterMessageType"
    .parameter "FilterPeriodBegin"
    .parameter "FilterPeriodEnd"
    .parameter "FilterReadStatus"
    .parameter "FilterRecipient"
    .parameter "FilterOriginator"
    .parameter "FilterPriority"

    .prologue
    .line 79
    new-instance v17, Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/map/MessageFolder$MessageListingResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 80
    .local v17, mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    new-instance v2, Lcom/samsung/map/MessagesListingBuilder;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Lcom/samsung/map/MessagesListingBuilder;-><init>(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 85
    .local v2, mlb:Lcom/samsung/map/MessagesListingBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-virtual {v3, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->setMessagesListingBuilder(Lcom/samsung/map/MessagesListingBuilder;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/map/MmsSmsMessageFolder;->getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-result-object v17

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    if-eqz v3, :cond_83

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v3, v2}, Lcom/samsung/map/EmailMessageFolder;->setMessagesListingBuilder(Lcom/samsung/map/MessagesListingBuilder;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/map/EmailMessageFolder;->getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-result-object v17

    .line 98
    move-object/from16 v0, v17

    iget v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_83

    move-object/from16 v18, v17

    .line 126
    .end local v17           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .local v18, mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    :goto_82
    return-object v18

    .line 104
    .end local v18           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .restart local v17       #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/map/FolderEntry;->cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;

    move-result-object v20

    .line 106
    .local v20, newFolder:Lcom/samsung/map/FolderEntry;
    if-nez p2, :cond_c2

    if-eqz v20, :cond_c2

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->getSmsMessageListing(Lcom/samsung/map/FolderEntry;Lcom/samsung/map/MessagesListingBuilder;)I

    move-result v21

    .line 108
    .local v21, sms_count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Lcom/samsung/map/MmsSmsMessageFolder;->getMmsMessageListing(Lcom/samsung/map/FolderEntry;Lcom/samsung/map/MessagesListingBuilder;)I

    move-result v19

    .line 109
    .local v19, mms_count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/samsung/map/EmailMessageFolder;->getMessageCount(Lcom/samsung/map/FolderEntry;)I

    move-result v16

    .line 116
    .local v16, email_count:I
    add-int v3, v21, v19

    add-int v3, v3, v16

    move-object/from16 v0, v17

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    .line 122
    .end local v16           #email_count:I
    .end local v19           #mms_count:I
    .end local v21           #sms_count:I
    :goto_b7
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->listing:Ljava/lang/String;

    move-object/from16 v18, v17

    .line 126
    .end local v17           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .restart local v18       #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    goto :goto_82

    .line 119
    .end local v18           #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .restart local v17       #mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    :cond_c2
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->getSize()I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    goto :goto_b7
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->mmsSmsMessageFolder:Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-virtual {v0, p1}, Lcom/samsung/map/MmsSmsMessageFolder;->setContext(Landroid/content/Context;)V

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    if-eqz v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/samsung/map/AnyMessageFolder;->emailMessageFolder:Lcom/samsung/map/EmailMessageFolder;

    invoke-virtual {v0, p1}, Lcom/samsung/map/EmailMessageFolder;->setContext(Landroid/content/Context;)V

    .line 71
    :cond_12
    return-void
.end method
