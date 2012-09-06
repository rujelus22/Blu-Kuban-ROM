.class public final Lcom/google/api/services/plusi/model/MediaItemJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MediaItemJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MediaItemJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MediaItemJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MediaItemJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MediaItemJson;->INSTANCE:Lcom/google/api/services/plusi/model/MediaItemJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/MediaItem;

    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mimeType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rating"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "shareType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "purchaseUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "albumArtistHtml"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "explicitType"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "durationMinutes"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "thumbnailWidth"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "containerUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "playerHeight"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "playerWidth"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "contentUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "durationSeconds"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "playerUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "isFifeThumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "offsetX"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "offsetY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "albumHtml"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "thumbnailHeight"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MediaItemJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MediaItemJson;->INSTANCE:Lcom/google/api/services/plusi/model/MediaItemJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/MediaItem;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 53
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->rating:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->shareType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->purchaseUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->albumArtistHtml:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->explicitType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->durationMinutes:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailWidth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->containerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->provider:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->playerHeight:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->playerWidth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->contentUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->durationSeconds:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->playerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->isFifeThumbnail:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->offsetX:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->offsetY:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->albumHtml:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->caption:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaItem;->thumbnailHeight:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/MediaItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MediaItemJson;->getValues(Lcom/google/api/services/plusi/model/MediaItem;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/MediaItem;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/services/plusi/model/MediaItem;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MediaItem;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MediaItemJson;->newInstance()Lcom/google/api/services/plusi/model/MediaItem;

    move-result-object v0

    return-object v0
.end method
