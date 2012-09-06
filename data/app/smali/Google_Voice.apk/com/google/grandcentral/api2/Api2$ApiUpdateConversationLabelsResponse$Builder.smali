.class public final Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23778
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23863
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23779
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 23780
    return-void
.end method

.method static synthetic access$28300()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 1

    .prologue
    .line 23773
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 1

    .prologue
    .line 23785
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23783
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    .registers 3

    .prologue
    .line 23804
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    .line 23805
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23806
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23808
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    .registers 6

    .prologue
    .line 23812
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 23813
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23814
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23815
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23816
    or-int/lit8 v2, v2, 0x1

    .line 23818
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->access$28502(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23819
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->access$28602(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;I)I

    .line 23820
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 2

    .prologue
    .line 23789
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23790
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23791
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23792
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 2

    .prologue
    .line 23899
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23901
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23902
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 3

    .prologue
    .line 23796
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

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
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    .registers 2

    .prologue
    .line 23800
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 23868
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23865
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23832
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 23840
    :cond_7
    :goto_7
    return v0

    .line 23836
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23840
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23824
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23828
    :cond_6
    :goto_6
    return-object p0

    .line 23825
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23826
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23847
    const/4 v2, 0x0

    .line 23849
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 23854
    if-eqz v2, :cond_10

    .line 23855
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    .line 23858
    :cond_10
    return-object p0

    .line 23850
    :catch_11
    move-exception v1

    .line 23851
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-object v2, v0

    .line 23852
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 23854
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 23855
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    :cond_21
    throw v3
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
    .line 23773
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23773
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

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
    .line 23773
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23887
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 23889
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23895
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23896
    return-object p0

    .line 23892
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 23881
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23883
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23884
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23871
    if-nez p1, :cond_8

    .line 23872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23874
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 23876
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse$Builder;->bitField0_:I

    .line 23877
    return-object p0
.end method
