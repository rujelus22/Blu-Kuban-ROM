.class public final Lcom/google/api/services/plusi/model/PriceLevelProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PriceLevelProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PriceLevelProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PriceLevelProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PriceLevelProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PriceLevelProto;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "labelDisplay"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "labelHintDisplay"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "valueId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PriceLevelProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/PriceLevelProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PriceLevelProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PriceLevelProto;->labelDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PriceLevelProto;->labelHintDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PriceLevelProto;->valueId:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PriceLevelProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;->getValues(Lcom/google/api/services/plusi/model/PriceLevelProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PriceLevelProto;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/api/services/plusi/model/PriceLevelProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PriceLevelProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PriceLevelProtoJson;->newInstance()Lcom/google/api/services/plusi/model/PriceLevelProto;

    move-result-object v0

    return-object v0
.end method
