.class public final Lcom/google/api/services/plusi/model/HangoutBroadcastJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "HangoutBroadcastJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/HangoutBroadcast;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/HangoutBroadcastJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutBroadcastJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/HangoutBroadcast;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "attendees"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "youtubeLiveId"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "preferredLanguage"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "region"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "totalAttendeeCount"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "hashedRoomId"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "topicMaybeNsfw"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/HangoutStartContextJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "startContext"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/HangoutConsumerJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "baseHangout"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/HangoutBroadcastJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutBroadcastJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/HangoutBroadcast;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->status:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->attendees:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->youtubeLiveId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->preferredLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->totalAttendeeCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->hashedRoomId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->topicMaybeNsfw:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->startContext:Lcom/google/api/services/plusi/model/HangoutStartContext;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;->baseHangout:Lcom/google/api/services/plusi/model/HangoutConsumer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/HangoutBroadcast;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;->getValues(Lcom/google/api/services/plusi/model/HangoutBroadcast;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/HangoutBroadcast;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutBroadcast;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutBroadcast;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/HangoutBroadcastJson;->newInstance()Lcom/google/api/services/plusi/model/HangoutBroadcast;

    move-result-object v0

    return-object v0
.end method
