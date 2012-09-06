.class public final Lcom/google/api/services/plusi/model/DataCircleIdsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCircleIdsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCircleIds;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCircleIdsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleIdsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleIdsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCircleIdsJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleIdsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleIds;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "circleId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCircleIdsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCircleIdsJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleIdsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCircleIds;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleIds;->circleId:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCircleIds;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCircleIdsJson;->getValues(Lcom/google/api/services/plusi/model/DataCircleIds;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCircleIds;
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleIds;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleIds;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCircleIdsJson;->newInstance()Lcom/google/api/services/plusi/model/DataCircleIds;

    move-result-object v0

    return-object v0
.end method
