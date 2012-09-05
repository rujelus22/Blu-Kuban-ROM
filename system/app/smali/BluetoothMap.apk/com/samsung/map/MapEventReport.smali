.class public Lcom/samsung/map/MapEventReport;
.super Ljava/lang/Object;
.source "MapEventReport.java"


# instance fields
.field private folder:Ljava/lang/String;

.field private handle:I

.field private msg_type:I

.field private old_folder:Ljava/lang/String;

.field private type:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "Type"
    .parameter "Handle"
    .parameter "Folder"
    .parameter "Old_folder"
    .parameter "Msg_type"

    .prologue
    const/16 v3, 0x200

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/samsung/map/MapEventReport;->type:I

    .line 100
    iput p2, p0, Lcom/samsung/map/MapEventReport;->handle:I

    .line 101
    iput-object p3, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2d

    .line 103
    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x201

    iget-object v2, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    .line 105
    :cond_2d
    iput-object p4, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_51

    .line 107
    iget-object v0, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x201

    iget-object v2, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    .line 109
    :cond_51
    iput p5, p0, Lcom/samsung/map/MapEventReport;->msg_type:I

    .line 110
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 113
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 114
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 116
    .local v4, writer:Ljava/io/StringWriter;
    :try_start_9
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 118
    const-string v5, ""

    const-string v6, "MAP-event-report"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v5, ""

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v5, ""

    const-string v6, "event"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 124
    .local v3, type_str:Ljava/lang/String;
    iget v5, p0, Lcom/samsung/map/MapEventReport;->type:I

    packed-switch v5, :pswitch_data_b8

    .line 154
    :goto_2d
    const-string v5, ""

    const-string v6, "type"

    invoke-interface {v2, v5, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    iget v5, p0, Lcom/samsung/map/MapEventReport;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_74

    iget v5, p0, Lcom/samsung/map/MapEventReport;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_74

    .line 157
    const-string v5, ""

    const-string v6, "handle"

    iget v7, p0, Lcom/samsung/map/MapEventReport;->handle:I

    invoke-static {v7}, Lcom/samsung/map/Constants;->handleToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string v5, ""

    const-string v6, "folder"

    iget-object v7, p0, Lcom/samsung/map/MapEventReport;->folder:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    iget v5, p0, Lcom/samsung/map/MapEventReport;->type:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_63

    .line 160
    const-string v5, ""

    const-string v6, "old_folder"

    iget-object v7, p0, Lcom/samsung/map/MapEventReport;->old_folder:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    :cond_63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 163
    .local v1, msg_type_str:Ljava/lang/String;
    iget v5, p0, Lcom/samsung/map/MapEventReport;->msg_type:I

    packed-switch v5, :pswitch_data_ce

    .line 177
    :goto_6d
    :pswitch_6d
    const-string v5, ""

    const-string v6, "msg_type"

    invoke-interface {v2, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    .end local v1           #msg_type_str:Ljava/lang/String;
    :cond_74
    const-string v5, ""

    const-string v6, "event"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v5, ""

    const-string v6, "MAP-event-report"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 185
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 126
    :pswitch_8a
    const-string v3, "NewMessage"

    .line 127
    goto :goto_2d

    .line 129
    :pswitch_8d
    const-string v3, "DeliverySuccess"

    .line 130
    goto :goto_2d

    .line 132
    :pswitch_90
    const-string v3, "SendingSuccess"

    .line 133
    goto :goto_2d

    .line 135
    :pswitch_93
    const-string v3, "DeliveryFailure"

    .line 136
    goto :goto_2d

    .line 138
    :pswitch_96
    const-string v3, "SendingFailure"

    .line 139
    goto :goto_2d

    .line 141
    :pswitch_99
    const-string v3, "MemoryFull"

    .line 142
    goto :goto_2d

    .line 144
    :pswitch_9c
    const-string v3, "MemoryAvailable"

    .line 145
    goto :goto_2d

    .line 147
    :pswitch_9f
    const-string v3, "MessageDeleted"

    .line 148
    goto :goto_2d

    .line 150
    :pswitch_a2
    const-string v3, "MessageShift"

    goto :goto_2d

    .line 165
    .restart local v1       #msg_type_str:Ljava/lang/String;
    :pswitch_a5
    const-string v1, "EMAIL"

    .line 166
    goto :goto_6d

    .line 168
    :pswitch_a8
    const-string v1, "SMS_GSM"

    .line 169
    goto :goto_6d

    .line 171
    :pswitch_ab
    const-string v1, "SMS_CDMA"

    .line 172
    goto :goto_6d

    .line 174
    :pswitch_ae
    const-string v1, "MMS"
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b0} :catch_b1

    goto :goto_6d

    .line 186
    .end local v1           #msg_type_str:Ljava/lang/String;
    .end local v3           #type_str:Ljava/lang/String;
    :catch_b1
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 124
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_93
        :pswitch_96
        :pswitch_99
        :pswitch_9c
        :pswitch_9f
        :pswitch_a2
    .end packed-switch

    .line 163
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_ab
        :pswitch_6d
        :pswitch_a5
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_ae
    .end packed-switch
.end method
