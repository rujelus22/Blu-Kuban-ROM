.class public final Lcom/google/api/services/plusi/model/ChipDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ChipDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ChipData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ChipDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ChipDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ChipDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ChipDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/ChipDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ChipData;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "language"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "iconUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "displayText"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "active"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "displayNumber"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "iconCss"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "payload"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ChipDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "subChip"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ChipDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ChipDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/ChipDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ChipData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->language:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->iconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->displayText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->active:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->displayNumber:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->iconCss:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->payload:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ChipData;->subChip:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ChipData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ChipDataJson;->getValues(Lcom/google/api/services/plusi/model/ChipData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ChipData;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/ChipData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ChipData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ChipDataJson;->newInstance()Lcom/google/api/services/plusi/model/ChipData;

    move-result-object v0

    return-object v0
.end method
