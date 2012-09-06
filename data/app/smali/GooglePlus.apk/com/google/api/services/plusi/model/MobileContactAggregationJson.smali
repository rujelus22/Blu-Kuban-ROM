.class public final Lcom/google/api/services/plusi/model/MobileContactAggregationJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MobileContactAggregationJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/MobileContactAggregation;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MobileContactAggregationJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;->INSTANCE:Lcom/google/api/services/plusi/model/MobileContactAggregationJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/MobileContactAggregation;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "linkedIdentity"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MobileContactAggregationJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;->INSTANCE:Lcom/google/api/services/plusi/model/MobileContactAggregationJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/MobileContactAggregation;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MobileContactAggregation;->linkedIdentity:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/MobileContactAggregation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;->getValues(Lcom/google/api/services/plusi/model/MobileContactAggregation;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/MobileContactAggregation;
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/api/services/plusi/model/MobileContactAggregation;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MobileContactAggregation;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;->newInstance()Lcom/google/api/services/plusi/model/MobileContactAggregation;

    move-result-object v0

    return-object v0
.end method
