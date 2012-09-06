.class public final Lcom/google/api/services/plusi/model/MusicRecordingJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MusicRecordingJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/MusicRecording;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MusicRecordingJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MusicRecordingJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MusicRecordingJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MusicRecordingJson;->INSTANCE:Lcom/google/api/services/plusi/model/MusicRecordingJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/MusicRecording;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "about"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/MusicAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "inAlbum"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/MusicGroupJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "byArtist"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/AudioObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "audio"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "buyLinkImageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MusicRecordingJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MusicRecordingJson;->INSTANCE:Lcom/google/api/services/plusi/model/MusicRecordingJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/MusicRecording;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->about:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->inAlbum:Lcom/google/api/services/plusi/model/MusicAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->byArtist:Lcom/google/api/services/plusi/model/MusicGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->audio:Lcom/google/api/services/plusi/model/AudioObject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->buyLinkImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MusicRecording;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/MusicRecording;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MusicRecordingJson;->getValues(Lcom/google/api/services/plusi/model/MusicRecording;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/MusicRecording;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/MusicRecording;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MusicRecording;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MusicRecordingJson;->newInstance()Lcom/google/api/services/plusi/model/MusicRecording;

    move-result-object v0

    return-object v0
.end method
