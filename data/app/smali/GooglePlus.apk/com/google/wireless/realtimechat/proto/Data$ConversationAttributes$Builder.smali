.class public final Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private conversationName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4112
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4113
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->maybeForceBuilderInitialization()V

    .line 4114
    return-void
.end method

.method static synthetic access$5400()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 1

    .prologue
    .line 4107
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 1

    .prologue
    .line 4119
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4117
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 3

    .prologue
    .line 4140
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    .line 4141
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4142
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4144
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 6

    .prologue
    .line 4158
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 4159
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4160
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4161
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4162
    or-int/lit8 v2, v2, 0x1

    .line 4164
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->access$5602(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4166
    or-int/lit8 v2, v2, 0x2

    .line 4168
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->access$5702(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->access$5802(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;I)I

    .line 4170
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 2

    .prologue
    .line 4123
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4128
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 2

    .prologue
    .line 4282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4283
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4285
    return-object p0
.end method

.method public clearConversationName()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 2

    .prologue
    .line 4246
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4247
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4249
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 3

    .prologue
    .line 4132
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4263
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4264
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4266
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4269
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getConversationName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4228
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4230
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4233
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4107
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;
    .registers 2

    .prologue
    .line 4136
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 4260
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasConversationName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4224
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4185
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4107
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4107
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4107
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4194
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 4199
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4201
    :sswitch_d
    return-object p0

    .line 4206
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4207
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    goto :goto_0

    .line 4211
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4212
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 4194
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4181
    :cond_6
    :goto_6
    return-object p0

    .line 4175
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->hasConversationName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4176
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->setConversationName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    .line 4178
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4179
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4273
    if-nez p1, :cond_8

    .line 4274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4276
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4277
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationId_:Ljava/lang/Object;

    .line 4279
    return-object p0
.end method

.method public setConversationName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4237
    if-nez p1, :cond_8

    .line 4238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4240
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->bitField0_:I

    .line 4241
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationAttributes$Builder;->conversationName_:Ljava/lang/Object;

    .line 4243
    return-object p0
.end method
