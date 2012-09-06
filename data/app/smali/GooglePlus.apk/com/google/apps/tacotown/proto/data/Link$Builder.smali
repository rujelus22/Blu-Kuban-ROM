.class public final Lcom/google/apps/tacotown/proto/data/Link$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Link.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Link;",
        "Lcom/google/apps/tacotown/proto/data/Link$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/LinkOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clickUrl_:Ljava/lang/Object;

.field private picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

.field private type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->url_:Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 499
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clickUrl_:Ljava/lang/Object;

    .line 294
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->maybeForceBuilderInitialization()V

    .line 295
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 1

    .prologue
    .line 288
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->create()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 1

    .prologue
    .line 300
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Link$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 298
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    .line 326
    .local v0, result:Lcom/google/apps/tacotown/proto/data/Link;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 327
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 329
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->build()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 6

    .prologue
    .line 343
    new-instance v1, Lcom/google/apps/tacotown/proto/data/Link;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/Link;-><init>(Lcom/google/apps/tacotown/proto/data/Link$Builder;Lcom/google/apps/tacotown/proto/data/Link$1;)V

    .line 344
    .local v1, result:Lcom/google/apps/tacotown/proto/data/Link;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 345
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 346
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 347
    or-int/lit8 v2, v2, 0x1

    .line 349
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Link;->access$302(Lcom/google/apps/tacotown/proto/data/Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 351
    or-int/lit8 v2, v2, 0x2

    .line 353
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    #setter for: Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Link;->access$402(Lcom/google/apps/tacotown/proto/data/Link;Lcom/google/apps/tacotown/proto/data/Link$LinkType;)Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 354
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 355
    or-int/lit8 v2, v2, 0x4

    .line 357
    :cond_28
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    #setter for: Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Link;->access$502(Lcom/google/apps/tacotown/proto/data/Link;Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 358
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 359
    or-int/lit8 v2, v2, 0x8

    .line 361
    :cond_35
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clickUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Link;->access$602(Lcom/google/apps/tacotown/proto/data/Link;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    #setter for: Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/Link;->access$702(Lcom/google/apps/tacotown/proto/data/Link;I)I

    .line 363
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->url_:Ljava/lang/Object;

    .line 306
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 307
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 308
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 309
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 310
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clickUrl_:Ljava/lang/Object;

    .line 312
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3

    .prologue
    .line 317
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->create()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Link$Builder;

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
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 2

    .prologue
    .line 321
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaAlbum()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    return-object v0
.end method

.method public hasPicasaAlbum()Z
    .registers 3

    .prologue
    .line 501
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

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
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 367
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 380
    :cond_6
    :goto_6
    return-object p0

    .line 368
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 369
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->setUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    .line 371
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 372
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->getType()Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->setType(Lcom/google/apps/tacotown/proto/data/Link$LinkType;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    .line 374
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->hasPicasaAlbum()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 375
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->getPicasaAlbum()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergePicasaAlbum(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    .line 377
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->hasClickUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 378
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Link;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->setClickUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 393
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 398
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    :sswitch_d
    return-object p0

    .line 405
    :sswitch_e
    iget v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 406
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 410
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 411
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->valueOf(I)Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    move-result-object v3

    .line 412
    .local v3, value:Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    if-eqz v3, :cond_0

    .line 413
    iget v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 414
    iput-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    goto :goto_0

    .line 419
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    :sswitch_2e
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->newBuilder()Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v1

    .line 420
    .local v1, subBuilder:Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->hasPicasaAlbum()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 421
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->getPicasaAlbum()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    .line 423
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 424
    invoke-virtual {v1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->setPicasaAlbum(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    goto :goto_0

    .line 428
    .end local v1           #subBuilder:Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;
    :sswitch_4a
    iget v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 429
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clickUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 393
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_4a
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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/google/apps/tacotown/proto/data/Link;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

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
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePicasaAlbum(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 523
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 525
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->newBuilder(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 531
    :goto_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 532
    return-object p0

    .line 528
    :cond_26
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    goto :goto_1f
.end method

.method public setClickUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 557
    if-nez p1, :cond_8

    .line 558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 560
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 561
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->clickUrl_:Ljava/lang/Object;

    .line 563
    return-object p0
.end method

.method public setPicasaAlbum(Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 507
    if-nez p1, :cond_8

    .line 508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 510
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 512
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 513
    return-object p0
.end method

.method public setType(Lcom/google/apps/tacotown/proto/data/Link$LinkType;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 483
    if-nez p1, :cond_8

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 487
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 489
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 454
    if-nez p1, :cond_8

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->bitField0_:I

    .line 458
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link$Builder;->url_:Ljava/lang/Object;

    .line 460
    return-object p0
.end method
