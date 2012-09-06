.class public final Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusPhotoAlbumItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotoAlbumItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusPhotoAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

.field public static final plusPhotoAlbum:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private associatedMedia_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private photoCount_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1000
    new-instance v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 1001
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->initFields()V

    .line 1009
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a8ea1f

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->plusPhotoAlbum:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 279
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedIsInitialized:B

    .line 323
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedSerializedSize:I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;Lcom/google/protos/embeds/PlusPhotoAlbumItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;-><init>(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 279
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedIsInitialized:B

    .line 323
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I

    return p1
.end method

.method private getAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    .line 239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 242
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    .line 245
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

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    .line 154
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 155
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 157
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    .line 160
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
    .line 121
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    .line 122
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 123
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 125
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    .line 128
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
    .line 206
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 207
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 208
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 210
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 213
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
    .line 89
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    .line 90
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 91
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 93
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    .line 96
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
    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I

    .line 277
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 278
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 439
    #calls: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->create()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->access$100()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 442
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    .line 225
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 226
    check-cast v1, Ljava/lang/String;

    .line 234
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 228
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 230
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 232
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 234
    goto :goto_8
.end method

.method public getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    return-object v0
.end method

.method public getAssociatedMediaCount()I
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    .line 140
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 141
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 143
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 147
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 149
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    .line 108
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 117
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 111
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 113
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 115
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 117
    goto :goto_8
.end method

.method public getOwnerObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 193
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 194
    check-cast v1, Ljava/lang/String;

    .line 202
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 196
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 198
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 200
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 202
    goto :goto_8
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 325
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedSerializedSize:I

    .line 326
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 362
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 328
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 329
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 330
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 333
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 334
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 337
    :cond_2b
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3b

    .line 338
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 341
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_54

    .line 342
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 345
    :cond_54
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_64

    .line 346
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 349
    :cond_64
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_76

    .line 350
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 353
    :cond_76
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_86

    .line 354
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 357
    :cond_86
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_95

    .line 358
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 361
    :cond_95
    iput v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedSerializedSize:I

    move v2, v1

    .line 362
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    .line 76
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 77
    check-cast v1, Ljava/lang/String;

    .line 85
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 79
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 81
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 83
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 85
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 221
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasContentLocation()Z
    .registers 3

    .prologue
    .line 263
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 104
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasOwnerObfuscatedId()Z
    .registers 3

    .prologue
    .line 189
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasPhotoCount()Z
    .registers 3

    .prologue
    .line 253
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 72
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 281
    iget-byte v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedIsInitialized:B

    .line 282
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 291
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 282
    goto :goto_9

    .line 284
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getAssociatedMediaCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 286
    iput-byte v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedIsInitialized:B

    move v2, v3

    .line 287
    goto :goto_9

    .line 284
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 290
    :cond_24
    iput-byte v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilderForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 440
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->toBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 444
    invoke-static {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

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
    .line 369
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getSerializedSize()I

    .line 297
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 298
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 300
    :cond_15
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 301
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 303
    :cond_22
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 304
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 306
    :cond_30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 307
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 309
    :cond_47
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_55

    .line 310
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 312
    :cond_55
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_65

    .line 313
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 315
    :cond_65
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_73

    .line 316
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 318
    :cond_73
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_80

    .line 319
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 321
    :cond_80
    return-void
.end method
