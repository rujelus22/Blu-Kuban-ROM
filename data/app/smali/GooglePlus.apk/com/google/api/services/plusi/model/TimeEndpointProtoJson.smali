.class public final Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "TimeEndpointProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/TimeEndpointProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/TimeEndpointProto;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "week"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "weekType"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hour"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "month"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "second"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "year"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dayType"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "day"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "minute"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/TimeEndpointProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->week:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->weekType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->hour:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->month:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->second:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->year:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->dayType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->day:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;->minute:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/TimeEndpointProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;->getValues(Lcom/google/api/services/plusi/model/TimeEndpointProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/TimeEndpointProto;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/TimeEndpointProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TimeEndpointProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/TimeEndpointProtoJson;->newInstance()Lcom/google/api/services/plusi/model/TimeEndpointProto;

    move-result-object v0

    return-object v0
.end method
