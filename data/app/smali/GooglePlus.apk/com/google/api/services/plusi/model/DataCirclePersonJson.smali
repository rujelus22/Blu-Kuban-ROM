.class public final Lcom/google/api/services/plusi/model/DataCirclePersonJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCirclePersonJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCirclePerson;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePersonJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCirclePersonJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCirclePersonJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCirclePersonJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePersonJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataMembershipJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "membership"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "joinKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/DataContactJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "primaryContact"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberIdJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "memberId"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "memberProperties"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCirclePersonJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCirclePersonJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCirclePersonJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCirclePerson;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCirclePerson;->membership:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCirclePerson;->joinKey:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCirclePerson;->primaryContact:Lcom/google/api/services/plusi/model/DataContact;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberProperties:Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCirclePerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCirclePersonJson;->getValues(Lcom/google/api/services/plusi/model/DataCirclePerson;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCirclePerson;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCirclePerson;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCirclePersonJson;->newInstance()Lcom/google/api/services/plusi/model/DataCirclePerson;

    move-result-object v0

    return-object v0
.end method
