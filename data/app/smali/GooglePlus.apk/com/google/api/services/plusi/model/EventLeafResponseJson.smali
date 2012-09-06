.class public final Lcom/google/api/services/plusi/model/EventLeafResponseJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EventLeafResponseJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EventLeafResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EventLeafResponseJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EventLeafResponseJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventLeafResponseJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventLeafResponseJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EventLeafResponse;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "selectedCriteria"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "plusEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/StreamJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "stream"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/TraceRecordsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "backendTrace"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "resumeToken"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "state"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/CommentJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "comments"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/UpdateJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "update"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "activityId"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/EventFrameJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "frames"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "pollingToken"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Lcom/google/api/services/plusi/model/ReadResponsePhotosDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "photosData"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EventLeafResponseJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventLeafResponseJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EventLeafResponse;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->selectedCriteria:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->resumeToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->state:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->comments:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->update:Lcom/google/api/services/plusi/model/Update;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->activityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->frames:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->pollingToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventLeafResponse;->photosData:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EventLeafResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->getValues(Lcom/google/api/services/plusi/model/EventLeafResponse;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EventLeafResponse;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/EventLeafResponse;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventLeafResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EventLeafResponseJson;->newInstance()Lcom/google/api/services/plusi/model/EventLeafResponse;

    move-result-object v0

    return-object v0
.end method
