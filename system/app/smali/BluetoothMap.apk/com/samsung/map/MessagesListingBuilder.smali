.class public Lcom/samsung/map/MessagesListingBuilder;
.super Ljava/lang/Object;
.source "MessagesListingBuilder.java"


# instance fields
.field private FilterMessageType:I

.field private FilterOriginator:Ljava/lang/String;

.field private FilterPeriodBegin:Ljava/lang/String;

.field private FilterPeriodEnd:Ljava/lang/String;

.field private FilterPriority:I

.field private FilterReadStatus:I

.field private FilterRecipient:Ljava/lang/String;

.field private ListStartOffset:I

.field private MaxListCount:I

.field private ParameterMask:I

.field private SubjectLength:I

.field private count:I

.field private i:I

.field serializer:Lorg/xmlpull/v1/XmlSerializer;

.field writer:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .parameter "maxListCount"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "parameterMask"
    .parameter "filterMessageType"
    .parameter "filterPeriodBegin"
    .parameter "filterPeriodEnd"
    .parameter "filterReadStatus"
    .parameter "filterRecipient"
    .parameter "filterOriginator"
    .parameter "filterPriority"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/samsung/map/MessagesListingBuilder;->MaxListCount:I

    .line 75
    iput p2, p0, Lcom/samsung/map/MessagesListingBuilder;->ListStartOffset:I

    .line 76
    iput p3, p0, Lcom/samsung/map/MessagesListingBuilder;->SubjectLength:I

    .line 77
    iput p4, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    .line 78
    iput p5, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterMessageType:I

    .line 79
    iput-object p6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodBegin:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodEnd:Ljava/lang/String;

    .line 81
    iput p8, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterReadStatus:I

    .line 82
    const-string v0, "\\*"

    const-string v1, ""

    invoke-virtual {p9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterRecipient:Ljava/lang/String;

    .line 83
    const-string v0, "\\*"

    const-string v1, ""

    invoke-virtual {p10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterOriginator:Ljava/lang/String;

    .line 84
    iput p11, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPriority:I

    .line 85
    iput v2, p0, Lcom/samsung/map/MessagesListingBuilder;->i:I

    .line 86
    iput v2, p0, Lcom/samsung/map/MessagesListingBuilder;->count:I

    .line 87
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->writer:Ljava/io/StringWriter;

    .line 91
    :try_start_3b
    iget-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/samsung/map/MessagesListingBuilder;->writer:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "MAP-msg-listing"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget-object v0, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "version"

    const-string v3, "1.0"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_62} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_62} :catch_65
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_62} :catch_63

    .line 103
    :goto_62
    return-void

    .line 99
    :catch_63
    move-exception v0

    goto :goto_62

    .line 97
    :catch_65
    move-exception v0

    goto :goto_62

    .line 95
    :catch_67
    move-exception v0

    goto :goto_62
.end method


