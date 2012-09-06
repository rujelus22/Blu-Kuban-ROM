.class public final Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ProviderBlockProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ProviderBlockProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ProviderBlockProto;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/WebReviewProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "review"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hostName"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/AwardProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "award"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/AggregatedReviewsProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "aggregatedReviews"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "faviconUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "originalIndex"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "realtimeUpdate"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ProviderBlockProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->title:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->review:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->hostName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->award:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->aggregatedReviews:Lcom/google/api/services/plusi/model/AggregatedReviewsProto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->faviconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->originalIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;->realtimeUpdate:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ProviderBlockProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;->getValues(Lcom/google/api/services/plusi/model/ProviderBlockProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ProviderBlockProto;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/ProviderBlockProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProviderBlockProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ProviderBlockProtoJson;->newInstance()Lcom/google/api/services/plusi/model/ProviderBlockProto;

    move-result-object v0

    return-object v0
.end method
