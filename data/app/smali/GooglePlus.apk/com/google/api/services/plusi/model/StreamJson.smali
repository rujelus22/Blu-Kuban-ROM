.class public final Lcom/google/api/services/plusi/model/StreamJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "StreamJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Stream;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/StreamJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/StreamJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/StreamJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/StreamJson;->INSTANCE:Lcom/google/api/services/plusi/model/StreamJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Stream;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DebugJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "debugInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "update"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mixerDebugInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "volume"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/PopularUpdatesJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "popularUpdates"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/StreamParamsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "params"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "continuationToken"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/StreamJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/StreamJson;->INSTANCE:Lcom/google/api/services/plusi/model/StreamJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Stream;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->debugInfo:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->update:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->mixerDebugInfo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->volume:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->popularUpdates:Lcom/google/api/services/plusi/model/PopularUpdates;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->params:Lcom/google/api/services/plusi/model/StreamParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Stream;->continuationToken:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Stream;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/StreamJson;->getValues(Lcom/google/api/services/plusi/model/Stream;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Stream;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/Stream;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Stream;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/StreamJson;->newInstance()Lcom/google/api/services/plusi/model/Stream;

    move-result-object v0

    return-object v0
.end method
