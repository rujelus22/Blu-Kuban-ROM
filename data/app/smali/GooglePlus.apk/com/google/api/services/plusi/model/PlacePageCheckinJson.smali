.class public final Lcom/google/api/services/plusi/model/PlacePageCheckinJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlacePageCheckinJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlacePageCheckin;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlacePageCheckinJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlacePageCheckinJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlacePageCheckin;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/MediaProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "permalinkUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dateSec"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/TimeProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "time"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlacePageCheckinJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlacePageCheckinJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlacePageCheckin;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->media:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->permalinkUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->dateSec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;->time:Lcom/google/api/services/plusi/model/TimeProto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlacePageCheckin;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;->getValues(Lcom/google/api/services/plusi/model/PlacePageCheckin;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlacePageCheckin;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/PlacePageCheckin;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlacePageCheckin;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlacePageCheckinJson;->newInstance()Lcom/google/api/services/plusi/model/PlacePageCheckin;

    move-result-object v0

    return-object v0
.end method
