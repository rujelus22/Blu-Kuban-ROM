.class public final Lcom/google/api/services/plusi/model/HotelPriceProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "HotelPriceProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/HotelPriceProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/HotelPriceProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/HotelPriceProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/HotelPriceProto;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "conversionDisclaimerLink"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "checkoutHr"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "formattedLowestRawBasePrice"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "formattedPrefixCurrency"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/HotelPriceProtoHotelLoggingDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hotelLoggingData"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "formattedLowestPrice"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "checkin"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartnerJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "owner"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "formattedLowestBasePrice"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "taxesInclusive"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "checkinHr"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "formattedLowestRawPrice"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartnerJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "partner"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "checkout"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "formattedSuffixCurrency"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/HotelPriceProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/HotelPriceProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/HotelPriceProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->conversionDisclaimerLink:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->checkoutHr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedLowestRawBasePrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedPrefixCurrency:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->hotelLoggingData:Lcom/google/api/services/plusi/model/HotelPriceProtoHotelLoggingData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedLowestPrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->checkin:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->owner:Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartner;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedLowestBasePrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->taxesInclusive:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->checkinHr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedLowestRawPrice:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->partner:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->checkout:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HotelPriceProto;->formattedSuffixCurrency:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/HotelPriceProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;->getValues(Lcom/google/api/services/plusi/model/HotelPriceProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/HotelPriceProto;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/services/plusi/model/HotelPriceProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HotelPriceProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/HotelPriceProtoJson;->newInstance()Lcom/google/api/services/plusi/model/HotelPriceProto;

    move-result-object v0

    return-object v0
.end method
