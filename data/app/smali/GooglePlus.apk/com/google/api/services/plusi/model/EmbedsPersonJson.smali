.class public final Lcom/google/api/services/plusi/model/EmbedsPersonJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EmbedsPersonJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/EmbedsPerson;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/EmbedsPersonJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedsPersonJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/EmbedsPersonJson;->INSTANCE:Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "email"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ownerObfuscatedId"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/EmbedsPersonJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/EmbedsPersonJson;->INSTANCE:Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/EmbedsPerson;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->gender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/EmbedsPerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/EmbedsPersonJson;->getValues(Lcom/google/api/services/plusi/model/EmbedsPerson;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/EmbedsPerson;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/EmbedsPerson;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/EmbedsPersonJson;->newInstance()Lcom/google/api/services/plusi/model/EmbedsPerson;

    move-result-object v0

    return-object v0
.end method
