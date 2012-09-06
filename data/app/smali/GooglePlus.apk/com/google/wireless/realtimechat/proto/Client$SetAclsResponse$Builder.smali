.class public final Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponseOrBuilder;"
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
    .line 33729
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33843
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33730
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 33731
    return-void
.end method

.method static synthetic access$46700()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 1

    .prologue
    .line 33724
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 1

    .prologue
    .line 33736
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33734
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 3

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    .line 33758
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33759
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33761
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 6

    .prologue
    .line 33775
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 33776
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33777
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33778
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33779
    or-int/lit8 v2, v2, 0x1

    .line 33781
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->access$46902(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33782
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33783
    or-int/lit8 v2, v2, 0x2

    .line 33785
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->access$47002(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;J)J

    .line 33786
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->access$47102(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;I)I

    .line 33787
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 3

    .prologue
    .line 33740
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33741
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33742
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33743
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    .line 33744
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33745
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 2

    .prologue
    .line 33860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33861
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33863
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 3

    .prologue
    .line 33881
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33882
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    .line 33884
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 3

    .prologue
    .line 33749
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

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
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33724
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 33753
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 33848
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 33872
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33845
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

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
    .line 33869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

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
    .line 33802
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
    .line 33724
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33724
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

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
    .line 33724
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33810
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33811
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 33816
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33818
    :sswitch_d
    return-object p0

    .line 33823
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 33824
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 33825
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 33826
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33827
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 33832
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33833
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 33811
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33791
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33798
    :cond_6
    :goto_6
    return-object p0

    .line 33792
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33793
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    .line 33795
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33796
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33851
    if-nez p1, :cond_8

    .line 33852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33854
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33855
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 33857
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 33875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->bitField0_:I

    .line 33876
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->timestamp_:J

    .line 33878
    return-object p0
.end method
