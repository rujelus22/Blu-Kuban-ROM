.class public final Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29251
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29294
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29134
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 29135
    return-void
.end method

.method static synthetic access$39600()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 1

    .prologue
    .line 29128
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 1

    .prologue
    .line 29140
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29138
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 3

    .prologue
    .line 29161
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    .line 29162
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29163
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29165
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 6

    .prologue
    .line 29179
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 29180
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29181
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29182
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29183
    or-int/lit8 v2, v2, 0x1

    .line 29185
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->access$39802(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29186
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29187
    or-int/lit8 v2, v2, 0x2

    .line 29189
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->access$39902(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29190
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->access$40002(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;I)I

    .line 29191
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 2

    .prologue
    .line 29144
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29145
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29147
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29148
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29149
    return-object p0
.end method

.method public clearDeviceRegistration()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 2

    .prologue
    .line 29287
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29289
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29290
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 2

    .prologue
    .line 29330
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29332
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29333
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3

    .prologue
    .line 29153
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

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
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 29157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistration()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 29256
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 29299
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasDeviceRegistration()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29253
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 29296
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 29206
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29275
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29277
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29283
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29284
    return-object p0

    .line 29280
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    goto :goto_1f
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
    .line 29128
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29128
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

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
    .line 29128
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 29215
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 29220
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29222
    :sswitch_d
    return-object p0

    .line 29227
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    .line 29228
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->hasDeviceRegistration()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 29229
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->getDeviceRegistration()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 29231
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29232
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->setDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    goto :goto_0

    .line 29236
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 29237
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 29238
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 29240
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29241
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    goto :goto_0

    .line 29215
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 29195
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29202
    :cond_6
    :goto_6
    return-object p0

    .line 29196
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->hasDeviceRegistration()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29197
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDeviceRegistration()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 29199
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29200
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29320
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29326
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29327
    return-object p0

    .line 29323
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29269
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29272
    return-object p0
.end method

.method public setDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29259
    if-nez p1, :cond_8

    .line 29260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29262
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->deviceRegistration_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 29264
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29265
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29312
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29314
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29315
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29302
    if-nez p1, :cond_8

    .line 29303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29305
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 29307
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->bitField0_:I

    .line 29308
    return-object p0
.end method
