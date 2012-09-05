.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10014
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10015
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->maybeForceBuilderInitialization()V

    .line 10016
    return-void
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 1

    .prologue
    .line 10021
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResultIsMutable()V
    .registers 3

    .prologue
    .line 10120
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 10121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10122
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    .line 10124
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10019
    return-void
.end method


# virtual methods
.method public addAllResult(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 10187
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10188
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10190
    return-object p0
.end method

.method public addResult(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10180
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10181
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10183
    return-object p0
.end method

.method public addResult(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10163
    if-nez p2, :cond_8

    .line 10164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10166
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10167
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10169
    return-object p0
.end method

.method public addResult(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10173
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10174
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10176
    return-object p0
.end method

.method public addResult(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10153
    if-nez p1, :cond_8

    .line 10154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10156
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10157
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10159
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
    .registers 5

    .prologue
    .line 10058
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 10059
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    .line 10060
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 10061
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10062
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    .line 10064
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->access$13502(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;Ljava/util/List;)Ljava/util/List;

    .line 10065
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 2

    .prologue
    .line 10025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10026
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10027
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    .line 10028
    return-object p0
.end method

.method public clearResult()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 2

    .prologue
    .line 10193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10194
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    .line 10196
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 3

    .prologue
    .line 10032
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

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
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10009
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;
    .registers 2

    .prologue
    .line 10036
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResult(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 3
    .parameter "index"

    .prologue
    .line 10133
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    return-object v0
.end method

.method public getResultCount()I
    .registers 2

    .prologue
    .line 10130
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10127
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

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
    .line 10009
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

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
    .line 10009
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10093
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 10098
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10100
    :sswitch_d
    return-object p0

    .line 10105
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    .line 10106
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10107
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->addResult(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;

    goto :goto_0

    .line 10093
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10069
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10080
    :cond_6
    :goto_6
    return-object p0

    .line 10070
    :cond_7
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->access$13500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10071
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 10072
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->access$13500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    .line 10073
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 10075
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10076
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->result_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;->access$13500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setResult(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10147
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10148
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10150
    return-object p0
.end method

.method public setResult(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10137
    if-nez p2, :cond_8

    .line 10138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10140
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->ensureResultIsMutable()V

    .line 10141
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResponse$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10143
    return-object p0
.end method
