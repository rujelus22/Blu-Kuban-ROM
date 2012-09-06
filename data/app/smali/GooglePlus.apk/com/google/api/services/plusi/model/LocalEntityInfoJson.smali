.class public final Lcom/google/api/services/plusi/model/LocalEntityInfoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LocalEntityInfoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LocalEntityInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LocalEntityInfoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/LocalEntityInfoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/SearchContextJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "localSearchContext"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/FrontendPaperProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "paper"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/PriceRangeFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "priceRange"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/BusinessHoursFieldJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "businessHours"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "verificationStatus"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/LocalCategoriesJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "categories"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LocalEntityInfoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/LocalEntityInfoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LocalEntityInfo;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->cid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->localSearchContext:Lcom/google/api/services/plusi/model/SearchContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->priceRange:Lcom/google/api/services/plusi/model/PriceRangeField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->businessHours:Lcom/google/api/services/plusi/model/BusinessHoursField;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->verificationStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;->categories:Lcom/google/api/services/plusi/model/LocalCategories;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LocalEntityInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;->getValues(Lcom/google/api/services/plusi/model/LocalEntityInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LocalEntityInfo;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/LocalEntityInfo;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LocalEntityInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LocalEntityInfoJson;->newInstance()Lcom/google/api/services/plusi/model/LocalEntityInfo;

    move-result-object v0

    return-object v0
.end method
