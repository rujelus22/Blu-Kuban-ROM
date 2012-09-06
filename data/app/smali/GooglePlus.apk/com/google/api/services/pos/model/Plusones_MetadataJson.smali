.class public final Lcom/google/api/services/pos/model/Plusones_MetadataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "Plusones_MetadataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/pos/model/Plusones$Metadata;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/pos/model/Plusones_MetadataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/pos/model/Plusones_MetadataJson;

    invoke-direct {v0}, Lcom/google/api/services/pos/model/Plusones_MetadataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->INSTANCE:Lcom/google/api/services/pos/model/Plusones_MetadataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/pos/model/Plusones$Metadata;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/pos/model/Plusones_Metadata_GlobalCountsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "globalCounts"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "adgroupId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "creativeId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "title"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/pos/model/Plusones_MetadataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->INSTANCE:Lcom/google/api/services/pos/model/Plusones_MetadataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/pos/model/Plusones$Metadata;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata;->adgroupId:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata;->creativeId:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/pos/model/Plusones$Metadata;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/pos/model/Plusones$Metadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->getValues(Lcom/google/api/services/pos/model/Plusones$Metadata;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/pos/model/Plusones$Metadata;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/pos/model/Plusones$Metadata;

    invoke-direct {v0}, Lcom/google/api/services/pos/model/Plusones$Metadata;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/pos/model/Plusones_MetadataJson;->newInstance()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v0

    return-object v0
.end method
