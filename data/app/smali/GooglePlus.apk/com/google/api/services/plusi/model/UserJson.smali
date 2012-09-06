.class public final Lcom/google/api/services/plusi/model/UserJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "UserJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/User;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/UserJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/UserJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/UserJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/UserJson;->INSTANCE:Lcom/google/api/services/plusi/model/UserJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/User;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/RelationshipStatusJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "relationshipStatus"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "publicUsername"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/StringFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "braggingRights"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/NameJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "profilePageCrawlable"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/GenderJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "canonicalProfileUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/LocationsJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "locations"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/EducationsJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "educations"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Lcom/google/api/services/plusi/model/OtherNamesJson;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "otherNames"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "enableLocal"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lcom/google/api/services/plusi/model/BirthdayFieldJson;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-class v3, Lcom/google/api/services/plusi/model/EmploymentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "employments"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/NameDisplayOptionsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "nameDisplayOptions"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-class v3, Lcom/google/api/services/plusi/model/RelationshipInterestsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "relationshipInterests"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-class v3, Lcom/google/api/services/plusi/model/StringFieldJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "occupation"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/UserJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/UserJson;->INSTANCE:Lcom/google/api/services/plusi/model/UserJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/User;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->relationshipStatus:Lcom/google/api/services/plusi/model/RelationshipStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->publicUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->braggingRights:Lcom/google/api/services/plusi/model/StringField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->profilePageCrawlable:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->gender:Lcom/google/api/services/plusi/model/Gender;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->canonicalProfileUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->otherNames:Lcom/google/api/services/plusi/model/OtherNames;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->enableLocal:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->birthday:Lcom/google/api/services/plusi/model/BirthdayField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->nameDisplayOptions:Lcom/google/api/services/plusi/model/NameDisplayOptions;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->relationshipInterests:Lcom/google/api/services/plusi/model/RelationshipInterests;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/User;->occupation:Lcom/google/api/services/plusi/model/StringField;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/UserJson;->getValues(Lcom/google/api/services/plusi/model/User;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/User;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/api/services/plusi/model/User;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/User;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/UserJson;->newInstance()Lcom/google/api/services/plusi/model/User;

    move-result-object v0

    return-object v0
.end method
