.class public final Lcom/google/api/services/plusi/model/MetadataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "MetadataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/MetadataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/MetadataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/MetadataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/MetadataJson;->INSTANCE:Lcom/google/api/services/plusi/model/MetadataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Metadata;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "focusGroup"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "aclModelJson"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "editable"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "useDefaultAcl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "scope"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "publicAcl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/MetadataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/MetadataJson;->INSTANCE:Lcom/google/api/services/plusi/model/MetadataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Metadata;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->focusGroup:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->aclModelJson:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->editable:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->useDefaultAcl:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->scope:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Metadata;->publicAcl:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Metadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/MetadataJson;->getValues(Lcom/google/api/services/plusi/model/Metadata;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Metadata;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/Metadata;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Metadata;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/MetadataJson;->newInstance()Lcom/google/api/services/plusi/model/Metadata;

    move-result-object v0

    return-object v0
.end method
