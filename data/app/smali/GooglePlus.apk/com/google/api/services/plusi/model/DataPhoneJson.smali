.class public final Lcom/google/api/services/plusi/model/DataPhoneJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataPhoneJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataPhone;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataPhoneJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataPhoneJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPhoneJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataPhoneJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPhoneJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataPhone;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "standardTag"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "canonicalizedForm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "primary"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "customTag"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataPhoneJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataPhoneJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataPhoneJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataPhone;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->standardTag:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->canonicalizedForm:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->primary:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->uri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataPhone;->customTag:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataPhone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataPhoneJson;->getValues(Lcom/google/api/services/plusi/model/DataPhone;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataPhone;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/DataPhone;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataPhone;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataPhoneJson;->newInstance()Lcom/google/api/services/plusi/model/DataPhone;

    move-result-object v0

    return-object v0
.end method
