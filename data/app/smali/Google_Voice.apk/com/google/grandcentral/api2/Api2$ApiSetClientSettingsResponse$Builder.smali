.class public final Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35889
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35805
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 35806
    return-void
.end method

.method static synthetic access$43000()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 35799
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 35811
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35809
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    .registers 3

    .prologue
    .line 35830
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    .line 35831
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35832
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35834
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    .registers 6

    .prologue
    .line 35838
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 35839
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35840
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35841
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35842
    or-int/lit8 v2, v2, 0x1

    .line 35844
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->access$43202(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35845
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->access$43302(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;I)I

    .line 35846
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 35815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35816
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35817
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35818
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 35925
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35927
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35928
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 35822
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

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
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    .registers 2

    .prologue
    .line 35826
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35799
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 35894
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35891
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

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

    .line 35858
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 35866
    :cond_7
    :goto_7
    return v0

    .line 35862
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35866
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 35850
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35854
    :cond_6
    :goto_6
    return-object p0

    .line 35851
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35852
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35873
    const/4 v2, 0x0

    .line 35875
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 35880
    if-eqz v2, :cond_10

    .line 35881
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    .line 35884
    :cond_10
    return-object p0

    .line 35876
    :catch_11
    move-exception v1

    .line 35877
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    move-object v2, v0

    .line 35878
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 35880
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 35881
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

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
    .line 35799
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35799
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

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
    .line 35799
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35913
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 35915
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35921
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35922
    return-object p0

    .line 35918
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35907
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35909
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35910
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35897
    if-nez p1, :cond_8

    .line 35898
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35900
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35902
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsResponse$Builder;->bitField0_:I

    .line 35903
    return-object p0
.end method
