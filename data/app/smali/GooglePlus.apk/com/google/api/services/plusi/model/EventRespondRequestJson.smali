.class public final Lcom/google/api/services/plusi/model/EventRespondRequestJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EventRespondRequestJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EventRespondRequest;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EventRespondRequestJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EventRespondRequestJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventRespondRequestJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EventRespondRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventRespondRequestJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EventRespondRequest;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "eventId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "invitationToken"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/ApiaryFieldsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "commonFields"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "deprecated1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "offNetworkDisplayName"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "enableTracing"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "response"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EventRespondRequestJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EventRespondRequestJson;->INSTANCE:Lcom/google/api/services/plusi/model/EventRespondRequestJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EventRespondRequest;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->eventId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->invitationToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->deprecated1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->offNetworkDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->enableTracing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EventRespondRequest;->response:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EventRespondRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EventRespondRequestJson;->getValues(Lcom/google/api/services/plusi/model/EventRespondRequest;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EventRespondRequest;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/EventRespondRequest;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EventRespondRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EventRespondRequestJson;->newInstance()Lcom/google/api/services/plusi/model/EventRespondRequest;

    move-result-object v0

    return-object v0
.end method
