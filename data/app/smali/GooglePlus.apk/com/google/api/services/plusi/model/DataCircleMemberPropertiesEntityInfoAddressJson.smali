.class public final Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCircleMemberPropertiesEntityInfoAddressJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "locality"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "country"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "region"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "pobox"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "value"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "streetaddress"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "postalcode"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "extendedaddress"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->locality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->pobox:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->streetaddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->postalcode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;->extendedaddress:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;->getValues(Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddressJson;->newInstance()Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfoAddress;

    move-result-object v0

    return-object v0
.end method
