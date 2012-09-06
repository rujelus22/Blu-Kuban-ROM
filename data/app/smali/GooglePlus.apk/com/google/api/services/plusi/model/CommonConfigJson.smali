.class public final Lcom/google/api/services/plusi/model/CommonConfigJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CommonConfigJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/CommonConfig;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CommonConfigJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CommonConfigJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CommonConfigJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CommonConfigJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommonConfigJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/CommonConfig;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "inAbuseiamQueue"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/IntFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "incomingConnections"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/WallJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "wall"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "googleMeEnabled"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/ProfileStateJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "profileState"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "showFollowerCounts"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/TabVisibilityJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "tabVisibility"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "contactMe"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CommonConfigJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CommonConfigJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommonConfigJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/CommonConfig;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->inAbuseiamQueue:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->incomingConnections:Lcom/google/api/services/plusi/model/IntField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->wall:Lcom/google/api/services/plusi/model/Wall;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->googleMeEnabled:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->profileState:Lcom/google/api/services/plusi/model/ProfileState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->showFollowerCounts:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->tabVisibility:Lcom/google/api/services/plusi/model/TabVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonConfig;->contactMe:Lcom/google/api/services/plusi/model/ContactMe;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/CommonConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CommonConfigJson;->getValues(Lcom/google/api/services/plusi/model/CommonConfig;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/CommonConfig;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/CommonConfig;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CommonConfig;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CommonConfigJson;->newInstance()Lcom/google/api/services/plusi/model/CommonConfig;

    move-result-object v0

    return-object v0
.end method
