.class public final Lcom/google/api/services/plusi/model/EventLandingResponseJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EventLandingResponseJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EventLandingResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EventLandingResponseJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EventLandingResponseJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventLandingResponseJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EventLandingResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventLandingResponseJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EventLandingResponse;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "enableGalleryView"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/PhotoCollectionJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "photoCollection"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/TraceRecordsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "backendTrace"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "update"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "resolvedCreator"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "viewerEventAlbumIds"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "state"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/CoalescedFrameJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "frames"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "pollingToken"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/DataPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "featuredPhoto"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EventLandingResponseJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EventLandingResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventLandingResponseJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EventLandingResponse;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->enableGalleryView:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->photoCollection:Lcom/google/api/services/plusi/model/PhotoCollection;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->resolvedCreator:Lcom/google/api/services/plusi/model/EmbedsPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->viewerEventAlbumIds:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->state:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->frames:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->pollingToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLandingResponse;->featuredPhoto:Lcom/google/api/services/plusi/model/DataPhoto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EventLandingResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EventLandingResponseJson;->getValues(Lcom/google/api/services/plusi/model/EventLandingResponse;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EventLandingResponse;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/services/plusi/model/EventLandingResponse;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventLandingResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EventLandingResponseJson;->newInstance()Lcom/google/api/services/plusi/model/EventLandingResponse;

    move-result-object v0

    return-object v0
.end method
