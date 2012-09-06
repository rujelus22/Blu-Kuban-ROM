.class public final Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataVideoThumbnailJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataVideoThumbnail;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataVideoThumbnail;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "frameId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "frameHeight"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "frameWidth"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "faceId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/DataRect32Json;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "rect"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "timestampMs"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataVideoThumbnail;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->frameId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->frameHeight:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->frameWidth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->faceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->rect:Lcom/google/api/services/plusi/model/DataRect32;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;->timestampMs:Ljava/lang/Long;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataVideoThumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;->getValues(Lcom/google/api/services/plusi/model/DataVideoThumbnail;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataVideoThumbnail;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/DataVideoThumbnail;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataVideoThumbnail;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;->newInstance()Lcom/google/api/services/plusi/model/DataVideoThumbnail;

    move-result-object v0

    return-object v0
.end method
