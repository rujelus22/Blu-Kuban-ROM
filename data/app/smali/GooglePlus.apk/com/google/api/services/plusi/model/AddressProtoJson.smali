.class public final Lcom/google/api/services/plusi/model/AddressProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "AddressProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/AddressProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/AddressProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/AddressProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AddressProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/AddressProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/AddressProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/AddressProto;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isMailing"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/AddressComponentProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "component"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/AddressLinesProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "koreanAddressMigration"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "unambiguouslyDesignatesFeature"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/AddressLinesProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "addressLines"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/AddressComponentProtoJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "crossStreet"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "deprecatedRawTextDoNotUse"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "isPhysical"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/AddressProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/AddressProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/AddressProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/AddressProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->isMailing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->component:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->koreanAddressMigration:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->unambiguouslyDesignatesFeature:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->addressLines:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->crossStreet:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->deprecatedRawTextDoNotUse:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AddressProto;->isPhysical:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/AddressProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/AddressProtoJson;->getValues(Lcom/google/api/services/plusi/model/AddressProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/AddressProto;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/AddressProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AddressProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/AddressProtoJson;->newInstance()Lcom/google/api/services/plusi/model/AddressProto;

    move-result-object v0

    return-object v0
.end method
