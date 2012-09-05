.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 47336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47372
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47153
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 47154
    return-void
.end method

.method static synthetic access$66100()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 47147
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 47159
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47157
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 3

    .prologue
    .line 47184
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    .line 47185
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 47186
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 47188
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 6

    .prologue
    .line 47202
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 47203
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47204
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 47205
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 47206
    or-int/lit8 v2, v2, 0x1

    .line 47208
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$66302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J

    .line 47209
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 47210
    or-int/lit8 v2, v2, 0x2

    .line 47212
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$66402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J

    .line 47213
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 47214
    or-int/lit8 v2, v2, 0x4

    .line 47216
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$66502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47217
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 47218
    or-int/lit8 v2, v2, 0x8

    .line 47220
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$66602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47221
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->access$66702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;I)I

    .line 47222
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 47163
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47164
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 47165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47166
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 47167
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47170
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47171
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47172
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 47360
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47361
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47363
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 47329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 47332
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 47308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 47311
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 47408
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47411
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 47176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

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
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 2

    .prologue
    .line 47180
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 47341
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47342
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 47343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 47344
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47347
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

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 47320
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 47299
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 47377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 47338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 47317
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47296
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 47374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 47147
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

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
    .line 47147
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 47252
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 47257
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47259
    :sswitch_d
    return-object p0

    .line 47264
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    goto :goto_0

    .line 47269
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47270
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 47274
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 47275
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 47276
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 47278
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 47279
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    goto :goto_0

    .line 47283
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47284
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 47252
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 47226
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 47239
    :cond_6
    :goto_6
    return-object p0

    .line 47227
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 47228
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 47230
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 47231
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 47233
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 47234
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    .line 47236
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47237
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 47396
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 47398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47404
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47405
    return-object p0

    .line 47401
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47351
    if-nez p1, :cond_8

    .line 47352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47354
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47355
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 47357
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 47323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47324
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->ownerGaiaId_:J

    .line 47326
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 47302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47303
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoId_:J

    .line 47305
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 47390
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47392
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47393
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47380
    if-nez p1, :cond_8

    .line 47381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47383
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47385
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->bitField0_:I

    .line 47386
    return-object p0
.end method
