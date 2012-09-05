.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 50132
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 50156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50019
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 50020
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 1

    .prologue
    .line 50025
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 50023
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
    .registers 6

    .prologue
    .line 50064
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 50065
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50066
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 50067
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 50068
    or-int/lit8 v2, v2, 0x1

    .line 50070
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->access$70602(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 50071
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 50072
    or-int/lit8 v2, v2, 0x2

    .line 50074
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->access$70702(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50075
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->access$70802(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;I)I

    .line 50076
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 2

    .prologue
    .line 50029
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 50030
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 50031
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50034
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 2

    .prologue
    .line 50180
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50181
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50183
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 2

    .prologue
    .line 50149
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50150
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 50152
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 3

    .prologue
    .line 50038
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

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
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
    .registers 2

    .prologue
    .line 50042
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 50161
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50162
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 50163
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 50164
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50167
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

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 2

    .prologue
    .line 50137
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    return-object v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 50158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50134
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

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
    .line 50013
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

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
    .line 50013
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 50100
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 50105
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50107
    :sswitch_d
    return-object p0

    .line 50112
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 50113
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    move-result-object v2

    .line 50114
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    if-eqz v2, :cond_0

    .line 50115
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50116
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    goto :goto_0

    .line 50121
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 50100
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 50080
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 50087
    :cond_6
    :goto_6
    return-object p0

    .line 50081
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50082
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    .line 50084
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50085
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;

    goto :goto_6
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50171
    if-nez p1, :cond_8

    .line 50172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50174
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50175
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->description_:Ljava/lang/Object;

    .line 50177
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50140
    if-nez p1, :cond_8

    .line 50141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50143
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->bitField0_:I

    .line 50144
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 50146
    return-object p0
.end method
