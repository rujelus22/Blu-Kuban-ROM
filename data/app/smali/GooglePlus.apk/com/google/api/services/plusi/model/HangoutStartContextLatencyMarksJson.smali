.class public final Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "HangoutStartContextLatencyMarksJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "serverCreateRoomEnd"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "clientLaunch"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "serverCreateRoomStart"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "serverCreateRedirectEnd"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;->serverCreateRoomEnd:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;->clientLaunch:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;->serverCreateRoomStart:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;->serverCreateRedirectEnd:Ljava/lang/Long;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->getValues(Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;->newInstance()Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

    move-result-object v0

    return-object v0
.end method
