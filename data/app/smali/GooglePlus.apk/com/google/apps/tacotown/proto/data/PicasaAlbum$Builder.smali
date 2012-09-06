.class public final Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PicasaAlbum.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/PicasaAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/PicasaAlbum;",
        "Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/PicasaAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private ownerId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->ownerId_:Ljava/lang/Object;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 217
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 218
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 1

    .prologue
    .line 211
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->create()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 1

    .prologue
    .line 223
    new-instance v0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 221
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    .line 245
    .local v0, result:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 246
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 248
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->build()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 6

    .prologue
    .line 262
    new-instance v1, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;-><init>(Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;Lcom/google/apps/tacotown/proto/data/PicasaAlbum$1;)V

    .line 263
    .local v1, result:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 264
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 265
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 266
    or-int/lit8 v2, v2, 0x1

    .line 268
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->ownerId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->ownerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->access$302(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 270
    or-int/lit8 v2, v2, 0x2

    .line 272
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->access$402(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    #setter for: Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->access$502(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;I)I

    .line 274
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->ownerId_:Ljava/lang/Object;

    .line 229
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 231
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 232
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->clear()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->clear()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 3

    .prologue
    .line 236
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->create()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->clone()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->clone()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

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
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->clone()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 2

    .prologue
    .line 240
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 278
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 285
    :cond_6
    :goto_6
    return-object p0

    .line 279
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->hasOwnerId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 280
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->setOwnerId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    .line 282
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 298
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :sswitch_d
    return-object p0

    .line 310
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 311
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->ownerId_:Ljava/lang/Object;

    goto :goto_0

    .line 315
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 316
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 298
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
    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

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
    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 377
    if-nez p1, :cond_8

    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 380
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 381
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 383
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 341
    if-nez p1, :cond_8

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 344
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->bitField0_:I

    .line 345
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->ownerId_:Ljava/lang/Object;

    .line 347
    return-object p0
.end method
