.class public final Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "Plusones_Metadata_GlobalCounts_PersonJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;

    invoke-direct {v0}, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;-><init>()V

    sput-object v0, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;->INSTANCE:Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "profileUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "thumbnailUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "displayName"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;->INSTANCE:Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->profileUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;->getValues(Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    invoke-direct {v0}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCounts_PersonJson;->newInstance()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    move-result-object v0

    return-object v0
.end method
