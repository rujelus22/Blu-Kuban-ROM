.class public final Lcom/google/api/services/plusi/model/MediaProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MediaProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/MediaProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MediaProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MediaProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MediaProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MediaProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/MediaProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/MediaProto;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/MediaProtoThumbnailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "thumbnails"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sourceId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "reviewId"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/UserMediaProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "userMedia"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sourceName"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "authorName"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "originalIndex"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/MediaProtoThumbnailJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "thumbnail"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MediaProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MediaProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/MediaProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/MediaProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->thumbnails:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->sourceId:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->reviewId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->userMedia:Lcom/google/api/services/plusi/model/UserMediaProto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->sourceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->authorName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->originalIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/MediaProto;->thumbnail:Lcom/google/api/services/plusi/model/MediaProtoThumbnail;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/MediaProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MediaProtoJson;->getValues(Lcom/google/api/services/plusi/model/MediaProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/MediaProto;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/MediaProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MediaProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MediaProtoJson;->newInstance()Lcom/google/api/services/plusi/model/MediaProto;

    move-result-object v0

    return-object v0
.end method
