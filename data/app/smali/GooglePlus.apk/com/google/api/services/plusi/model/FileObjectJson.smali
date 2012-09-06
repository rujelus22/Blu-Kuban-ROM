.class public final Lcom/google/api/services/plusi/model/FileObjectJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FileObjectJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/FileObject;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FileObjectJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FileObjectJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FileObjectJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FileObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/FileObjectJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/FileObject;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ThumbnailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "proxiedThumbnail"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "playerType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "faviconUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "embedUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "description"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FileObjectJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FileObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/FileObjectJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/FileObject;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->proxiedThumbnail:Lcom/google/api/services/plusi/model/Thumbnail;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->playerType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->faviconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->embedUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FileObject;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/FileObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FileObjectJson;->getValues(Lcom/google/api/services/plusi/model/FileObject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/FileObject;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/FileObject;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FileObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FileObjectJson;->newInstance()Lcom/google/api/services/plusi/model/FileObject;

    move-result-object v0

    return-object v0
.end method
