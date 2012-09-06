.class public final Lcom/google/api/services/plusi/model/DataUserJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataUserJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataUser;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataUserJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataUserJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataUserJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataUserJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataUserJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataUser;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "displayName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "profileUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "profilePhotoUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "photoResultCount"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "deprecatedEmailAddress"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "givenName"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "detectedFaceUrl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataUserJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataUserJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataUserJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataUser;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->profileUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->profilePhotoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->photoResultCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->deprecatedEmailAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->givenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataUser;->detectedFaceUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataUser;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataUserJson;->getValues(Lcom/google/api/services/plusi/model/DataUser;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataUser;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/DataUser;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataUser;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataUserJson;->newInstance()Lcom/google/api/services/plusi/model/DataUser;

    move-result-object v0

    return-object v0
.end method
