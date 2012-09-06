.class public final Lcom/google/api/services/plusi/model/StreamParamsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "StreamParamsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/StreamParams;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/StreamParamsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/StreamParamsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/StreamParamsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/StreamParamsJson;->INSTANCE:Lcom/google/api/services/plusi/model/StreamParamsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/StreamParams;

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "collapserType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/InterestJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "interest"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/api/services/plusi/model/StreamParamsJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "activitiesOldestTimestampUsec"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sort"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gaiaGroupOid"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/InterestParamsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "interestParams"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "viewType"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "contentFormat"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "initialOperation"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "productionStreamOid"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "maxNumUpdates"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "expandSharebox"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/SearchQueryJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "searchQuery"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Lcom/google/api/services/plusi/model/StreamParamsFilterJson;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "filters"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-class v3, Lcom/google/api/services/plusi/model/ProductionStreamParamsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "productionParams"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "perspectiveUserId"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "channelOrigin"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "maxComments"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "disableAbuseFiltering"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "focusGroupId"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "openSocialDomain"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/StreamParamsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/StreamParamsJson;->INSTANCE:Lcom/google/api/services/plusi/model/StreamParamsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/StreamParams;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 52
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->collapserType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->interest:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->activitiesOldestTimestampUsec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->sort:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->gaiaGroupOid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->interestParams:Lcom/google/api/services/plusi/model/InterestParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->viewType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->contentFormat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->initialOperation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->productionStreamOid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->maxNumUpdates:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->expandSharebox:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->searchQuery:Lcom/google/api/services/plusi/model/SearchQuery;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->filters:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->productionParams:Lcom/google/api/services/plusi/model/ProductionStreamParams;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->perspectiveUserId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->channelOrigin:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->maxComments:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->disableAbuseFiltering:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->focusGroupId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/StreamParams;->openSocialDomain:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/StreamParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/StreamParamsJson;->getValues(Lcom/google/api/services/plusi/model/StreamParams;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/StreamParams;
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/api/services/plusi/model/StreamParams;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/StreamParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/StreamParamsJson;->newInstance()Lcom/google/api/services/plusi/model/StreamParams;

    move-result-object v0

    return-object v0
.end method
