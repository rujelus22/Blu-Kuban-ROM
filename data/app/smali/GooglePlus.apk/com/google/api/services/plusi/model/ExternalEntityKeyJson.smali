.class public final Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ExternalEntityKeyJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ExternalEntityKey;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;->INSTANCE:Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ExternalEntityKey;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "domain"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;->INSTANCE:Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ExternalEntityKey;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExternalEntityKey;->domain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExternalEntityKey;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ExternalEntityKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;->getValues(Lcom/google/api/services/plusi/model/ExternalEntityKey;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ExternalEntityKey;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/api/services/plusi/model/ExternalEntityKey;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ExternalEntityKey;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ExternalEntityKeyJson;->newInstance()Lcom/google/api/services/plusi/model/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method
