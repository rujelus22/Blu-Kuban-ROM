.class public final Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PostalAddressItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/PostalAddressItem$PostalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/PostalAddressItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostalAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

.field public static final postalAddress:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            "Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private addressCountry_:Ljava/lang/Object;

.field private addressLocality_:Ljava/lang/Object;

.field private addressRegion_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private postOfficeBoxNumber_:Ljava/lang/Object;

.field private postalCode_:Ljava/lang/Object;

.field private streetAddress_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 983
    new-instance v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->defaultInstance:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    .line 984
    sget-object v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->defaultInstance:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    invoke-direct {v0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->initFields()V

    .line 992
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a18d16

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalAddress:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 332
    iput-byte v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedIsInitialized:B

    .line 370
    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedSerializedSize:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;Lcom/google/protos/embed/place/PostalAddressItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;-><init>(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 332
    iput-byte v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedIsInitialized:B

    .line 370
    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedSerializedSize:I

    .line 54
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAddressCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    .line 120
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 121
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 123
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    .line 126
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

.method private getAddressLocalityBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    .line 152
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 153
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 155
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    .line 158
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

.method private getAddressRegionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    .line 184
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 185
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 187
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    .line 190
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

.method public static getDefaultInstance()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->defaultInstance:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    .line 88
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 89
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 91
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    .line 94
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

.method private getPostOfficeBoxNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 216
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 217
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 219
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 222
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

.method private getPostalCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 248
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 249
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 251
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 254
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

.method private getStreetAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    .line 280
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 281
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 283
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    .line 286
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
    .line 311
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    .line 312
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 313
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 315
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    .line 318
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
    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 1

    .prologue
    .line 486
    #calls: Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->create()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->access$100()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 489
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;->mergeFrom(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressCountry()Ljava/lang/String;
    .registers 5

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    .line 106
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 115
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 109
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 111
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 113
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressCountry_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 115
    goto :goto_8
.end method

.method public getAddressLocality()Ljava/lang/String;
    .registers 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    .line 138
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 139
    check-cast v1, Ljava/lang/String;

    .line 147
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 141
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 143
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 145
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressLocality_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 147
    goto :goto_8
.end method

.method public getAddressRegion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    .line 170
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 171
    check-cast v1, Ljava/lang/String;

    .line 179
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 173
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 175
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 177
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->addressRegion_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 179
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getDefaultInstanceForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->defaultInstance:Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    .line 74
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 83
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 77
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 79
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 81
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 83
    goto :goto_8
.end method

.method public getPostOfficeBoxNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    .line 202
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 203
    check-cast v1, Ljava/lang/String;

    .line 211
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 205
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 207
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 209
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postOfficeBoxNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 211
    goto :goto_8
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    .line 234
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 235
    check-cast v1, Ljava/lang/String;

    .line 243
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 237
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 239
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 241
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->postalCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 243
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 372
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedSerializedSize:I

    .line 373
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 409
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 375
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 376
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 377
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 380
    :cond_1c
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 381
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    :cond_2b
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 385
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressLocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 388
    :cond_3b
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4a

    .line 389
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    :cond_4a
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 393
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostOfficeBoxNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 396
    :cond_5c
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6e

    .line 397
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostalCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 400
    :cond_6e
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_80

    .line 401
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getStreetAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    :cond_80
    iget v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_91

    .line 405
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 408
    :cond_91
    iput v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 409
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getStreetAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    .line 266
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 267
    check-cast v1, Ljava/lang/String;

    .line 275
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 269
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 271
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 273
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->streetAddress_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 275
    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    .line 298
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 299
    check-cast v1, Ljava/lang/String;

    .line 307
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 301
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 303
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 305
    iput-object v2, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 307
    goto :goto_8
.end method

.method public hasAddressCountry()Z
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public hasAddressLocality()Z
    .registers 3

    .prologue
    .line 134
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public hasAddressRegion()Z
    .registers 3

    .prologue
    .line 166
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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
    const/4 v0, 0x1

    .line 70
    iget v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPostOfficeBoxNumber()Z
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public hasPostalCode()Z
    .registers 3

    .prologue
    .line 230
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public hasStreetAddress()Z
    .registers 3

    .prologue
    .line 262
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 294
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-byte v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedIsInitialized:B

    .line 335
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 338
    :goto_8
    return v1

    .line 335
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 337
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilderForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 2

    .prologue
    .line 487
    invoke-static {}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->toBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;
    .registers 2

    .prologue
    .line 491
    invoke-static {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->newBuilder(Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;)Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress$Builder;

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
    .line 416
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

    .line 343
    invoke-virtual {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getSerializedSize()I

    .line 344
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 345
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 347
    :cond_15
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 348
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 350
    :cond_22
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 351
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressLocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 353
    :cond_30
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 354
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getAddressRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 356
    :cond_3d
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 357
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostOfficeBoxNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 359
    :cond_4d
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 360
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getPostalCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 362
    :cond_5d
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6d

    .line 363
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getStreetAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 365
    :cond_6d
    iget v0, p0, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7c

    .line 366
    invoke-direct {p0}, Lcom/google/protos/embed/place/PostalAddressItem$PostalAddress;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 368
    :cond_7c
    return-void
.end method
