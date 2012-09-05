.class public final Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32108
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31995
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->maybeForceBuilderInitialization()V

    .line 31996
    return-void
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 1

    .prologue
    .line 32001
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31999
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
    .registers 6

    .prologue
    .line 32040
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 32041
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32042
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32043
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32044
    or-int/lit8 v2, v2, 0x1

    .line 32046
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->access$44302(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32047
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32048
    or-int/lit8 v2, v2, 0x2

    .line 32050
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->access$44402(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;J)J

    .line 32051
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->access$44502(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;I)I

    .line 32052
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 3

    .prologue
    .line 32005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32006
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    .line 32009
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32010
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 2

    .prologue
    .line 32125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32126
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32128
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 3

    .prologue
    .line 32146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    .line 32149
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 3

    .prologue
    .line 32014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

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
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;
    .registers 2

    .prologue
    .line 32018
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 32113
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 32137
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32110
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 32134
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

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
    .line 31989
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

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
    .line 31989
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32075
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32076
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 32081
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32083
    :sswitch_d
    return-object p0

    .line 32088
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 32089
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 32090
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 32091
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32092
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 32097
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32098
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 32076
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 32056
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32063
    :cond_6
    :goto_6
    return-object p0

    .line 32057
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32058
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    .line 32060
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32061
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32116
    if-nez p1, :cond_8

    .line 32117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32119
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32120
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32122
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32140
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->bitField0_:I

    .line 32141
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusResponse$Builder;->timestamp_:J

    .line 32143
    return-object p0
.end method
