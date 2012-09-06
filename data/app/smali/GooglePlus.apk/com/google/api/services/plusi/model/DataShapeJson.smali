.class public final Lcom/google/api/services/plusi/model/DataShapeJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataShapeJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataShape;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataShapeJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataShapeJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataShapeJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataShapeJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataShapeJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataShape;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "viewerCanEdit"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "creator"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "viewerCanApprove"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/DataRect32Json;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "bounds"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/DataVideoThumbnailJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "videoThumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "source"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "user"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "suggestion"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataShapeJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataShapeJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataShapeJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataShape;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->status:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->viewerCanEdit:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->creator:Lcom/google/api/services/plusi/model/DataUser;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->url:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->viewerCanApprove:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->bounds:Lcom/google/api/services/plusi/model/DataRect32;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->videoThumbnail:Lcom/google/api/services/plusi/model/DataVideoThumbnail;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->source:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->user:Lcom/google/api/services/plusi/model/DataUser;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->suggestion:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataShape;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataShape;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataShapeJson;->getValues(Lcom/google/api/services/plusi/model/DataShape;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataShape;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/services/plusi/model/DataShape;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataShape;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataShapeJson;->newInstance()Lcom/google/api/services/plusi/model/DataShape;

    move-result-object v0

    return-object v0
.end method
