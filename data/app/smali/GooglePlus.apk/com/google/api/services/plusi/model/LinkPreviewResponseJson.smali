.class public final Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LinkPreviewResponseJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LinkPreviewResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/MediaLayoutJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "mediaLayout"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "succeeded"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/TraceRecordsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "backendTrace"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "image"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "embedItem"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "selectedImage"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "blackboxPreviewData"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->mediaLayout:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->succeeded:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->image:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->embedItem:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->selectedImage:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->blackboxPreviewData:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->getValues(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponse;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LinkPreviewResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->newInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    move-result-object v0

    return-object v0
.end method
