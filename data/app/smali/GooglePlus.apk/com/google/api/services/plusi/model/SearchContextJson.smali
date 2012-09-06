.class public final Lcom/google/api/services/plusi/model/SearchContextJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SearchContextJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/SearchContext;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SearchContextJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SearchContextJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchContextJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SearchContextJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchContextJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/SearchContext;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/SearchContextParamJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "param"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/ChipDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "whatChip"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ChipDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "whereChip"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "whatQuery"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/LocationDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "whereQuery"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SearchContextJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SearchContextJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchContextJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/SearchContext;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->param:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->whatChip:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->whereChip:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->whatQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->location:Lcom/google/api/services/plusi/model/LocationData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchContext;->whereQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/SearchContext;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SearchContextJson;->getValues(Lcom/google/api/services/plusi/model/SearchContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/SearchContext;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/SearchContext;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchContext;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SearchContextJson;->newInstance()Lcom/google/api/services/plusi/model/SearchContext;

    move-result-object v0

    return-object v0
.end method
