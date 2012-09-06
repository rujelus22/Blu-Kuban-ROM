.class public final Lcom/google/api/services/plusi/model/PhotoDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PhotoDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PhotoData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PhotoDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PhotoData;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataActivityOnAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "activityOnAlbum"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "peopleInAlbumAnnotation"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataTaggerOfPhotoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "taggerOfPhoto"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataActivityOnPhotoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "activityOnPhoto"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "taggedInPhoto"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataLayoutMetadataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "layoutMetadata"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataChangedProfilePhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "changedProfilePhoto"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataPhotoShareByOwnerJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "photoShareByOwner"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbumJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "peopleInAlbum"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PhotoDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PhotoDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhotoDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PhotoData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->activityOnAlbum:Lcom/google/api/services/plusi/model/PhotoDataActivityOnAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->peopleInAlbumAnnotation:Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->taggerOfPhoto:Lcom/google/api/services/plusi/model/PhotoDataTaggerOfPhoto;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->activityOnPhoto:Lcom/google/api/services/plusi/model/PhotoDataActivityOnPhoto;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->taggedInPhoto:Lcom/google/api/services/plusi/model/PhotoDataTaggedInPhoto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->layoutMetadata:Lcom/google/api/services/plusi/model/PhotoDataLayoutMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->changedProfilePhoto:Lcom/google/api/services/plusi/model/PhotoDataChangedProfilePhoto;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->photoShareByOwner:Lcom/google/api/services/plusi/model/PhotoDataPhotoShareByOwner;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhotoData;->peopleInAlbum:Lcom/google/api/services/plusi/model/PhotoDataPeopleInAlbum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PhotoData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PhotoDataJson;->getValues(Lcom/google/api/services/plusi/model/PhotoData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PhotoData;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/PhotoData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhotoData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PhotoDataJson;->newInstance()Lcom/google/api/services/plusi/model/PhotoData;

    move-result-object v0

    return-object v0
.end method
