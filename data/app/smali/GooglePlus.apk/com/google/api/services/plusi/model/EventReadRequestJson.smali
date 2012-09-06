.class public final Lcom/google/api/services/plusi/model/EventReadRequestJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EventReadRequestJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EventReadRequest;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EventReadRequestJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EventReadRequestJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventReadRequestJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EventReadRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventReadRequestJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EventReadRequest;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "authToken"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "resumeToken"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "invitationToken"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/ReadOptionsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "readOptions"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "contentFormat"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/ApiaryFieldsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "commonFields"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/EventSelectorJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "eventSelector"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "enableTracing"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pollingToken"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EventReadRequestJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EventReadRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventReadRequestJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EventReadRequest;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->authToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->resumeToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->invitationToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->readOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->contentFormat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->eventSelector:Lcom/google/api/services/plusi/model/EventSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->enableTracing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventReadRequest;->pollingToken:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EventReadRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EventReadRequestJson;->getValues(Lcom/google/api/services/plusi/model/EventReadRequest;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EventReadRequest;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/EventReadRequest;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventReadRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EventReadRequestJson;->newInstance()Lcom/google/api/services/plusi/model/EventReadRequest;

    move-result-object v0

    return-object v0
.end method
