.class public final Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "AttributeProtoCanonicalValueJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;->INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PriceRangeProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "priceRange"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/TimeScheduleProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "timeSchedule"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ratingStars"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "link"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "hotelRatingStars"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "priceLevel"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;->INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->priceRange:Lcom/google/api/services/plusi/model/PriceRangeProto;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->timeSchedule:Lcom/google/api/services/plusi/model/TimeScheduleProto;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->ratingStars:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->link:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->hotelRatingStars:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;->priceLevel:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;->getValues(Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;->newInstance()Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    move-result-object v0

    return-object v0
.end method
