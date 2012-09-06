.class public final Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
        "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UserBundle$FeedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8152
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->maybeForceBuilderInitialization()V

    .line 8153
    return-void
.end method

.method static synthetic access$9600(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8146
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 1

    .prologue
    .line 8146
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8188
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    .line 8189
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 8190
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 8193
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 1

    .prologue
    .line 8158
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8156
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 3

    .prologue
    .line 8179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    .line 8180
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8181
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8183
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 6

    .prologue
    .line 8197
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 8198
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8199
    const/4 v2, 0x0

    .line 8200
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8201
    or-int/lit8 v2, v2, 0x1

    .line 8203
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->access$9902(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8204
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 8205
    or-int/lit8 v1, v2, 0x2

    .line 8207
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->title_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->access$10002(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8208
    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->access$10102(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;I)I

    .line 8209
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2

    .prologue
    .line 8162
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8164
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8166
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8167
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2

    .prologue
    .line 8293
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8294
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8296
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 2

    .prologue
    .line 8329
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8330
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8332
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 3

    .prologue
    .line 8171
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

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
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
    .registers 2

    .prologue
    .line 8175
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8146
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8274
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8275
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 8276
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8277
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 8280
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

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8310
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8311
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 8312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8313
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 8316
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

    .line 8271
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 8307
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

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

    .line 8224
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 8232
    :goto_8
    return v0

    .line 8228
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 8230
    goto :goto_8

    .line 8232
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 3
    .parameter

    .prologue
    .line 8213
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 8220
    :goto_7
    return-object v0

    .line 8214
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8215
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    .line 8217
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8218
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    :cond_22
    move-object v0, p0

    .line 8220
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8240
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8241
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 8246
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8248
    :sswitch_d
    return-object p0

    .line 8253
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8254
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 8258
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8259
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 8241
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
    .line 8146
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8146
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

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
    .line 8146
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8284
    if-nez p1, :cond_8

    .line 8285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8287
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8288
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8290
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 8299
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8300
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->id_:Ljava/lang/Object;

    .line 8302
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8320
    if-nez p1, :cond_8

    .line 8321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8323
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8324
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8326
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 8335
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->bitField0_:I

    .line 8336
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserBundle$Feed$Builder;->title_:Ljava/lang/Object;

    .line 8338
    return-void
.end method
