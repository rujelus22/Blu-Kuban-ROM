.class public final Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private participantId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39018
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 39019
    return-void
.end method

.method static synthetic access$53900()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 1

    .prologue
    .line 39012
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 1

    .prologue
    .line 39024
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39022
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 3

    .prologue
    .line 39043
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    .line 39044
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39045
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39047
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 6

    .prologue
    .line 39061
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 39062
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    .line 39063
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39064
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39065
    or-int/lit8 v2, v2, 0x1

    .line 39067
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->access$54102(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39068
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->access$54202(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;I)I

    .line 39069
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 2

    .prologue
    .line 39028
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39030
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    .line 39031
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 2

    .prologue
    .line 39137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    .line 39138
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39140
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 3

    .prologue
    .line 39035
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

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
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39012
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 39039
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39118
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39119
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39120
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39121
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39124
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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39115
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 39012
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

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
    .line 39012
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 39090
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 39095
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39097
    :sswitch_d
    return-object p0

    .line 39102
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    .line 39103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 39090
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 39073
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39077
    :cond_6
    :goto_6
    return-object p0

    .line 39074
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39075
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    goto :goto_6
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39128
    if-nez p1, :cond_8

    .line 39129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39131
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->bitField0_:I

    .line 39132
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->participantId_:Ljava/lang/Object;

    .line 39134
    return-object p0
.end method
