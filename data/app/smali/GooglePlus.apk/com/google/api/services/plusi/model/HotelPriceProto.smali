.class public final Lcom/google/api/services/plusi/model/HotelPriceProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "HotelPriceProto.java"


# instance fields
.field public checkin:Ljava/lang/String;

.field public checkinHr:Ljava/lang/String;

.field public checkout:Ljava/lang/String;

.field public checkoutHr:Ljava/lang/String;

.field public conversionDisclaimerLink:Ljava/lang/String;

.field public formattedLowestBasePrice:Ljava/lang/String;

.field public formattedLowestPrice:Ljava/lang/String;

.field public formattedLowestRawBasePrice:Ljava/lang/String;

.field public formattedLowestRawPrice:Ljava/lang/String;

.field public formattedPrefixCurrency:Ljava/lang/String;

.field public formattedSuffixCurrency:Ljava/lang/String;

.field public hotelLoggingData:Lcom/google/api/services/plusi/model/HotelPriceProtoHotelLoggingData;

.field public owner:Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartner;

.field public partner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartner;",
            ">;"
        }
    .end annotation
.end field

.field public taxesInclusive:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 151
    const-class v0, Lcom/google/api/services/plusi/model/HotelPriceProtoHotelPartner;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
