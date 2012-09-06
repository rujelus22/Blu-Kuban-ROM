.class public final Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponseOrBuilder;"
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
    .line 32951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33065
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32952
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->maybeForceBuilderInitialization()V

    .line 32953
    return-void
.end method

.method static synthetic access$45500()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 1

    .prologue
    .line 32946
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 1

    .prologue
    .line 32958
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32956
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 3

    .prologue
    .line 32979
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    .line 32980
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32981
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32983
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 6

    .prologue
    .line 32997
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 32998
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 32999
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33000
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33001
    or-int/lit8 v2, v2, 0x1

    .line 33003
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->access$45702(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33004
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33005
    or-int/lit8 v2, v2, 0x2

    .line 33007
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->access$45802(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;J)J

    .line 33008
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->access$45902(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;I)I

    .line 33009
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 3

    .prologue
    .line 32962
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32963
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 32964
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 32965
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    .line 32966
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 32967
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 2

    .prologue
    .line 33082
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33083
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33085
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 3

    .prologue
    .line 33103
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    .line 33106
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 3

    .prologue
    .line 32971
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

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
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 32975
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 33070
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 33094
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33067
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

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
    .line 33091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

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
    .line 33024
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
    .line 32946
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 32946
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

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
    .line 32946
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33032
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33033
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 33038
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33040
    :sswitch_d
    return-object p0

    .line 33045
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33046
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 33047
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 33048
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33049
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 33054
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 33033
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33013
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33020
    :cond_6
    :goto_6
    return-object p0

    .line 33014
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33015
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    .line 33017
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33018
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33073
    if-nez p1, :cond_8

    .line 33074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33076
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33077
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33079
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 33097
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->bitField0_:I

    .line 33098
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->timestamp_:J

    .line 33100
    return-object p0
.end method
