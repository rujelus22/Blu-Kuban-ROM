.class public final Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCirclePropertiesJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCircleProperties;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleProperties;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "forSharing"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "backgroundImageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "lastUpdateTime"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "photoUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "memberCount"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "interactionsRank"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "memberCountOutsideDomain"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "selectedForChat"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "forFollowing"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "circleMode"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "nameSortKey"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "email"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "circleType"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "canHaveOutsideMembers"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCircleProperties;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->category:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->forSharing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->backgroundImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->lastUpdateTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->photoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->memberCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->interactionsRank:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->memberCountOutsideDomain:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->selectedForChat:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->forFollowing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->circleMode:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->nameSortKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->circleType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleProperties;->canHaveOutsideMembers:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCircleProperties;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;->getValues(Lcom/google/api/services/plusi/model/DataCircleProperties;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCircleProperties;
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleProperties;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleProperties;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCirclePropertiesJson;->newInstance()Lcom/google/api/services/plusi/model/DataCircleProperties;

    move-result-object v0

    return-object v0
.end method
