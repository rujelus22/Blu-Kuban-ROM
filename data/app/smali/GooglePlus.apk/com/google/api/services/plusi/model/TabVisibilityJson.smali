.class public final Lcom/google/api/services/plusi/model/TabVisibilityJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "TabVisibilityJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/TabVisibility;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/TabVisibilityJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/TabVisibilityJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TabVisibilityJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/TabVisibilityJson;->INSTANCE:Lcom/google/api/services/plusi/model/TabVisibilityJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/TabVisibility;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "showBuzz"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "showVideos"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "showStreamV2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "showPhotos"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "showFrames"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "showBizWelcome"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "showPlusOnes"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "showLocal"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/TabVisibilityJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/TabVisibilityJson;->INSTANCE:Lcom/google/api/services/plusi/model/TabVisibilityJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/TabVisibility;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showBuzz:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showVideos:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showStreamV2:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showPhotos:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showFrames:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showBizWelcome:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showPlusOnes:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TabVisibility;->showLocal:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/TabVisibility;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/TabVisibilityJson;->getValues(Lcom/google/api/services/plusi/model/TabVisibility;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/TabVisibility;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/TabVisibility;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TabVisibility;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/TabVisibilityJson;->newInstance()Lcom/google/api/services/plusi/model/TabVisibility;

    move-result-object v0

    return-object v0
.end method
