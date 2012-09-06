.class public final Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusPhotoItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotoItem$PlusPhotoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusPhoto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

.field public static final plusPhoto:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private isVideo_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private onepickMediaId_:Ljava/lang/Object;

.field private originalContentUrl_:Ljava/lang/Object;

.field private originalLightboxPhotoId_:Ljava/lang/Object;

.field private originalMediaContainerUrl_:Ljava/lang/Object;

.field private originalMediaPlayerUrl_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private photoId_:Ljava/lang/Object;

.field private thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1323
    new-instance v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    .line 1324
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->initFields()V

    .line 1332
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a5c095

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->plusPhoto:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 436
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedIsInitialized:B

    .line 492
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedSerializedSize:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;Lcom/google/protos/embeds/PlusPhotoItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;-><init>(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 436
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedIsInitialized:B

    .line 492
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedSerializedSize:I

    .line 70
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    .line 146
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 147
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 149
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    .line 152
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    .line 380
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 381
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 383
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    .line 386
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOnepickMediaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    .line 412
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 413
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 415
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    .line 418
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOriginalContentUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    .line 348
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 349
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 351
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    .line 354
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOriginalLightboxPhotoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 316
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 317
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 319
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 322
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOriginalMediaContainerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 284
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 285
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 287
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 290
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOriginalMediaPlayerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 252
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 253
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 255
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 258
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 114
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 115
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 117
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 120
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getPhotoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    .line 178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    .line 184
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    .line 220
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 221
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 223
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    .line 226
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 423
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    .line 426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 1

    .prologue
    .line 624
    #calls: Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->create()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->access$100()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 627
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->newBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    .line 132
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 133
    check-cast v1, Ljava/lang/String;

    .line 141
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 135
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 137
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 139
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->albumId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 141
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    return-object v0
.end method

.method public getIsVideo()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    .line 366
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 367
    check-cast v1, Ljava/lang/String;

    .line 375
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 369
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 371
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 373
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 375
    goto :goto_8
.end method

.method public getOnepickMediaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 397
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    .line 398
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 399
    check-cast v1, Ljava/lang/String;

    .line 407
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 403
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 405
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->onepickMediaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 407
    goto :goto_8
.end method

.method public getOriginalContentUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    .line 334
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 335
    check-cast v1, Ljava/lang/String;

    .line 343
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 339
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 341
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalContentUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 343
    goto :goto_8
.end method

.method public getOriginalLightboxPhotoId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 301
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    .line 302
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 303
    check-cast v1, Ljava/lang/String;

    .line 311
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 305
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 307
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 309
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalLightboxPhotoId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 311
    goto :goto_8
.end method

.method public getOriginalMediaContainerUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 269
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    .line 270
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 271
    check-cast v1, Ljava/lang/String;

    .line 279
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 275
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 277
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaContainerUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 279
    goto :goto_8
.end method

.method public getOriginalMediaPlayerUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 237
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    .line 238
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 239
    check-cast v1, Ljava/lang/String;

    .line 247
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 241
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 243
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 245
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->originalMediaPlayerUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 247
    goto :goto_8
.end method

.method public getOwnerObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 100
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 101
    check-cast v1, Ljava/lang/String;

    .line 109
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 103
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 105
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 107
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->ownerObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 109
    goto :goto_8
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    .line 164
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 165
    check-cast v1, Ljava/lang/String;

    .line 173
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 167
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 169
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 171
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->photoId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 173
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 494
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedSerializedSize:I

    .line 495
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 547
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 497
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 498
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 499
    iget-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 502
    :cond_1a
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 503
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 506
    :cond_29
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 507
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 510
    :cond_39
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 511
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 514
    :cond_48
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 515
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 518
    :cond_58
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 519
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 522
    :cond_6a
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 523
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 526
    :cond_7c
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8d

    .line 527
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaContainerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 530
    :cond_8d
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a0

    .line 531
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalLightboxPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 534
    :cond_a0
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b3

    .line 535
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 538
    :cond_b3
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 539
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 542
    :cond_c6
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d9

    .line 543
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOnepickMediaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 546
    :cond_d9
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedSerializedSize:I

    move v1, v0

    .line 547
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    .line 206
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 207
    check-cast v1, Ljava/lang/String;

    .line 215
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 211
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 213
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 215
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

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

.method public hasIsVideo()Z
    .registers 3

    .prologue
    .line 192
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 362
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOnepickMediaId()Z
    .registers 3

    .prologue
    .line 394
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOriginalContentUrl()Z
    .registers 3

    .prologue
    .line 330
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOriginalLightboxPhotoId()Z
    .registers 3

    .prologue
    .line 298
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOriginalMediaContainerUrl()Z
    .registers 3

    .prologue
    .line 266
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOriginalMediaPlayerUrl()Z
    .registers 3

    .prologue
    .line 234
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOwnerObfuscatedId()Z
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

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
    .line 160
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

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

.method public hasThumbnail()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 86
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 202
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedIsInitialized:B

    .line 439
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 448
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 439
    goto :goto_9

    .line 441
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 442
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getThumbnail()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 443
    iput-byte v2, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedIsInitialized:B

    move v1, v2

    .line 444
    goto :goto_9

    .line 447
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->newBuilderForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 2

    .prologue
    .line 625
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->newBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->toBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    .registers 2

    .prologue
    .line 629
    invoke-static {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->newBuilder(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getSerializedSize()I

    .line 454
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 455
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->thumbnail_:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 457
    :cond_13
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 458
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 460
    :cond_20
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 461
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 463
    :cond_2e
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 464
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 466
    :cond_3b
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 467
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isVideo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 469
    :cond_49
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 470
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 472
    :cond_59
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 473
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 475
    :cond_69
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_78

    .line 476
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalMediaContainerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 478
    :cond_78
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_89

    .line 479
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalLightboxPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 481
    :cond_89
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9a

    .line 482
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOriginalContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 484
    :cond_9a
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 485
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 487
    :cond_ab
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_bc

    .line 488
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->getOnepickMediaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 490
    :cond_bc
    return-void
.end method
