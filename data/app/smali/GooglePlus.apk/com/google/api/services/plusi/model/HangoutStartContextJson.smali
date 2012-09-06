.class public final Lcom/google/api/services/plusi/model/HangoutStartContextJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "HangoutStartContextJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/HangoutStartContext;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutStartContextJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutStartContextJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/HangoutStartContextJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/HangoutStartContext;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "topic"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "shouldMuteVideo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flippy"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "externalKey"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hangoutId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "source"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "create"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "nick"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "activityId"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "shouldAutoInvite"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "deprecatedCallback"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "hangoutType"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "referringUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "appId"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "circleId"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "contextId"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "appData"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lcom/google/api/services/plusi/model/HangoutStartContextInviteeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "invitee"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "callback"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarksJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "latencyMarks"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-class v3, Lcom/google/api/services/plusi/model/HangoutStartContextInvitationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "invitation"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "profileId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/HangoutStartContextJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/HangoutStartContextJson;->INSTANCE:Lcom/google/api/services/plusi/model/HangoutStartContextJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/HangoutStartContext;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 53
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->topic:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->shouldMuteVideo:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->flippy:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->externalKey:Lcom/google/api/services/plusi/model/ExternalEntityKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->hangoutId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->source:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->create:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->nick:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->activityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->shouldAutoInvite:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->deprecatedCallback:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->hangoutType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->referringUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->appId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->circleId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->contextId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->appData:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->invitee:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->callback:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->latencyMarks:Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->invitation:Lcom/google/api/services/plusi/model/HangoutStartContextInvitation;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HangoutStartContext;->profileId:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/HangoutStartContext;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/HangoutStartContextJson;->getValues(Lcom/google/api/services/plusi/model/HangoutStartContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/HangoutStartContext;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/services/plusi/model/HangoutStartContext;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HangoutStartContext;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/HangoutStartContextJson;->newInstance()Lcom/google/api/services/plusi/model/HangoutStartContext;

    move-result-object v0

    return-object v0
.end method
