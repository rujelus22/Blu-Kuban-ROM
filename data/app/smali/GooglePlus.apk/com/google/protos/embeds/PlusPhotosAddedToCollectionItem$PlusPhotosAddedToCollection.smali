.class public final Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusPhotosAddedToCollectionItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusPhotosAddedToCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

.field public static final plusPhotosAddedToCollection:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

.field private associatedMedia_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private collectionId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 944
    new-instance v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->defaultInstance:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    .line 945
    sget-object v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->defaultInstance:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->initFields()V

    .line 953
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1b3b2f4

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusPhotosAddedToCollection:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 242
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    .line 289
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedSerializedSize:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;-><init>(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 242
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    .line 289
    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method private getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    .line 150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    .line 156
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

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->defaultInstance:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    .line 86
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 87
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 89
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    .line 92
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
    .line 117
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 118
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 119
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 121
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 124
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
    .line 222
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    .line 223
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 224
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 226
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    .line 229
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
    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    .line 238
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 239
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 1

    .prologue
    .line 401
    #calls: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->create()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->access$100()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 404
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->newBuilder()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 3
    .parameter "index"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method public getAssociatedMediaCount()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    .line 136
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 145
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 141
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 143
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 145
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->defaultInstance:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    .line 72
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 81
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 75
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 77
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 79
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 81
    goto :goto_8
.end method

.method public getOwnerObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 104
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 113
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 107
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 109
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 111
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 113
    goto :goto_8
.end method

.method public getPlusEvent()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 291
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedSerializedSize:I

    .line 292
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 324
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 294
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 295
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 296
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 299
    :cond_1a
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 300
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 303
    :cond_29
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_39

    .line 304
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getCollectionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 307
    :cond_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 308
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 311
    :cond_52
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 312
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 315
    :cond_62
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_72

    .line 316
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 319
    :cond_72
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_84

    .line 320
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 323
    :cond_84
    iput v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedSerializedSize:I

    move v2, v1

    .line 324
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    .line 209
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 210
    check-cast v1, Ljava/lang/String;

    .line 218
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 212
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 214
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 216
    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 218
    goto :goto_8
.end method

.method public hasAssociatedMediaDisplay()Z
    .registers 3

    .prologue
    .line 185
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

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

.method public hasCollectionId()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

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
    const/4 v0, 0x1

    .line 68
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerObfuscatedId()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

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

.method public hasPlusEvent()Z
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

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
    .line 205
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    iget-byte v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    .line 245
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 260
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 245
    goto :goto_9

    .line 247
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getAssociatedMediaCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 248
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 249
    iput-byte v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    move v2, v3

    .line 250
    goto :goto_9

    .line 247
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 253
    :cond_24
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasAssociatedMediaDisplay()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 254
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 255
    iput-byte v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    move v2, v3

    .line 256
    goto :goto_9

    .line 259
    :cond_38
    iput-byte v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->newBuilderForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 2

    .prologue
    .line 402
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->newBuilder()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->toBuilder()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 2

    .prologue
    .line 406
    invoke-static {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->newBuilder(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

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
    .line 331
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getSerializedSize()I

    .line 266
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 267
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 269
    :cond_13
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 270
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 272
    :cond_20
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 273
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getCollectionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 275
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 276
    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 278
    :cond_45
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_53

    .line 279
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 281
    :cond_53
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_61

    .line 282
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 284
    :cond_61
    iget v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_71

    .line 285
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 287
    :cond_71
    return-void
.end method
