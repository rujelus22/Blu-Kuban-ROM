.class public final Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FrameEmbedDuplicateFieldsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "height"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "width"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "proxiedImageUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->height:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->width:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->proxiedImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->getValues(Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;->newInstance()Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

    move-result-object v0

    return-object v0
.end method
