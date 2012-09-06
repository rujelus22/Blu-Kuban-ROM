.class public final Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
        "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25106
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25107
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->maybeForceBuilderInitialization()V

    .line 25108
    return-void
.end method

.method static synthetic access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25101
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31000()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 1

    .prologue
    .line 25101
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25143
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    .line 25144
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 25145
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 25148
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 1

    .prologue
    .line 25113
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25111
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3

    .prologue
    .line 25134
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    .line 25135
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25136
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25138
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->build()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 6

    .prologue
    .line 25152
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;-><init>(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 25153
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25154
    const/4 v2, 0x0

    .line 25155
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25156
    or-int/lit8 v2, v2, 0x1

    .line 25158
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->access$31202(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25159
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 25160
    or-int/lit8 v1, v2, 0x2

    .line 25162
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->access$31302(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25163
    #setter for: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->access$31402(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;I)I

    .line 25164
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2

    .prologue
    .line 25117
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25119
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25121
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25122
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKey()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2

    .prologue
    .line 25248
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25249
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25251
    return-object p0
.end method

.method public clearValue()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2

    .prologue
    .line 25284
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25285
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25287
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 3

    .prologue
    .line 25126
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

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
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2

    .prologue
    .line 25130
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25101
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25229
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25230
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 25231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25232
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    move-object v2, v1

    .line 25235
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
    .line 25265
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25266
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 25267
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25268
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    move-object v2, v1

    .line 25271
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

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 25226
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

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
    .line 25262
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

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

    .line 25179
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->hasKey()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 25187
    :goto_8
    return v0

    .line 25183
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 25185
    goto :goto_8

    .line 25187
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 3
    .parameter

    .prologue
    .line 25168
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 25175
    :goto_7
    return-object v0

    .line 25169
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 25170
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    .line 25172
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 25173
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    :cond_22
    move-object v0, p0

    .line 25175
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 25196
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 25201
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25203
    :sswitch_d
    return-object p0

    .line 25208
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 25213
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 25196
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
    .line 25101
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25101
    check-cast p1, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

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
    .line 25101
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25239
    if-nez p1, :cond_8

    .line 25240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25242
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25243
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25245
    return-object p0
.end method

.method setKey(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 25254
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25255
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->key_:Ljava/lang/Object;

    .line 25257
    return-void
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25275
    if-nez p1, :cond_8

    .line 25276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25278
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25279
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25281
    return-object p0
.end method

.method setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 25290
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->bitField0_:I

    .line 25291
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->value_:Ljava/lang/Object;

    .line 25293
    return-void
.end method
