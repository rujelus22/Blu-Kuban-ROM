.class public final Lcom/google/api/services/plusi/model/NavbarProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "NavbarProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/NavbarProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/NavbarProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/NavbarProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NavbarProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/NavbarProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NavbarProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/NavbarProto;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "nextPageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "baseNavUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "prevPageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "numValidNeeded"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "start"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "numItems"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "numValidResults"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/NavbarProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/NavbarProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/NavbarProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/NavbarProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->nextPageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->baseNavUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->prevPageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->numValidNeeded:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->start:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->numItems:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NavbarProto;->numValidResults:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/NavbarProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/NavbarProtoJson;->getValues(Lcom/google/api/services/plusi/model/NavbarProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/NavbarProto;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/NavbarProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NavbarProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/NavbarProtoJson;->newInstance()Lcom/google/api/services/plusi/model/NavbarProto;

    move-result-object v0

    return-object v0
.end method
