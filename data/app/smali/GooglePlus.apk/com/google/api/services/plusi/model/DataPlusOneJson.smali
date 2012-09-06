.class public final Lcom/google/api/services/plusi/model/DataPlusOneJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataPlusOneJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataPlusOne;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataPlusOneJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataPlusOneJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPlusOneJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataPlusOneJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPlusOneJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataPlusOne;

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "origImageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "aclJson"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "friendCount"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "timeModifiedMs"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/DataEntityJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "entity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "htmlSnippet"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "isPlusonedByViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/DataUrlInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "urlInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/DataPerfectStreamInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "perfectStreamInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/DataPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "person"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "activityId"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "commentId"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "sourceUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "authoredContent"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "abuseToken"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/DataAggregateJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "aggregate"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "generatedActivityId"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "isSharedByViewer"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "globalCount"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataPlusOneJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataPlusOneJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPlusOneJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataPlusOne;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 53
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->origImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->aclJson:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->friendCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->timeModifiedMs:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->entity:Lcom/google/api/services/plusi/model/DataEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->htmlSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->isPlusonedByViewer:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->urlInfo:Lcom/google/api/services/plusi/model/DataUrlInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->perfectStreamInfo:Lcom/google/api/services/plusi/model/DataPerfectStreamInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->person:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->activityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->commentId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->sourceUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->authoredContent:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->abuseToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->aggregate:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->generatedActivityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->isSharedByViewer:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPlusOne;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataPlusOne;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataPlusOneJson;->getValues(Lcom/google/api/services/plusi/model/DataPlusOne;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataPlusOne;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/services/plusi/model/DataPlusOne;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPlusOne;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataPlusOneJson;->newInstance()Lcom/google/api/services/plusi/model/DataPlusOne;

    move-result-object v0

    return-object v0
.end method
