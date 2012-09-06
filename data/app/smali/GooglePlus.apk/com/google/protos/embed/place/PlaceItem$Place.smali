.class public final Lcom/google/protos/embed/place/PlaceItem$Place;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlaceItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/PlaceItem$PlaceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/PlaceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Place"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embed/place/PlaceItem$Place;

.field public static final place:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embed/place/PlaceItem$Place;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

.field private bitField0_:I

.field private clusterId_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

.field private imageUrl_:Ljava/lang/Object;

.field private mapUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private referenceId_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1149
    new-instance v0, Lcom/google/protos/embed/place/PlaceItem$Place;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embed/place/PlaceItem$Place;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embed/place/PlaceItem$Place;->defaultInstance:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 1150
    sget-object v0, Lcom/google/protos/embed/place/PlaceItem$Place;->defaultInstance:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-direct {v0}, Lcom/google/protos/embed/place/PlaceItem$Place;->initFields()V

    .line 1158
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1990e62

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embed/place/PlaceItem$Place;->place:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embed/place/PlaceItem$Place$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 362
    iput-byte v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedIsInitialized:B

    .line 406
    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedSerializedSize:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embed/place/PlaceItem$Place$Builder;Lcom/google/protos/embed/place/PlaceItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/protos/embed/place/PlaceItem$Place;-><init>(Lcom/google/protos/embed/place/PlaceItem$Place$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 362
    iput-byte v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedIsInitialized:B

    .line 406
    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedSerializedSize:I

    .line 62
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protos/embed/place/PlaceItem$Place;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embed/place/PlaceItem$Place;Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embed/place/PlaceItem$Place;Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embed/place/PlaceItem$Place;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method private getClusterIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    .line 212
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 213
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 215
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    .line 218
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

.method public static getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/protos/embed/place/PlaceItem$Place;->defaultInstance:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    .line 128
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 129
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 131
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    .line 134
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
    .line 307
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    .line 308
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 309
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 311
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    .line 314
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

.method private getMapUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    .line 276
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 277
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 279
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    .line 282
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
    .line 95
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    .line 96
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 97
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 99
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    .line 102
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
    .line 243
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 244
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 245
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 247
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 250
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

.method private getReferenceIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    .line 340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 343
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    .line 346
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
    .line 159
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    .line 160
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 161
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 163
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    .line 166
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
    .line 351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 355
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    .line 360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    .line 361
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 1

    .prologue
    .line 530
    #calls: Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->create()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->access$100()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 533
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    return-object v0
.end method

.method public getClusterId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    .line 198
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 199
    check-cast v1, Ljava/lang/String;

    .line 207
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 201
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 203
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 205
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->clusterId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 207
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/google/protos/embed/place/PlaceItem$Place;->defaultInstance:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    .line 114
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 123
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 117
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 119
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 121
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 123
    goto :goto_8
.end method

.method public getGeo()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    .line 294
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 295
    check-cast v1, Ljava/lang/String;

    .line 303
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 299
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 301
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 303
    goto :goto_8
.end method

.method public getMapUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    .line 262
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 271
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 267
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 269
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->mapUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 271
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    .line 82
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 91
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 85
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 87
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 89
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 91
    goto :goto_8
.end method

.method public getOwnerObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 230
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 231
    check-cast v1, Ljava/lang/String;

    .line 239
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 235
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 237
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->ownerObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 239
    goto :goto_8
.end method

.method public getReferenceId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    .line 326
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 327
    check-cast v1, Ljava/lang/String;

    .line 335
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 329
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 331
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 333
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->referenceId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 335
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 408
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedSerializedSize:I

    .line 409
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 453
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 411
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 412
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 413
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 416
    :cond_1c
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 417
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 420
    :cond_2b
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 421
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 424
    :cond_3b
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 425
    iget-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 428
    :cond_48
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 429
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 432
    :cond_58
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 433
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 436
    :cond_6a
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 437
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    :cond_7c
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8d

    .line 441
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 444
    :cond_8d
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a0

    .line 445
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 448
    :cond_a0
    iget v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b3

    .line 449
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getReferenceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    :cond_b3
    iput v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedSerializedSize:I

    move v1, v0

    .line 453
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    .line 146
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 155
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 149
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 151
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 153
    iput-object v2, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 155
    goto :goto_8
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    .line 174
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasClusterId()Z
    .registers 3

    .prologue
    .line 194
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasGeo()Z
    .registers 3

    .prologue
    .line 184
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 290
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasMapUrl()Z
    .registers 3

    .prologue
    .line 258
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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
    .line 226
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasReferenceId()Z
    .registers 3

    .prologue
    .line 322
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-byte v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedIsInitialized:B

    .line 365
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 368
    :goto_8
    return v1

    .line 365
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 367
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilderForType()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 2

    .prologue
    .line 531
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->toBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    .registers 2

    .prologue
    .line 535
    invoke-static {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

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
    .line 460
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

    .line 373
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getSerializedSize()I

    .line 374
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 375
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 377
    :cond_15
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 378
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 380
    :cond_22
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 381
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 383
    :cond_30
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 384
    iget-object v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->address_:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 386
    :cond_3b
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 387
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->geo_:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 389
    :cond_49
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 390
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 392
    :cond_59
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 393
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getOwnerObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 395
    :cond_69
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_78

    .line 396
    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 398
    :cond_78
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_89

    .line 399
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 401
    :cond_89
    iget v0, p0, Lcom/google/protos/embed/place/PlaceItem$Place;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9a

    .line 402
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/protos/embed/place/PlaceItem$Place;->getReferenceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 404
    :cond_9a
    return-void
.end method
