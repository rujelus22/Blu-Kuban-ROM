.class public final Lcom/google/api/services/plusi/model/EditStatusProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EditStatusProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EditStatusProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EditStatusProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EditStatusProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EditStatusProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EditStatusProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/EditStatusProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EditStatusProto;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "editState"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "important"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "message"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EditStatusProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EditStatusProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/EditStatusProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EditStatusProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EditStatusProto;->editState:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EditStatusProto;->important:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EditStatusProto;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EditStatusProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EditStatusProtoJson;->getValues(Lcom/google/api/services/plusi/model/EditStatusProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EditStatusProto;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/EditStatusProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EditStatusProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EditStatusProtoJson;->newInstance()Lcom/google/api/services/plusi/model/EditStatusProto;

    move-result-object v0

    return-object v0
.end method
