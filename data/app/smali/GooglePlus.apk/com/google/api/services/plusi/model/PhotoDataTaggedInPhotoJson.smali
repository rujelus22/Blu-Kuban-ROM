.class public final Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PhotoDataTaggedInPhotoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;

    const/16 v1, 0x9

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

    const/4 v2, 0x6

    const-string v3, "isVideo"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/CommonPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "taggerperson"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;->album:Lcom/google/api/services/plusi/model/PhotoDataAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;->taggeeperson:Lcom/google/api/services/plusi/model/CommonPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;->ownerperson:Lcom/google/api/services/plusi/model/CommonPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;->isVideo:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;->taggerperson:Lcom/google/api/services/plusi/model/CommonPerson;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;->getValues(Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;->newInstance()Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;

    move-result-object v0

    return-object v0
.end method
