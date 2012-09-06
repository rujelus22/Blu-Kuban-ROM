.class public final Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LoadCircleMembersResponseJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataCirclePersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "circlePerson"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/TraceRecordsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "backendTrace"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "totalPeople"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "changesSinceMillis"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/DataContinuationTokenJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "continuationToken"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "circleData"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->circlePerson:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->totalPeople:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->changesSinceMillis:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->continuationToken:Lcom/google/api/services/plusi/model/DataContinuationToken;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;->circleData:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->getValues(Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LoadCircleMembersResponseJson;->newInstance()Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method
