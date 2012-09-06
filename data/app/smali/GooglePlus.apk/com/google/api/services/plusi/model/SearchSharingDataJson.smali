.class public final Lcom/google/api/services/plusi/model/SearchSharingDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SearchSharingDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/SearchSharingData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SearchSharingDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SearchSharingDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchSharingDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SearchSharingDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchSharingDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/SearchSharingData;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "shareType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/SearchQueryJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "query"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/SearchSharingDataSharedQueryJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sharedQuery"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SearchSharingDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SearchSharingDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/SearchSharingDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/SearchSharingData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchSharingData;->shareType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchSharingData;->query:Lcom/google/api/services/plusi/model/SearchQuery;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SearchSharingData;->sharedQuery:Lcom/google/api/services/plusi/model/SearchSharingDataSharedQuery;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/SearchSharingData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SearchSharingDataJson;->getValues(Lcom/google/api/services/plusi/model/SearchSharingData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/SearchSharingData;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/SearchSharingData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SearchSharingData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SearchSharingDataJson;->newInstance()Lcom/google/api/services/plusi/model/SearchSharingData;

    move-result-object v0

    return-object v0
.end method
