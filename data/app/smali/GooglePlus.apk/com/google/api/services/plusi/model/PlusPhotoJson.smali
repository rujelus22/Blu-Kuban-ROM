.class public final Lcom/google/api/services/plusi/model/PlusPhotoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlusPhotoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlusPhoto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlusPhotoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusPhotoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlusPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlusPhoto;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "originalContentUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "photoId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "originalLightboxPhotoId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "originalMediaPlayerUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "isVideo"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/ImageObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "thumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "albumId"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "originalMediaContainerUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "onepickMediaId"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ownerObfuscatedId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlusPhotoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlusPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlusPhoto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->originalContentUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->photoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->originalLightboxPhotoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->originalMediaPlayerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->isVideo:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->thumbnail:Lcom/google/api/services/plusi/model/ImageObject;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->albumId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->originalMediaContainerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->onepickMediaId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhoto;->ownerObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlusPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlusPhotoJson;->getValues(Lcom/google/api/services/plusi/model/PlusPhoto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlusPhoto;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/PlusPhoto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusPhoto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlusPhotoJson;->newInstance()Lcom/google/api/services/plusi/model/PlusPhoto;

    move-result-object v0

    return-object v0
.end method
