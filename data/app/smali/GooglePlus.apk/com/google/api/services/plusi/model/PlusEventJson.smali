.class public final Lcom/google/api/services/plusi/model/PlusEventJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PlusEventJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PlusEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PlusEventJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PlusEventJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusEventJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PlusEventJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusEventJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "startDate"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "endDate"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "creator"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/InviteeSummaryJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "inviteeSummary"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "abuseStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/InviteeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "photoContributor"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/ThemeJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "theme"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/EventCategoryJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "deprecated11"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/InviteeJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "viewerInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "isPublic"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventDisplayContentJson;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "displayContent"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "isBroadcastView"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-class v3, Lcom/google/api/services/plusi/model/EventOptionsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "eventOptions"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "creatorObfuscatedId"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "deprecated6"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-class v3, Lcom/google/api/services/plusi/model/EventTimeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "startTime"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-class v3, Lcom/google/api/services/plusi/model/EventThirdPartyInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "thirdPartyInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-class v3, Lcom/google/api/services/plusi/model/InviteeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "deprecated9"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "photoCount"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-class v3, Lcom/google/api/services/plusi/model/HangoutInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "hangoutInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-class v3, Lcom/google/api/services/plusi/model/ThemeSpecificationJson;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "themeSpecification"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-class v3, Lcom/google/api/services/plusi/model/EventTimeJson;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "endTime"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PlusEventJson;->INSTANCE:Lcom/google/api/services/plusi/model/PlusEventJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PlusEvent;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 58
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->creator:Lcom/google/api/services/plusi/model/EmbedsPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->inviteeSummary:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->abuseStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->photoContributor:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->theme:Lcom/google/api/services/plusi/model/Theme;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->deprecated11:Lcom/google/api/services/plusi/model/EventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->viewerInfo:Lcom/google/api/services/plusi/model/Invitee;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->isBroadcastView:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->deprecated6:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->thirdPartyInfo:Lcom/google/api/services/plusi/model/EventThirdPartyInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->deprecated9:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->photoCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PlusEvent;->endTime:Lcom/google/api/services/plusi/model/EventTime;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PlusEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PlusEventJson;->getValues(Lcom/google/api/services/plusi/model/PlusEvent;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PlusEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PlusEventJson;->newInstance()Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v0

    return-object v0
.end method