# virtual methods
.method public addMessage(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)Z
    .registers 28
    .parameter "Handle"
    .parameter "subject"
    .parameter "DateTime"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "replayto_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "type"
    .parameter "size"
    .parameter "text"
    .parameter "reception_status"
    .parameter "attachment_size"
    .parameter "priority"
    .parameter "read"
    .parameter "sent"
    .parameter "protect"

    .prologue
    .line 161
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterMessageType:I

    and-int v6, v6, p9

    if-eqz v6, :cond_8

    .line 162
    const/4 v6, 0x0

    .line 350
    :goto_7
    return v6

    .line 165
    :cond_8
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyMMdd\'T\'HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, Date:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodBegin:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_27

    .line 167
    const/4 v6, 0x0

    goto :goto_7

    .line 169
    :cond_27
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodEnd:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_3b

    .line 170
    const/4 v6, 0x0

    goto :goto_7

    .line 172
    :cond_3b
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterReadStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_44

    if-eqz p15, :cond_44

    .line 173
    const/4 v6, 0x0

    goto :goto_7

    .line 175
    :cond_44
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterReadStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4d

    if-nez p15, :cond_4d

    .line 176
    const/4 v6, 0x0

    goto :goto_7

    .line 178
    :cond_4d
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterRecipient:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 179
    const/4 v4, 0x1

    .line 181
    .local v4, status:Z
    if-eqz p7, :cond_65

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterRecipient:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 182
    const/4 v4, 0x0

    .line 185
    :cond_65
    if-eqz p8, :cond_72

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterRecipient:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 186
    const/4 v4, 0x0

    .line 189
    :cond_72
    if-eqz v4, :cond_76

    .line 190
    const/4 v6, 0x0

    goto :goto_7

    .line 193
    .end local v4           #status:Z
    :cond_76
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterOriginator:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 194
    const/4 v4, 0x1

    .line 196
    .restart local v4       #status:Z
    if-eqz p4, :cond_8c

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 197
    const/4 v4, 0x0

    .line 200
    :cond_8c
    if-eqz p5, :cond_97

    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {p5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 201
    const/4 v4, 0x0

    .line 204
    :cond_97
    if-eqz v4, :cond_9c

    .line 205
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 209
    .end local v4           #status:Z
    :cond_9c
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPriority:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a6

    if-nez p14, :cond_a6

    .line 210
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 212
    :cond_a6
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->FilterPriority:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b0

    if-eqz p14, :cond_b0

    .line 213
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 216
    :cond_b0
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->i:I

    iget v7, p0, Lcom/samsung/map/MessagesListingBuilder;->ListStartOffset:I

    if-lt v6, v7, :cond_29a

    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->count:I

    iget v7, p0, Lcom/samsung/map/MessagesListingBuilder;->MaxListCount:I

    if-ge v6, v7, :cond_29a

    .line 218
    :try_start_bc
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "msg"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "handle"

    invoke-static {p1}, Lcom/samsung/map/Constants;->handleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_f4

    .line 222
    if-nez p2, :cond_dc

    .line 223
    const-string p2, ""

    .line 225
    :cond_dc
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/map/MessagesListingBuilder;->SubjectLength:I

    if-le v6, v7, :cond_eb

    .line 227
    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/map/MessagesListingBuilder;->SubjectLength:I

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 229
    :cond_eb
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "subject"

    invoke-interface {v6, v7, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_f4
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_105

    .line 232
    if-eqz v1, :cond_105

    .line 233
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "datetime"

    invoke-interface {v6, v7, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_105
    if-eqz p4, :cond_12d

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12d

    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_12d

    .line 239
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_124

    .line 240
    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_123} :catch_2be

    move-result-object p4

    .line 243
    :cond_124
    :try_start_124
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "sender_name"

    invoke-interface {v6, v7, v8, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12d} :catch_2a3

    .line 248
    :cond_12d
    :goto_12d
    if-eqz p5, :cond_155

    :try_start_12f
    const-string v6, ""

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_155

    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_155

    .line 250
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_14c

    .line 251
    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {p5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_14b} :catch_2be

    move-result-object p5

    .line 254
    :cond_14c
    :try_start_14c
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "sender_addressing"

    invoke-interface {v6, v7, v8, p5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_155} :catch_2dc

    .line 259
    :cond_155
    :goto_155
    if-eqz p6, :cond_185

    :try_start_157
    const-string v6, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_185

    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_185

    .line 261
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_17a

    .line 262
    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_179} :catch_2be

    move-result-object p6

    .line 265
    :cond_17a
    :try_start_17a
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "replayto_addressing"

    move-object/from16 v0, p6

    invoke-interface {v6, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_185} :catch_2f7

    .line 270
    :cond_185
    :goto_185
    if-eqz p7, :cond_1b3

    :try_start_187
    const-string v6, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b3

    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1b3

    .line 272
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_1a8

    .line 273
    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object/from16 v0, p7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1a7} :catch_2be

    move-result-object p7

    .line 276
    :cond_1a8
    :try_start_1a8
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "recipient_name"

    move-object/from16 v0, p7

    invoke-interface {v6, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b3} :catch_314

    .line 281
    :cond_1b3
    :goto_1b3
    :try_start_1b3
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1d9

    .line 282
    if-nez p8, :cond_1bd

    .line 283
    const-string p8, ""

    .line 285
    :cond_1bd
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_1ce

    .line 286
    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    .line 288
    :cond_1ce
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "recipient_addressing"

    move-object/from16 v0, p8

    invoke-interface {v6, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    :cond_1d9
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1f2

    .line 291
    new-instance v5, Ljava/lang/String;

    const-string v6, "SMS_GSM"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 292
    .local v5, typestr:Ljava/lang/String;
    packed-switch p9, :pswitch_data_35e

    .line 306
    :goto_1e9
    :pswitch_1e9
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "type"

    invoke-interface {v6, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    .end local v5           #typestr:Ljava/lang/String;
    :cond_1f2
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_205

    .line 309
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "size"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_205
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_218

    .line 312
    iget-object v7, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "text"

    if-eqz p11, :cond_341

    const-string v6, "yes"

    :goto_215
    invoke-interface {v7, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    :cond_218
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_22c

    .line 315
    const-string v3, "complete"

    .line 316
    .local v3, rsstr:Ljava/lang/String;
    packed-switch p12, :pswitch_data_372

    .line 324
    :goto_223
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "reception_status"

    invoke-interface {v6, v7, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    .end local v3           #rsstr:Ljava/lang/String;
    :cond_22c
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_23f

    .line 327
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "attachment_size"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    :cond_23f
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_252

    .line 330
    iget-object v7, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "priority"

    if-eqz p14, :cond_34d

    const-string v6, "yes"

    :goto_24f
    invoke-interface {v7, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_252
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_265

    .line 333
    iget-object v7, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "read"

    if-eqz p15, :cond_351

    const-string v6, "yes"

    :goto_262
    invoke-interface {v7, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_265
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_278

    .line 336
    iget-object v7, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "sent"

    if-eqz p16, :cond_355

    const-string v6, "yes"

    :goto_275
    invoke-interface {v7, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_278
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->ParameterMask:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_28b

    .line 339
    iget-object v7, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "protected"

    if-eqz p17, :cond_359

    const-string v6, "yes"

    :goto_288
    invoke-interface {v7, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_28b
    iget-object v6, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "msg"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_294} :catch_2be

    .line 346
    :goto_294
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/map/MessagesListingBuilder;->count:I

    .line 348
    :cond_29a
    iget v6, p0, Lcom/samsung/map/MessagesListingBuilder;->i:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/map/MessagesListingBuilder;->i:I

    .line 350
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 244
    :catch_2a3
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/Exception;
    :try_start_2a4
    const-string v6, "MessagesListingBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sender_name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2bc} :catch_2be

    goto/16 :goto_12d

    .line 342
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2be
    move-exception v2

    .line 344
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "MessagesListingBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when adding reqired element! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 255
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2dc
    move-exception v2

    .line 256
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_2dd
    const-string v6, "MessagesListingBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sender_addressing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 266
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2f7
    move-exception v2

    .line 267
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "MessagesListingBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "replayto_addressing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_185

    .line 277
    .end local v2           #e:Ljava/lang/Exception;
    :catch_314
    move-exception v2

    .line 278
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "MessagesListingBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recipient_name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b3

    .line 294
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #typestr:Ljava/lang/String;
    :pswitch_331
    const-string v5, "EMAIL"

    .line 295
    goto/16 :goto_1e9

    .line 297
    :pswitch_335
    const-string v5, "SMS_CDMA"

    .line 298
    goto/16 :goto_1e9

    .line 300
    :pswitch_339
    const-string v5, "SMS_GSM"

    .line 301
    goto/16 :goto_1e9

    .line 303
    :pswitch_33d
    const-string v5, "MMS"

    goto/16 :goto_1e9

    .line 312
    .end local v5           #typestr:Ljava/lang/String;
    :cond_341
    const-string v6, "no"

    goto/16 :goto_215

    .line 318
    .restart local v3       #rsstr:Ljava/lang/String;
    :pswitch_345
    const-string v3, "fractioned"

    .line 319
    goto/16 :goto_223

    .line 321
    :pswitch_349
    const-string v3, "notification"

    goto/16 :goto_223

    .line 330
    .end local v3           #rsstr:Ljava/lang/String;
    :cond_34d
    const-string v6, "no"

    goto/16 :goto_24f

    .line 333
    :cond_351
    const-string v6, "no"

    goto/16 :goto_262

    .line 336
    :cond_355
    const-string v6, "no"

    goto/16 :goto_275

    .line 339
    :cond_359
    const-string v6, "no"
    :try_end_35b
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_35b} :catch_2be

    goto/16 :goto_288

    .line 292
    nop

    :pswitch_data_35e
    .packed-switch 0x1
        :pswitch_339
        :pswitch_335
        :pswitch_1e9
        :pswitch_331
        :pswitch_1e9
        :pswitch_1e9
        :pswitch_1e9
        :pswitch_33d
    .end packed-switch

    .line 316
    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_349
        :pswitch_345
    .end packed-switch
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/samsung/map/MessagesListingBuilder;->count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "MAP-msg-listing"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    iget-object v1, p0, Lcom/samsung/map/MessagesListingBuilder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_e} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_29

    .line 370
    :goto_e
    iget-object v1, p0, Lcom/samsung/map/MessagesListingBuilder;->writer:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 361
    :catch_15
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MessagesListingBuilder"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 363
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "MessagesListingBuilder"

    const-string v2, "illesgal state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 365
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_29
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MessagesListingBuilder"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
