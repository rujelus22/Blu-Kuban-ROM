.class public final Lcom/google/api/services/plusi/model/ImageObjectJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ImageObjectJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ImageObject;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ImageObjectJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ImageObjectJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ImageObjectJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ImageObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/ImageObjectJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ImageObject;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "contentUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "about"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "widthPx"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "width"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "heightPx"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "sourceDomain"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "contentLocation"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/ThumbnailJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "proxiedImage"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ImageObjectJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ImageObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/ImageObjectJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ImageObject;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->contentUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->about:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->widthPx:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->width:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->height:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->heightPx:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->sourceDomain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->contentLocation:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->proxiedImage:Lcom/google/api/services/plusi/model/Thumbnail;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ImageObject;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ImageObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ImageObjectJson;->getValues(Lcom/google/api/services/plusi/model/ImageObject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ImageObject;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/services/plusi/model/ImageObject;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ImageObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ImageObjectJson;->newInstance()Lcom/google/api/services/plusi/model/ImageObject;

    move-result-object v0

    return-object v0
.end method
