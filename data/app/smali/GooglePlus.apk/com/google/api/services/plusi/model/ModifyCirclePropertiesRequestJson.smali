.class public final Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ModifyCirclePropertiesRequestJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "photoId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "justFollowing"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/ApiaryFieldsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "commonFields"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "visible"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "enableTracing"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "circleId"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->photoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->justFollowing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->visible:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->enableTracing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->circleId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;->getValues(Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequestJson;->newInstance()Lcom/google/api/services/plusi/model/ModifyCirclePropertiesRequest;

    move-result-object v0

    return-object v0
.end method
