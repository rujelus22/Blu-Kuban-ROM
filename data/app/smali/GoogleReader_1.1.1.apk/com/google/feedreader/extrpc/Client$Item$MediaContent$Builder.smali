.class public final Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
        "Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5009
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5010
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->maybeForceBuilderInitialization()V

    .line 5011
    return-void
.end method

.method static synthetic access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5004
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 1

    .prologue
    .line 5004
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5046
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    .line 5047
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5048
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 5051
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 1

    .prologue
    .line 5016
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5014
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3

    .prologue
    .line 5037
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    .line 5038
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5039
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5041
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 6

    .prologue
    .line 5055
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;-><init>(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 5056
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5057
    const/4 v2, 0x0

    .line 5058
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5059
    or-int/lit8 v2, v2, 0x1

    .line 5061
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->access$6302(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5062
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 5063
    or-int/lit8 v1, v2, 0x2

    .line 5065
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->access$6402(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5066
    #setter for: Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->access$6502(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;I)I

    .line 5067
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2

    .prologue
    .line 5020
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5022
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5023
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5024
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5025
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDescription()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2

    .prologue
    .line 5183
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5184
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5186
    return-object p0
.end method

.method public clearUrl()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2

    .prologue
    .line 5147
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5148
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5150
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 3

    .prologue
    .line 5029
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

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
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2

    .prologue
    .line 5033
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5004
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5164
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5165
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 5166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5167
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    move-object v2, v1

    .line 5170
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

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5128
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5129
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 5130
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5131
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    move-object v2, v1

    .line 5134
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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 5161
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5125
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 5082
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5084
    const/4 v0, 0x0

    .line 5086
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 5071
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 5078
    :goto_7
    return-object v0

    .line 5072
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5073
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    .line 5075
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5076
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    :cond_22
    move-object v0, p0

    .line 5078
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5094
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5095
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 5100
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5102
    :sswitch_d
    return-object p0

    .line 5107
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 5112
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 5095
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
    .line 5004
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5004
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

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
    .line 5004
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5174
    if-nez p1, :cond_8

    .line 5175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5177
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5178
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5180
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 5189
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5190
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->description_:Ljava/lang/Object;

    .line 5192
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5138
    if-nez p1, :cond_8

    .line 5139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5141
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5142
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5144
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 5153
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->bitField0_:I

    .line 5154
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->url_:Ljava/lang/Object;

    .line 5156
    return-void
.end method
