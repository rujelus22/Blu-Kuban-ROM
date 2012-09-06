.class public final Lcom/google/api/services/plusi/model/PageJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PageJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Page;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PageJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PageJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PageJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PageJson;->INSTANCE:Lcom/google/api/services/plusi/model/PageJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Page;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "validAgeRestrictions"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "localInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ClassificationJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "classification"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "blocked"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PageJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PageJson;->INSTANCE:Lcom/google/api/services/plusi/model/PageJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Page;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Page;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Page;->validAgeRestrictions:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Page;->localInfo:Lcom/google/api/services/plusi/model/LocalEntityInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Page;->classification:Lcom/google/api/services/plusi/model/Classification;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Page;->blocked:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Page;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PageJson;->getValues(Lcom/google/api/services/plusi/model/Page;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Page;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/Page;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Page;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PageJson;->newInstance()Lcom/google/api/services/plusi/model/Page;

    move-result-object v0

    return-object v0
.end method
