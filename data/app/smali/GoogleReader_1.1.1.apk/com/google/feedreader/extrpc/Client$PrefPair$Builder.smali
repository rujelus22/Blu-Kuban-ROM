.class public final Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$PrefPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$PrefPair;",
        "Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16914
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 17068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 16915
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->maybeForceBuilderInitialization()V

    .line 16916
    return-void
.end method

.method static synthetic access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16909
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20800()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 1

    .prologue
    .line 16909
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16951
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    .line 16952
    .local v0, result:Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 16953
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 16956
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 1

    .prologue
    .line 16921
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16919
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3

    .prologue
    .line 16942
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    .line 16943
    .local v0, result:Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16944
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16946
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 6

    .prologue
    .line 16960
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$PrefPair;-><init>(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 16961
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 16962
    const/4 v2, 0x0

    .line 16963
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16964
    or-int/lit8 v2, v2, 0x1

    .line 16966
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$PrefPair;->access$21002(Lcom/google/feedreader/extrpc/Client$PrefPair;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16967
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 16968
    or-int/lit8 v1, v2, 0x2

    .line 16970
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$PrefPair;->access$21102(Lcom/google/feedreader/extrpc/Client$PrefPair;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16971
    #setter for: Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->access$21202(Lcom/google/feedreader/extrpc/Client$PrefPair;I)I

    .line 16972
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2

    .prologue
    .line 16925
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 16927
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 16928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 16929
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 16930
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clear()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clear()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2

    .prologue
    .line 17056
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17057
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 17059
    return-object p0
.end method

.method public clearValue()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2

    .prologue
    .line 17092
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17093
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 17095
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 3

    .prologue
    .line 16934
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

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
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2

    .prologue
    .line 16938
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16909
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17037
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 17038
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 17039
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17040
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 17043
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17073
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 17074
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 17075
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17076
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    move-object v2, v1

    .line 17079
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 17034
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 17070
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16987
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 16995
    :goto_8
    return v0

    .line 16991
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 16993
    goto :goto_8

    .line 16995
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 3
    .parameter

    .prologue
    .line 16976
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 16983
    :goto_7
    return-object v0

    .line 16977
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 16978
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    .line 16980
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 16981
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->setValue(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    :cond_22
    move-object v0, p0

    .line 16983
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 17004
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 17009
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17011
    :sswitch_d
    return-object p0

    .line 17016
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 17021
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 17004
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
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
    .line 16909
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16909
    check-cast p1, Lcom/google/feedreader/extrpc/Client$PrefPair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

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
    .line 16909
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17047
    if-nez p1, :cond_8

    .line 17048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17050
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17051
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 17053
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 17062
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17063
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->id_:Ljava/lang/Object;

    .line 17065
    return-void
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17083
    if-nez p1, :cond_8

    .line 17084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17086
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17087
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 17089
    return-object p0
.end method

.method setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 17098
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->bitField0_:I

    .line 17099
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->value_:Ljava/lang/Object;

    .line 17101
    return-void
.end method
