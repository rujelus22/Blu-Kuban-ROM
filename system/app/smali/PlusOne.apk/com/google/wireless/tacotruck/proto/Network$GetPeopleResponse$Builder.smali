.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9901
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10004
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 9902
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->maybeForceBuilderInitialization()V

    .line 9903
    return-void
.end method

.method static synthetic access$13000(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9896
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13100()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 1

    .prologue
    .line 9896
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    .line 9937
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9938
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 9941
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 1

    .prologue
    .line 9908
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .registers 3

    .prologue
    .line 10007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 10008
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10011
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9906
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 10074
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10077
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10067
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10068
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10070
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10050
    if-nez p2, :cond_8

    .line 10051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10053
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10056
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10060
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10061
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10063
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10040
    if-nez p1, :cond_8

    .line 10041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10043
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10046
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 5

    .prologue
    .line 9945
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 9946
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 9947
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 9948
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 9949
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 9951
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13302(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;Ljava/util/List;)Ljava/util/List;

    .line 9952
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 2

    .prologue
    .line 9912
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 9914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 9915
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 2

    .prologue
    .line 10080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10081
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10083
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3

    .prologue
    .line 9919
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

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
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 2

    .prologue
    .line 9923
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 10020
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 10017
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10014
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 9896
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

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
    .line 9896
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9979
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9980
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 9985
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9987
    :sswitch_d
    return-object p0

    .line 9992
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 9993
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9994
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    goto :goto_0

    .line 9980
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9956
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9967
    :cond_6
    :goto_6
    return-object p0

    .line 9957
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9958
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 9959
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 9960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 9962
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 9963
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10034
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10037
    return-object p0
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10024
    if-nez p2, :cond_8

    .line 10025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10027
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10030
    return-object p0
.end method
