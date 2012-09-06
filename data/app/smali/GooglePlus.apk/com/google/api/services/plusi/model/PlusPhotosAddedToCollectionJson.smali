.class public final Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlusPhotosAddedToCollectionJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "collectionId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/PlusPhotoAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "associatedMedia"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/PlusPhotoAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "associatedMediaDisplay"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ownerObfuscatedId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->collectionId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->associatedMedia:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->associatedMediaDisplay:Lcom/google/api/services/plusi/model/PlusPhotoAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;->ownerObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;->getValues(Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollectionJson;->newInstance()Lcom/google/api/services/plusi/model/PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method
