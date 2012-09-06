.class public final Lcom/google/api/services/plusi/model/ReadOptionsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ReadOptionsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ReadOptions;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ReadOptionsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ReadOptionsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReadOptionsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ReadOptionsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReadOptionsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ReadOptions;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ReadOptionsFramesOptionsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "framesOptions"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "includePlusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptionsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "photosOptions"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptionsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "eventUpdateOptions"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptionsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "commentsOptions"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "responseFormat"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "resolvePersons"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "includePhotoContributors"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "optionsCriteria"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ReadOptionsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ReadOptionsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReadOptionsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ReadOptions;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->includePlusEvent:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->photosOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->eventUpdateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->commentsOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->responseFormat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->resolvePersons:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->includePhotoContributors:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReadOptions;->optionsCriteria:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ReadOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ReadOptionsJson;->getValues(Lcom/google/api/services/plusi/model/ReadOptions;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ReadOptions;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/ReadOptions;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReadOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ReadOptionsJson;->newInstance()Lcom/google/api/services/plusi/model/ReadOptions;

    move-result-object v0

    return-object v0
.end method
