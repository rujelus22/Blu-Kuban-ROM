.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;,
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;,
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;,
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;,
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;
    }
.end annotation


# static fields
.field public static final AUTHOR_FIELD_NUMBER:I = 0x4

.field public static final BRAND_FIELD_NUMBER:I = 0xa

.field public static final CATALOG_URL_FIELD_NUMBER:I = 0xe

.field public static final CATEGORIES_FIELD_NUMBER:I = 0xd

.field public static final CID_FIELD_NUMBER:I = 0x8

.field public static final CLUSTER_ID_FIELD_NUMBER:I = 0xc

.field public static final GENDER_FIELD_NUMBER:I = 0xb

.field public static final ISBN_FIELD_NUMBER:I = 0x7

.field public static final NUM_REVIEWS_FIELD_NUMBER:I = 0x2

.field public static final OFFERS_FIELD_NUMBER:I = 0x9

.field public static final PRICES_FIELD_NUMBER:I = 0x3

.field public static final PUBLICATION_YEAR_FIELD_NUMBER:I = 0x6

.field public static final PUBLISHER_FIELD_NUMBER:I = 0x5

.field public static final STAR_RATING_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

.field private static final serialVersionUID:J


# instance fields
.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private brand_:Ljava/lang/Object;

.field private catalogUrl_:Ljava/lang/Object;

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation
.end field

.field private cid_:Ljava/lang/Object;

.field private clusterId_:Ljava/lang/Object;

.field private gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

.field private isbn_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numReviews_:I

.field private offers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;"
        }
    .end annotation
.end field

.field private prices_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private publicationYear_:Ljava/lang/Object;

.field private publisher_:Ljava/lang/Object;

.field private starRating_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2740
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    .line 2741
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->initFields()V

    .line 2742
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1599
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedIsInitialized:B

    .line 1655
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedSerializedSize:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1599
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedIsInitialized:B

    .line 1655
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedSerializedSize:I

    .line 83
    return-void
.end method

