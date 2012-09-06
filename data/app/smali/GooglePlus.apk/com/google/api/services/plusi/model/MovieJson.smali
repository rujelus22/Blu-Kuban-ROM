.class public final Lcom/google/api/services/plusi/model/MovieJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MovieJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Movie;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MovieJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MovieJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MovieJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MovieJson;->INSTANCE:Lcom/google/api/services/plusi/model/MovieJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Movie;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "titleIconUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "about"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "producer"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "logoImageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "actor"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "director"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/AggregateRatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "aggregateRating"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/OfferJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "offers"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "buttonStyle"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "logoHrefUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MovieJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MovieJson;->INSTANCE:Lcom/google/api/services/plusi/model/MovieJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Movie;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->titleIconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->about:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->producer:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->logoImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->actor:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->director:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->aggregateRating:Lcom/google/api/services/plusi/model/AggregateRating;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->offers:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->buttonStyle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->logoHrefUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Movie;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Movie;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MovieJson;->getValues(Lcom/google/api/services/plusi/model/Movie;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Movie;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/services/plusi/model/Movie;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Movie;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MovieJson;->newInstance()Lcom/google/api/services/plusi/model/Movie;

    move-result-object v0

    return-object v0
.end method
