.class public final Lcom/google/api/services/plusi/model/PlayMusicTrackJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlayMusicTrackJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlayMusicTrack;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlayMusicTrackJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlayMusicTrackJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlayMusicTrack;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "explicitType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "previewToken"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "storeId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "purchaseStatus"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/OfferJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "offers"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/PlayMusicAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "inAlbum"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/MusicGroupJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "byArtist"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/AudioObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "audio"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlayMusicTrackJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlayMusicTrackJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlayMusicTrack;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->explicitType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->previewToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->storeId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->purchaseStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->offers:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->inAlbum:Lcom/google/api/services/plusi/model/PlayMusicAlbum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->byArtist:Lcom/google/api/services/plusi/model/MusicGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->audio:Lcom/google/api/services/plusi/model/AudioObject;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlayMusicTrack;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;->getValues(Lcom/google/api/services/plusi/model/PlayMusicTrack;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlayMusicTrack;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/PlayMusicTrack;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlayMusicTrack;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlayMusicTrackJson;->newInstance()Lcom/google/api/services/plusi/model/PlayMusicTrack;

    move-result-object v0

    return-object v0
.end method