.method static synthetic access$1902(Lcom/google/goggles/ProductInformationProtos$ProductInformation;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F

    return p1
.end method

.method static synthetic access$2002(Lcom/google/goggles/ProductInformationProtos$ProductInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/ProductInformationProtos$ProductInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/goggles/ProductInformationProtos$ProductInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    return p1
.end method

.method private getAuthorBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    .line 1297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1298
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1300
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    .line 1303
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getBrandBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    .line 1478
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1479
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1481
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    .line 1484
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getCatalogUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    .line 1573
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1574
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1576
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    .line 1579
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getCidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    .line 1425
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1426
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1428
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    .line 1431
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getClusterIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    .line 1520
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1521
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1523
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    .line 1526
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    return-object v0
.end method

.method private getIsbnBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    .line 1393
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1394
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1396
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    .line 1399
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getPublicationYearBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    .line 1361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1362
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1364
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    .line 1367
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getPublisherBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    .line 1329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1330
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1332
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    .line 1335
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F

    .line 1585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I

    .line 1586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    .line 1587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    .line 1588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    .line 1589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    .line 1590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    .line 1591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    .line 1592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    .line 1593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    .line 1594
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->WOMEN:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    .line 1595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    .line 1596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    .line 1597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    .line 1598
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 1

    .prologue
    .line 1795
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1700()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1798
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    .line 1765
    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1766
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    .line 1768
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1775
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    .line 1776
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1777
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    .line 1779
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1737
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1791
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1753
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1759
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1748
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;->access$1600(Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    .line 1283
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1284
    check-cast v0, Ljava/lang/String;

    .line 1292
    :goto_8
    return-object v0

    .line 1286
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1288
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1290
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->author_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1292
    goto :goto_8
.end method

.method public getBrand()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    .line 1464
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1465
    check-cast v0, Ljava/lang/String;

    .line 1473
    :goto_8
    return-object v0

    .line 1467
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1469
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1471
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->brand_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1473
    goto :goto_8
.end method

.method public getCatalogUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    .line 1559
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1560
    check-cast v0, Ljava/lang/String;

    .line 1568
    :goto_8
    return-object v0

    .line 1562
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1564
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1565
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1566
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->catalogUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1568
    goto :goto_8
.end method

.method public getCategories(I)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesOrBuilder(I)Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;

    return-object v0
.end method

.method public getCategoriesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    .line 1411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1412
    check-cast v0, Ljava/lang/String;

    .line 1420
    :goto_8
    return-object v0

    .line 1414
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1416
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1417
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1418
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->cid_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1420
    goto :goto_8
.end method

.method public getClusterId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    .line 1506
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1507
    check-cast v0, Ljava/lang/String;

    .line 1515
    :goto_8
    return-object v0

    .line 1509
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1511
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1512
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1513
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->clusterId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1515
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    .registers 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    return-object v0
.end method

.method public getIsbn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    .line 1379
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1380
    check-cast v0, Ljava/lang/String;

    .line 1388
    :goto_8
    return-object v0

    .line 1382
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1384
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1386
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->isbn_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1388
    goto :goto_8
.end method

.method public getNumReviews()I
    .registers 2

    .prologue
    .line 1251
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I

    return v0
.end method

.method public getOffers(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    return-object v0
.end method

.method public getOffersCount()I
    .registers 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOffersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    return-object v0
.end method

.method public getOffersOrBuilder(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;

    return-object v0
.end method

.method public getOffersOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    return-object v0
.end method

.method public getPrices(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method public getPricesCount()I
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPricesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    return-object v0
.end method

.method public getPricesOrBuilder(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;

    return-object v0
.end method

.method public getPricesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    return-object v0
.end method

.method public getPublicationYear()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    .line 1347
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1348
    check-cast v0, Ljava/lang/String;

    .line 1356
    :goto_8
    return-object v0

    .line 1350
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1352
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1354
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publicationYear_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1356
    goto :goto_8
.end method

.method public getPublisher()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    .line 1315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1316
    check-cast v0, Ljava/lang/String;

    .line 1324
    :goto_8
    return-object v0

    .line 1318
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1320
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1321
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1322
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->publisher_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1324
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1657
    iget v3, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedSerializedSize:I

    .line 1658
    const/4 v0, -0x1

    if-eq v3, v0, :cond_c

    .line 1718
    :goto_b
    return v3

    .line 1661
    :cond_c
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11e

    .line 1662
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v0, v1

    .line 1665
    :goto_19
    iget v2, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 1666
    iget v2, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_26
    move v2, v1

    move v3, v0

    .line 1669
    :goto_28
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    .line 1670
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1669
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    .line 1673
    :cond_42
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_51

    .line 1674
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1677
    :cond_51
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_61

    .line 1678
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublisherBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1681
    :cond_61
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_73

    .line 1682
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublicationYearBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1685
    :cond_73
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_85

    .line 1686
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getIsbnBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1689
    :cond_85
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_96

    .line 1690
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_96
    move v2, v1

    .line 1693
    :goto_97
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b2

    .line 1694
    const/16 v4, 0x9

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1693
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_97

    .line 1697
    :cond_b2
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_c5

    .line 1698
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrandBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1701
    :cond_c5
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_da

    .line 1702
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    invoke-virtual {v2}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->getNumber()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 1705
    :cond_da
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v2, 0x200

    if-ne v0, v2, :cond_ed

    .line 1706
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1709
    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_107

    .line 1710
    const/16 v2, 0xd

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1709
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    .line 1713
    :cond_107
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_11a

    .line 1714
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCatalogUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1717
    :cond_11a
    iput v3, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedSerializedSize:I

    goto/16 :goto_b

    :cond_11e
    move v0, v1

    goto/16 :goto_19
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F

    return v0
.end method

.method public hasAuthor()Z
    .registers 3

    .prologue
    .line 1279
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasBrand()Z
    .registers 3

    .prologue
    .line 1460
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasCatalogUrl()Z
    .registers 3

    .prologue
    .line 1555
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasCid()Z
    .registers 3

    .prologue
    .line 1407
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasClusterId()Z
    .registers 3

    .prologue
    .line 1502
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 1492
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasIsbn()Z
    .registers 3

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasNumReviews()Z
    .registers 3

    .prologue
    .line 1248
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasPublicationYear()Z
    .registers 3

    .prologue
    .line 1343
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasPublisher()Z
    .registers 3

    .prologue
    .line 1311
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

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

.method public hasStarRating()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1238
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1601
    iget-byte v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedIsInitialized:B

    .line 1602
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1605
    :goto_8
    return v0

    .line 1602
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1604
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 1796
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;
    .registers 2

    .prologue
    .line 1800
    invoke-static {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$Builder;

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
    .line 1725
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1610
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getSerializedSize()I

    .line 1611
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 1612
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->starRating_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1614
    :cond_14
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1f

    .line 1615
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->numReviews_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1f
    move v1, v2

    .line 1617
    :goto_20
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    .line 1618
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->prices_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1617
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 1620
    :cond_38
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_45

    .line 1621
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1623
    :cond_45
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_53

    .line 1624
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublisherBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1626
    :cond_53
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_63

    .line 1627
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getPublicationYearBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1629
    :cond_63
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_73

    .line 1630
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getIsbnBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1632
    :cond_73
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_82

    .line 1633
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_82
    move v1, v2

    .line 1635
    :goto_83
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9c

    .line 1636
    const/16 v3, 0x9

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->offers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1635
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_83

    .line 1638
    :cond_9c
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_ad

    .line 1639
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getBrandBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1641
    :cond_ad
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_c0

    .line 1642
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->gender_:Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    invoke-virtual {v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1644
    :cond_c0
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_d1

    .line 1645
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1647
    :cond_d1
    :goto_d1
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e9

    .line 1648
    const/16 v1, 0xd

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->categories_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1647
    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 1650
    :cond_e9
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_fa

    .line 1651
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation;->getCatalogUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1653
    :cond_fa
    return-void
.end method
