.class public final Lcom/google/api/services/plusi/model/SearchQueryJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SearchQueryJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/SearchQuery;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SearchQueryJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SearchQueryJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchQueryJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SearchQueryJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchQueryJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/SearchQuery;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sort"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/LocationFilterJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "locationFilter"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/CircleFilterJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "circleFilter"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "filter"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "queryText"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/SquareFilterJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "squareFilter"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SearchQueryJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SearchQueryJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchQueryJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/SearchQuery;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->sort:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->locationFilter:Lcom/google/api/services/plusi/model/LocationFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->circleFilter:Lcom/google/api/services/plusi/model/CircleFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->filter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->queryText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchQuery;->squareFilter:Lcom/google/api/services/plusi/model/SquareFilter;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/SearchQuery;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SearchQueryJson;->getValues(Lcom/google/api/services/plusi/model/SearchQuery;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/SearchQuery;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/SearchQuery;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchQuery;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SearchQueryJson;->newInstance()Lcom/google/api/services/plusi/model/SearchQuery;

    move-result-object v0

    return-object v0
.end method
