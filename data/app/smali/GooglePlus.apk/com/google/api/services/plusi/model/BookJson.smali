.class public final Lcom/google/api/services/plusi/model/BookJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "BookJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Book;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/BookJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/BookJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/BookJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/BookJson;->INSTANCE:Lcom/google/api/services/plusi/model/BookJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Book;

    const/16 v1, 0x12

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

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "logoImageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "titleIconUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/AggregateRatingJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "aggregateRating"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/OfferJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "offers"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "buttonStyle"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "logoHrefUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/BookJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/BookJson;->INSTANCE:Lcom/google/api/services/plusi/model/BookJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Book;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->about:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->logoImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->titleIconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->aggregateRating:Lcom/google/api/services/plusi/model/AggregateRating;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->offers:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->buttonStyle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->logoHrefUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Book;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Book;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/BookJson;->getValues(Lcom/google/api/services/plusi/model/Book;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Book;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/services/plusi/model/Book;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Book;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/BookJson;->newInstance()Lcom/google/api/services/plusi/model/Book;

    move-result-object v0

    return-object v0
.end method
