.class public final Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCircleMemberPropertiesEntityInfoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "primaryLink"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "primaryAddress"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "plusPageType"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "primaryPhone"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;->primaryLink:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;->primaryAddress:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;->plusPageType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;->primaryPhone:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;->type:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;->getValues(Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoJson;->newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

    move-result-object v0

    return-object v0
.end method
