.class public final Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34986
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35089
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 34987
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->maybeForceBuilderInitialization()V

    .line 34988
    return-void
.end method

.method static synthetic access$48400(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34981
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$48500()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 1

    .prologue
    .line 34981
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35021
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    .line 35022
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 35023
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 35026
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 1

    .prologue
    .line 34993
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIdIsMutable()V
    .registers 3

    .prologue
    .line 35091
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 35092
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 35093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    .line 35095
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34991
    return-void
.end method


# virtual methods
.method public addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35117
    if-nez p1, :cond_8

    .line 35118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35120
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->ensureActivityIdIsMutable()V

    .line 35121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 35123
    return-object p0
.end method

.method public addAllActivityId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 35127
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->ensureActivityIdIsMutable()V

    .line 35128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35130
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 3

    .prologue
    .line 35012
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    .line 35013
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35014
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35016
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 5

    .prologue
    .line 35030
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 35031
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    .line 35032
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 35033
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 35035
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    .line 35037
    :cond_1e
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->access$48702(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 35038
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 2

    .prologue
    .line 34997
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34998
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 34999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    .line 35000
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 2

    .prologue
    .line 35133
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 35134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    .line 35136
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 3

    .prologue
    .line 35004
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

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
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 35104
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 35101
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34981
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;
    .registers 2

    .prologue
    .line 35008
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 35057
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
    .line 34981
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34981
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

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
    .line 34981
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35065
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 35066
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 35071
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35073
    :sswitch_d
    return-object p0

    .line 35078
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->ensureActivityIdIsMutable()V

    .line 35079
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 35066
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 35042
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35053
    :cond_6
    :goto_6
    return-object p0

    .line 35043
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->access$48700(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 35045
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->access$48700(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 35046
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 35048
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->ensureActivityIdIsMutable()V

    .line 35049
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;->access$48700(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivityId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35108
    if-nez p2, :cond_8

    .line 35109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35111
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->ensureActivityIdIsMutable()V

    .line 35112
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadResponse$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35114
    return-object p0
.end method
