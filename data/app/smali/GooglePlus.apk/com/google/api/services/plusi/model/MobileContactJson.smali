.class public final Lcom/google/api/services/plusi/model/MobileContactJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MobileContactJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/MobileContact;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MobileContactJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MobileContactJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MobileContactJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MobileContactJson;->INSTANCE:Lcom/google/api/services/plusi/model/MobileContactJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/MobileContact;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/MobileContactAffinityJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "affinity"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/MobileContactAggregationJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "aggregation"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MobileContactJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MobileContactJson;->INSTANCE:Lcom/google/api/services/plusi/model/MobileContactJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/MobileContact;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MobileContact;->aggregation:Lcom/google/api/services/plusi/model/MobileContactAggregation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MobileContact;->id:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/MobileContact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MobileContactJson;->getValues(Lcom/google/api/services/plusi/model/MobileContact;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/MobileContact;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/MobileContact;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MobileContact;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MobileContactJson;->newInstance()Lcom/google/api/services/plusi/model/MobileContact;

    move-result-object v0

    return-object v0
.end method
