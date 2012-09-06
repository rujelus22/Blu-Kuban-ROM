.class public final Lcom/google/api/services/plusi/model/ScrapBookJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ScrapBookJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ScrapBook;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ScrapBookJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ScrapBookJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ScrapBookJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ScrapBookJson;->INSTANCE:Lcom/google/api/services/plusi/model/ScrapBookJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ScrapBook;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "albumUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "albumId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/MetadataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "metadata"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ScrapBookEntryJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "coverPhotoEntry"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/ScrapBookJson;->JSON_KEY:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "entry"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ScrapBookEntryJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "plusiEntry"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ScrapBookJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ScrapBookJson;->INSTANCE:Lcom/google/api/services/plusi/model/ScrapBookJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ScrapBook;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ScrapBook;->albumUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ScrapBook;->albumId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ScrapBook;->metadata:Lcom/google/api/services/plusi/model/Metadata;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ScrapBook;->coverPhotoEntry:Lcom/google/api/services/plusi/model/ScrapBookEntry;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ScrapBook;->plusiEntry:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ScrapBook;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ScrapBookJson;->getValues(Lcom/google/api/services/plusi/model/ScrapBook;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ScrapBook;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/ScrapBook;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ScrapBook;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ScrapBookJson;->newInstance()Lcom/google/api/services/plusi/model/ScrapBook;

    move-result-object v0

    return-object v0
.end method
