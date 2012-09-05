.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponseOrBuilder;"
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
    .line 28786
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28921
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28787
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 28788
    return-void
.end method

.method static synthetic access$39000()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 1

    .prologue
    .line 28781
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 1

    .prologue
    .line 28793
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28791
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 3

    .prologue
    .line 28814
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    .line 28815
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28816
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28818
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 6

    .prologue
    .line 28832
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 28833
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28834
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28835
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28836
    or-int/lit8 v2, v2, 0x1

    .line 28838
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->access$39202(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;J)J

    .line 28839
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28840
    or-int/lit8 v2, v2, 0x2

    .line 28842
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->access$39302(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28843
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->access$39402(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;I)I

    .line 28844
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 3

    .prologue
    .line 28797
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    .line 28799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28800
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28802
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 2

    .prologue
    .line 28938
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28939
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28941
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 3

    .prologue
    .line 28914
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28915
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    .line 28917
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 3

    .prologue
    .line 28806
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

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
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 28810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 28926
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 28905
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 28923
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

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

    .line 28902
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

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
    .line 28781
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

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
    .line 28781
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28868
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 28873
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28875
    :sswitch_d
    return-object p0

    .line 28880
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 28885
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 28886
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 28887
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 28888
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28889
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 28868
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 28848
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28855
    :cond_6
    :goto_6
    return-object p0

    .line 28849
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28850
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    .line 28852
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28853
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28929
    if-nez p1, :cond_8

    .line 28930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28932
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28933
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 28935
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->bitField0_:I

    .line 28909
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->timestamp_:J

    .line 28911
    return-object p0
.end method
