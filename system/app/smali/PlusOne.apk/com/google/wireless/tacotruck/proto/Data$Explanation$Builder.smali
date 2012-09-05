.class public final Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Explanation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
        "Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2301
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2174
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->maybeForceBuilderInitialization()V

    .line 2175
    return-void
.end method

.method static synthetic access$2300()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2168
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2180
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2178
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    .line 2204
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2205
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2207
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 6

    .prologue
    .line 2221
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 2222
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2223
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2224
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2225
    or-int/lit8 v2, v2, 0x1

    .line 2227
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$2502(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2228
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2229
    or-int/lit8 v2, v2, 0x2

    .line 2231
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$2602(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2233
    or-int/lit8 v2, v2, 0x4

    .line 2235
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$2702(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->access$2802(Lcom/google/wireless/tacotruck/proto/Data$Explanation;I)I

    .line 2237
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2184
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2185
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2186
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2188
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2190
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2191
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2385
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2386
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2388
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2350
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2352
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2319
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2321
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3

    .prologue
    .line 2195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

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
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 2

    .prologue
    .line 2199
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2367
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2368
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2369
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2372
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2331
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2333
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2336
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 2327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2303
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 2168
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

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
    .line 2168
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2264
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 2269
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2271
    :sswitch_d
    return-object p0

    .line 2276
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2277
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v2

    .line 2278
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    if-eqz v2, :cond_0

    .line 2279
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2280
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_0

    .line 2285
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2286
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 2290
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2291
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 2264
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2241
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2251
    :cond_6
    :goto_6
    return-object p0

    .line 2242
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2243
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 2245
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2246
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 2248
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2249
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    goto :goto_6
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2376
    if-nez p1, :cond_8

    .line 2377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2379
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2380
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->displayName_:Ljava/lang/Object;

    .line 2382
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2340
    if-nez p1, :cond_8

    .line 2341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2343
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2344
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->id_:Ljava/lang/Object;

    .line 2346
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2309
    if-nez p1, :cond_8

    .line 2310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2312
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->bitField0_:I

    .line 2313
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2315
    return-object p0
.end method
