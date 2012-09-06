.class public final Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PhotoDataPeopleInAlbumJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "album"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/CommonPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "taggeeperson"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/CommonPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ownerperson"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;->album:Lcom/google/api/services/plusi/model/PhotoDataAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;->taggeeperson:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;->ownerperson:Lcom/google/api/services/plusi/model/CommonPerson;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;->getValues(Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;->newInstance()Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    move-result-object v0

    return-object v0
.end method
