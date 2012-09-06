.class public final Lcom/google/api/services/plusi/model/CircleSharingDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CircleSharingDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/CircleSharingData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CircleSharingDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CircleSharingDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CircleSharingDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CircleSharingDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/CircleSharingDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/CircleSharingData;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/CommonPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "personForDisplay"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "circleName"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sharerName"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "memberKey"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sharerGender"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CircleSharingDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CircleSharingDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/CircleSharingDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/CircleSharingData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->personForDisplay:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->circleName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->sharerName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->memberKey:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CircleSharingData;->sharerGender:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/CircleSharingData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CircleSharingDataJson;->getValues(Lcom/google/api/services/plusi/model/CircleSharingData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/CircleSharingData;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/CircleSharingData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CircleSharingData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CircleSharingDataJson;->newInstance()Lcom/google/api/services/plusi/model/CircleSharingData;

    move-result-object v0

    return-object v0
.end method
