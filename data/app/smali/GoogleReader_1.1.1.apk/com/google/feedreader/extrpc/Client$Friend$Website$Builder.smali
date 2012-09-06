.class public final Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Friend$Website;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
        "Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private title_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10942
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 11096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 10943
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->maybeForceBuilderInitialization()V

    .line 10944
    return-void
.end method

.method static synthetic access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10937
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 1

    .prologue
    .line 10937
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10979
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    .line 10980
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10981
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10984
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 1

    .prologue
    .line 10949
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10947
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3

    .prologue
    .line 10970
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    .line 10971
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10972
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10974
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->build()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 6

    .prologue
    .line 10988
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;-><init>(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 10989
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 10990
    const/4 v2, 0x0

    .line 10991
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10992
    or-int/lit8 v2, v2, 0x1

    .line 10994
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->access$13502(Lcom/google/feedreader/extrpc/Client$Friend$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10995
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 10996
    or-int/lit8 v1, v2, 0x2

    .line 10998
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->access$13602(Lcom/google/feedreader/extrpc/Client$Friend$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10999
    #setter for: Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->access$13702(Lcom/google/feedreader/extrpc/Client$Friend$Website;I)I

    .line 11000
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2

    .prologue
    .line 10953
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 10955
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 10956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 10957
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 10958
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2

    .prologue
    .line 11084
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11085
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 11087
    return-object p0
.end method

.method public clearUrl()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2

    .prologue
    .line 11120
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11121
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 11123
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 3

    .prologue
    .line 10962
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

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
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2

    .prologue
    .line 10966
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10937
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11065
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 11066
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 11067
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11068
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 11071
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
    .line 11101
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 11102
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 11103
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11104
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    move-object v2, v1

    .line 11107
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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 11062
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 11098
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

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

    .line 11015
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 11023
    :goto_8
    return v0

    .line 11019
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 11021
    goto :goto_8

    .line 11023
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 3
    .parameter

    .prologue
    .line 11004
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 11011
    :goto_7
    return-object v0

    .line 11005
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 11006
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    .line 11008
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11009
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    :cond_22
    move-object v0, p0

    .line 11011
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11031
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11032
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 11037
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11039
    :sswitch_d
    return-object p0

    .line 11044
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11045
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 11049
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11050
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 11032
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
    .line 10937
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10937
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Friend$Website;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

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
    .line 10937
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11075
    if-nez p1, :cond_8

    .line 11076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11078
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11079
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 11081
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 11090
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11091
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->title_:Ljava/lang/Object;

    .line 11093
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11111
    if-nez p1, :cond_8

    .line 11112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11114
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11115
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 11117
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 11126
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->bitField0_:I

    .line 11127
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->url_:Ljava/lang/Object;

    .line 11129
    return-void
.end method
