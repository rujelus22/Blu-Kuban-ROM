.class public final Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataScrapbookInfoFullBleedPhotoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "photoOwnerType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/DataScrapbookInfoOffsetJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "offset"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;->photoOwnerType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;->offset:Lcom/google/api/services/plusi/model/DataScrapbookInfoOffset;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;->getValues(Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhotoJson;->newInstance()Lcom/google/api/services/plusi/model/DataScrapbookInfoFullBleedPhoto;

    move-result-object v0

    return-object v0
.end method
