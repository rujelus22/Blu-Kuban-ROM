.class public final Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private result_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26900
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26994
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26901
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->maybeForceBuilderInitialization()V

    .line 26902
    return-void
.end method

.method static synthetic access$32100()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 26895
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 26907
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26905
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3

    .prologue
    .line 26928
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    .line 26929
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26930
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26932
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 6

    .prologue
    .line 26936
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 26937
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 26938
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26939
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26940
    or-int/lit8 v2, v2, 0x1

    .line 26942
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->access$32302(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26943
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26944
    or-int/lit8 v2, v2, 0x2

    .line 26946
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->result_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->access$32402(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;I)I

    .line 26947
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->access$32502(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;I)I

    .line 26948
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 26911
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26912
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26913
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 26914
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->result_:I

    .line 26915
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 26916
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResult()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 27051
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27052
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->result_:I

    .line 27054
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 27030
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27032
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27033
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 3

    .prologue
    .line 26920
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

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
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2

    .prologue
    .line 26924
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26895
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 27042
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->result_:I

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 26999
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasResult()Z
    .registers 3

    .prologue
    .line 27039
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

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

    .line 26996
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

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

    .line 26963
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 26971
    :cond_7
    :goto_7
    return v0

    .line 26967
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26971
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 26952
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26959
    :cond_6
    :goto_6
    return-object p0

    .line 26953
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26954
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    .line 26956
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26957
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->setResult(I)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26978
    const/4 v2, 0x0

    .line 26980
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 26985
    if-eqz v2, :cond_10

    .line 26986
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    .line 26989
    :cond_10
    return-object p0

    .line 26981
    :catch_11
    move-exception v1

    .line 26982
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-object v2, v0

    .line 26983
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 26985
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 26986
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

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
    .line 26895
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26895
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

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
    .line 26895
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27018
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 27020
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27026
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27027
    return-object p0

    .line 27023
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setResult(I)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27045
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27046
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->result_:I

    .line 27048
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 27012
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27014
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27015
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27002
    if-nez p1, :cond_8

    .line 27003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27005
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27007
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->bitField0_:I

    .line 27008
    return-object p0
.end method
