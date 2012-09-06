.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private personId_:Ljava/lang/Object;

.field private photoId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27163
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27164
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->maybeForceBuilderInitialization()V

    .line 27165
    return-void
.end method

.method static synthetic access$36400()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 27158
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 27170
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27168
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 3

    .prologue
    .line 27193
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    .line 27194
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27195
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27197
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 6

    .prologue
    .line 27211
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 27212
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27213
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27214
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27215
    or-int/lit8 v2, v2, 0x1

    .line 27217
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$36602(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27218
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 27219
    or-int/lit8 v2, v2, 0x2

    .line 27221
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$36702(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27222
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 27223
    or-int/lit8 v2, v2, 0x4

    .line 27225
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$36802(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27226
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$36902(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;I)I

    .line 27227
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27174
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27176
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27180
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27181
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27347
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27348
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27350
    return-object p0
.end method

.method public clearPersonId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27311
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27312
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27314
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27384
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27386
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3

    .prologue
    .line 27185
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

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
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27328
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27329
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27330
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27331
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27334
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27158
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 27189
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27292
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27293
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27294
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27295
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27298
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

.method public getPhotoId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27365
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27366
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27367
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27370
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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 27325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

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

.method public hasPersonId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27289
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 27361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 27245
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
    .line 27158
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27158
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

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
    .line 27158
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 27254
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 27259
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27261
    :sswitch_d
    return-object p0

    .line 27266
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    goto :goto_0

    .line 27271
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 27276
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27277
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    goto :goto_0

    .line 27254
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27231
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27241
    :cond_6
    :goto_6
    return-object p0

    .line 27232
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27233
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 27235
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27236
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 27238
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27239
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setPhotoId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    goto :goto_6
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27338
    if-nez p1, :cond_8

    .line 27339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27341
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27342
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 27344
    return-object p0
.end method

.method public setPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27302
    if-nez p1, :cond_8

    .line 27303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27305
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27306
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 27308
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27374
    if-nez p1, :cond_8

    .line 27375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27377
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 27378
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 27380
    return-object p0
.end method
