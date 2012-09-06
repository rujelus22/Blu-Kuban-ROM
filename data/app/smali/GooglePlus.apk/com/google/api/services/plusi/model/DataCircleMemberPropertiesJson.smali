.class public final Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCircleMemberPropertiesJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCircleMemberProperties;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "inIncomingCircle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "lastUpdateTime"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "photoUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "disallowedInteractions"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "firstNameSortKey"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "contactId"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "interactionsRankSortKey"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "lastNameSortKey"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "occupation"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/DataHovercardBannerInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "bannerInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "verified"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "inSameVisibilityGroup"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "entityInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "profileType"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-class v3, Lcom/google/api/services/plusi/model/DataEmailJson;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "email"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "tagLine"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "company"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-class v3, Lcom/google/api/services/plusi/model/DataPhoneJson;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesAddressJson;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "address"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "focusPhotoUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "school"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "displayName"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "firstName"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "esUser"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "contact"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "interactionsRank"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "inviter"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCircleMemberProperties;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 60
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->inIncomingCircle:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->lastUpdateTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->photoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->disallowedInteractions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->firstNameSortKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->contactId:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->interactionsRankSortKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->lastNameSortKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->occupation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->bannerInfo:Lcom/google/api/services/plusi/model/DataHovercardBannerInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->verified:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->inSameVisibilityGroup:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->entityInfo:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->profileType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->location:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->email:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->tagLine:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->company:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->phone:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->address:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->focusPhotoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->school:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->firstName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->gender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->esUser:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->contact:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->interactionsRank:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->inviter:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;->getValues(Lcom/google/api/services/plusi/model/DataCircleMemberProperties;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberProperties;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;->newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    move-result-object v0

    return-object v0
.end method
