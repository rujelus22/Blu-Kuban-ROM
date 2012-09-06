.class public final Lcom/google/api/services/plusi/model/LiveMapsProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LiveMapsProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LiveMapsProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LiveMapsProto;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/StoryTitleJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "moreEventsLink"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "provider"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LiveMapsProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LiveMapsProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsProto;->title:Lcom/google/api/services/plusi/model/StoryTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsProto;->event:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsProto;->moreEventsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsProto;->provider:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LiveMapsProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;->getValues(Lcom/google/api/services/plusi/model/LiveMapsProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LiveMapsProto;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/services/plusi/model/LiveMapsProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LiveMapsProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LiveMapsProtoJson;->newInstance()Lcom/google/api/services/plusi/model/LiveMapsProto;

    move-result-object v0

    return-object v0
.end method
