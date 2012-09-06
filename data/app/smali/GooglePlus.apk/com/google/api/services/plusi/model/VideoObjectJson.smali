.class public final Lcom/google/api/services/plusi/model/VideoObjectJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "VideoObjectJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/VideoObject;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/VideoObjectJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/VideoObjectJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/VideoObjectJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/VideoObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/VideoObjectJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/VideoObject;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "contentUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/ThumbnailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "proxiedThumbnail"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "about"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "widthPx"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "unlisted"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "author"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "playerType"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "paid"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "heightPx"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "width"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "embedUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "contentLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/VideoObjectJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/VideoObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/VideoObjectJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/VideoObject;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->contentUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->proxiedThumbnail:Lcom/google/api/services/plusi/model/Thumbnail;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->about:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->widthPx:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->unlisted:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->playerType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->paid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->height:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->heightPx:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->caption:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->width:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->duration:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->embedUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->contentLocation:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/VideoObject;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/VideoObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/VideoObjectJson;->getValues(Lcom/google/api/services/plusi/model/VideoObject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/VideoObject;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/api/services/plusi/model/VideoObject;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/VideoObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/VideoObjectJson;->newInstance()Lcom/google/api/services/plusi/model/VideoObject;

    move-result-object v0

    return-object v0
.end method
