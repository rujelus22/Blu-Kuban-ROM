.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponseOrBuilder;"
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
    .line 25982
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 25983
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->maybeForceBuilderInitialization()V

    .line 25984
    return-void
.end method

.method static synthetic access$35900(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25977
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36000()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 1

    .prologue
    .line 25977
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26017
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    .line 26018
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26019
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 26022
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 1

    .prologue
    .line 25989
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .registers 3

    .prologue
    .line 26088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 26089
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26092
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25987
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 26155
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 26158
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26148
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26151
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26131
    if-nez p2, :cond_8

    .line 26132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26134
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26135
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26137
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 26141
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26144
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26121
    if-nez p1, :cond_8

    .line 26122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26124
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26125
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26127
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 5

    .prologue
    .line 26026
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 26027
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26028
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 26029
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26030
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26032
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36202(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;Ljava/util/List;)Ljava/util/List;

    .line 26033
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 25993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 25995
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 25996
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 26161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26162
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26164
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3

    .prologue
    .line 26000
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

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
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2

    .prologue
    .line 26004
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 26101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 26098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

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
    .line 26095
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

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
    .line 25977
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

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
    .line 25977
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26060
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26061
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 26066
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26068
    :sswitch_d
    return-object p0

    .line 26073
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 26074
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26075
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    goto :goto_0

    .line 26061
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 26037
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26048
    :cond_6
    :goto_6
    return-object p0

    .line 26038
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36200(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 26039
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 26040
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36200(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26041
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 26043
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36200(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26115
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26116
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26118
    return-object p0
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26105
    if-nez p2, :cond_8

    .line 26106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26108
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26109
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26111
    return-object p0
.end method
