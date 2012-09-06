.class public final Lcom/google/api/services/plusi/model/SimpleProfileJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SimpleProfileJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/SimpleProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SimpleProfileJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SimpleProfileJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SimpleProfileJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SimpleProfileJson;->INSTANCE:Lcom/google/api/services/plusi/model/SimpleProfileJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/SimpleProfile;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "displayName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/CommonContentJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "content"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "profileType"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/UserJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "obfuscatedGaiaId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/CommonConfigJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "config"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/PageJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "page"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SimpleProfileJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SimpleProfileJson;->INSTANCE:Lcom/google/api/services/plusi/model/SimpleProfileJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/SimpleProfile;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->obfuscatedGaiaId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/SimpleProfile;->page:Lcom/google/api/services/plusi/model/Page;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/SimpleProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->getValues(Lcom/google/api/services/plusi/model/SimpleProfile;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/SimpleProfile;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SimpleProfile;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->newInstance()Lcom/google/api/services/plusi/model/SimpleProfile;

    move-result-object v0

    return-object v0
.end method
