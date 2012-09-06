.class public final Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ImageObjectItem.java"

# interfaces
.implements Lcom/google/protos/embeds/ImageObjectItem$ImageObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/ImageObjectItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

.field public static final imageObject:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/ImageObjectItem$ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

.field private bitField0_:I

.field private contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

.field private contentUrl_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private heightPx_:I

.field private height_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

.field private sourceDomain_:Ljava/lang/Object;

.field private thumbnailUrl_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private widthPx_:I

.field private width_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1452
    new-instance v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->defaultInstance:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    .line 1453
    sget-object v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->defaultInstance:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    invoke-direct {v0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->initFields()V

    .line 1461
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a42a50

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageObject:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 444
    iput-byte v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedIsInitialized:B

    .line 506
    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedSerializedSize:I

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;Lcom/google/protos/embeds/ImageObjectItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;-><init>(Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 444
    iput-byte v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedIsInitialized:B

    .line 506
    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedSerializedSize:I

    .line 78
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object p1
.end method

.method private getContentUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    .line 376
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 377
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 379
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    .line 382
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

.method public static getDefaultInstance()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->defaultInstance:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    .line 176
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 177
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 179
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    .line 182
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

.method private getHeightBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 323
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    .line 324
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 325
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 327
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    .line 330
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

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    .line 208
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 209
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 211
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    .line 214
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    .line 144
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 145
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 147
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    .line 150
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

.method private getSourceDomainBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 407
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    .line 408
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 409
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 411
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    .line 414
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

.method private getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    .line 240
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 241
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    .line 246
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
    .line 111
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    .line 112
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 113
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 115
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    .line 118
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

.method private getWidthBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    .line 292
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 293
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 295
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    .line 298
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 435
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    .line 438
    iput v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I

    .line 439
    iput v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I

    .line 440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    .line 442
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 443
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 1

    .prologue
    .line 646
    #calls: Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->create()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->access$100()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 649
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;->mergeFrom(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 361
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    .line 362
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 363
    check-cast v1, Ljava/lang/String;

    .line 371
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 365
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 367
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 369
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 371
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDefaultInstanceForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->defaultInstance:Lcom/google/protos/embeds/ImageObjectItem$ImageObject;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    .line 162
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 163
    check-cast v1, Ljava/lang/String;

    .line 171
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 165
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 167
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 169
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 171
    goto :goto_8
.end method

.method public getHeight()Ljava/lang/String;
    .registers 5

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    .line 310
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 311
    check-cast v1, Ljava/lang/String;

    .line 319
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 313
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 315
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 317
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->height_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 319
    goto :goto_8
.end method

.method public getHeightPx()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    .line 194
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 195
    check-cast v1, Ljava/lang/String;

    .line 203
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 199
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 201
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 203
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    .line 130
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 139
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 133
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 135
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 137
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 139
    goto :goto_8
.end method

.method public getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 508
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedSerializedSize:I

    .line 509
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 569
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 511
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 512
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 513
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 516
    :cond_1c
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 517
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 520
    :cond_2b
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 521
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 524
    :cond_3b
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4a

    .line 525
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 528
    :cond_4a
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 529
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 532
    :cond_5c
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 533
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 536
    :cond_6c
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 537
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 540
    :cond_7c
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8d

    .line 541
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getWidthBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 544
    :cond_8d
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a0

    .line 545
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getHeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 548
    :cond_a0
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b1

    .line 549
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 552
    :cond_b1
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c2

    .line 553
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 556
    :cond_c2
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d5

    .line 557
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    :cond_d5
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_e8

    .line 561
    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getSourceDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 564
    :cond_e8
    iget v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_f9

    .line 565
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 568
    :cond_f9
    iput v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedSerializedSize:I

    move v1, v0

    .line 569
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSourceDomain()Ljava/lang/String;
    .registers 5

    .prologue
    .line 393
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    .line 394
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 395
    check-cast v1, Ljava/lang/String;

    .line 403
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 397
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 399
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 401
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->sourceDomain_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 403
    goto :goto_8
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    .line 226
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 227
    check-cast v1, Ljava/lang/String;

    .line 235
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 231
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 233
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->thumbnailUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 235
    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    .line 98
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 107
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 101
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 103
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 105
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 107
    goto :goto_8
.end method

.method public getWidth()Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    .line 278
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 279
    check-cast v1, Ljava/lang/String;

    .line 287
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 281
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 283
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 285
    iput-object v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->width_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 287
    goto :goto_8
.end method

.method public getWidthPx()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I

    return v0
.end method

.method public hasAbout()Z
    .registers 3

    .prologue
    .line 422
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContentLocation()Z
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasContentUrl()Z
    .registers 3

    .prologue
    .line 358
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 306
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasHeightPx()Z
    .registers 3

    .prologue
    .line 348
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 190
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasProxiedImage()Z
    .registers 3

    .prologue
    .line 254
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasSourceDomain()Z
    .registers 3

    .prologue
    .line 390
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 94
    iget v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 274
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public hasWidthPx()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 446
    iget-byte v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedIsInitialized:B

    .line 447
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 456
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 447
    goto :goto_9

    .line 449
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->hasAbout()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 450
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getAbout()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 451
    iput-byte v2, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedIsInitialized:B

    move v1, v2

    .line 452
    goto :goto_9

    .line 455
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilderForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 2

    .prologue
    .line 647
    invoke-static {}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->toBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;
    .registers 2

    .prologue
    .line 651
    invoke-static {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->newBuilder(Lcom/google/protos/embeds/ImageObjectItem$ImageObject;)Lcom/google/protos/embeds/ImageObjectItem$ImageObject$Builder;

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
    .line 576
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

    .line 461
    invoke-virtual {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getSerializedSize()I

    .line 462
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 463
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 465
    :cond_15
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 466
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 468
    :cond_22
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 469
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 471
    :cond_30
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 472
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 474
    :cond_3d
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 475
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 477
    :cond_4d
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 478
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 480
    :cond_5b
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 481
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 483
    :cond_69
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_78

    .line 484
    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getWidthBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 486
    :cond_78
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_89

    .line 487
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getHeightBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 489
    :cond_89
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_98

    .line 490
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->widthPx_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 492
    :cond_98
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a7

    .line 493
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->heightPx_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 495
    :cond_a7
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b8

    .line 496
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 498
    :cond_b8
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c9

    .line 499
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->getSourceDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 501
    :cond_c9
    iget v0, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d8

    .line 502
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/protos/embeds/ImageObjectItem$ImageObject;->about_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 504
    :cond_d8
    return-void
.end method
