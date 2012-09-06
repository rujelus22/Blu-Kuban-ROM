.class public final Lcom/google/api/services/plusi/model/PresentationObjectJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PresentationObjectJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PresentationObject;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PresentationObjectJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PresentationObjectJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PresentationObjectJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PresentationObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/PresentationObjectJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PresentationObject;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ThumbnailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "proxiedThumbnail"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "faviconUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "embedUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PresentationObjectJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PresentationObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/PresentationObjectJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PresentationObject;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->proxiedThumbnail:Lcom/google/api/services/plusi/model/Thumbnail;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->faviconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->embedUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PresentationObject;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PresentationObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PresentationObjectJson;->getValues(Lcom/google/api/services/plusi/model/PresentationObject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PresentationObject;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/PresentationObject;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PresentationObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PresentationObjectJson;->newInstance()Lcom/google/api/services/plusi/model/PresentationObject;

    move-result-object v0

    return-object v0
.end method
