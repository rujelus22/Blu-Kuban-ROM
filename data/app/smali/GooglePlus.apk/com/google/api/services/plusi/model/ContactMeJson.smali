.class public final Lcom/google/api/services/plusi/model/ContactMeJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ContactMeJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ContactMe;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ContactMeJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ContactMeJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ContactMeJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ContactMeJson;->INSTANCE:Lcom/google/api/services/plusi/model/ContactMeJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ContactMe;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hangout"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "share"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "email"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ContactMeFieldJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "chat"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ContactMeJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ContactMeJson;->INSTANCE:Lcom/google/api/services/plusi/model/ContactMeJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ContactMe;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactMe;->phone:Lcom/google/api/services/plusi/model/ContactMeField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactMe;->hangout:Lcom/google/api/services/plusi/model/ContactMeField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactMe;->share:Lcom/google/api/services/plusi/model/ContactMeField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactMe;->email:Lcom/google/api/services/plusi/model/ContactMeField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactMe;->chat:Lcom/google/api/services/plusi/model/ContactMeField;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ContactMe;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ContactMeJson;->getValues(Lcom/google/api/services/plusi/model/ContactMe;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ContactMe;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/ContactMe;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ContactMe;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ContactMeJson;->newInstance()Lcom/google/api/services/plusi/model/ContactMe;

    move-result-object v0

    return-object v0
.end method
