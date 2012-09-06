.class public final Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlaceActivityStreamEntryProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/UploadedMediaJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "checkin"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/GoogleReviewProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "review"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->media:Lcom/google/api/services/plusi/model/UploadedMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->checkin:Lcom/google/api/services/plusi/model/PlacePageCheckin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->review:Lcom/google/api/services/plusi/model/GoogleReviewProto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;->getValues(Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProtoJson;->newInstance()Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    move-result-object v0

    return-object v0
.end method
