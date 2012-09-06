.class public final Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$PingRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PingRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30071
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30072
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 30073
    return-void
.end method

.method static synthetic access$41000()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 1

    .prologue
    .line 30066
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 1

    .prologue
    .line 30078
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30076
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 3

    .prologue
    .line 30099
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    .line 30100
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30101
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30103
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 6

    .prologue
    .line 30117
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 30118
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30119
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30120
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30121
    or-int/lit8 v2, v2, 0x1

    .line 30123
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->access$41202(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;J)J

    .line 30124
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30125
    or-int/lit8 v2, v2, 0x2

    .line 30127
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->access$41302(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30128
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->access$41402(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;I)I

    .line 30129
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 3

    .prologue
    .line 30082
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30083
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    .line 30084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30086
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30087
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 2

    .prologue
    .line 30226
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30227
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30229
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 3

    .prologue
    .line 30195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    .line 30198
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 3

    .prologue
    .line 30091
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

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
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 30095
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30207
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30208
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30210
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30213
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 30186
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 30204
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30183
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

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
    .line 30144
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
    .line 30066
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30066
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

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
    .line 30066
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30152
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 30153
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 30158
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30160
    :sswitch_d
    return-object p0

    .line 30165
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30166
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    goto :goto_0

    .line 30170
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30171
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 30153
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 30133
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30140
    :cond_6
    :goto_6
    return-object p0

    .line 30134
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30135
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    .line 30137
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30138
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    goto :goto_6
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30217
    if-nez p1, :cond_8

    .line 30218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30220
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 30223
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->bitField0_:I

    .line 30190
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->timestamp_:J

    .line 30192
    return-object p0
.end method
