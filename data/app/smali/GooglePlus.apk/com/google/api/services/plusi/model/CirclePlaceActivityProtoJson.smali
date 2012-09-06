.class public final Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CirclePlaceActivityProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "totalMedia"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "wishlistedUser"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "reviewedUser"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "totalReviews"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "checkedInUser"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "activity"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "reviewTemplate"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "totalCheckins"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalMedia:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->wishlistedUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->reviewedUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalReviews:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->checkedInUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->activity:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->reviewTemplate:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalCheckins:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;->getValues(Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CirclePlaceActivityProtoJson;->newInstance()Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    move-result-object v0

    return-object v0
.end method
