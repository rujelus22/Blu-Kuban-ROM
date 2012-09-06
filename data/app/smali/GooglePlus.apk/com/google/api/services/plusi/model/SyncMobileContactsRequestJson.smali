.class public final Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SyncMobileContactsRequestJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "enableTracing"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/MobileContactJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "contact"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ApiaryFieldsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "commonFields"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->device:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->enableTracing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->contact:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;->getValues(Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SyncMobileContactsRequestJson;->newInstance()Lcom/google/api/services/plusi/model/SyncMobileContactsRequest;

    move-result-object v0

    return-object v0
.end method
