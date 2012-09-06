.class public final Lcom/google/api/services/plusi/model/ContactsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ContactsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Contacts;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ContactsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ContactsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ContactsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ContactsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ContactsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Contacts;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/TaggedPhoneJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/TaggedEmailJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "email"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/TaggedImJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "instantMessage"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/TaggedAddressJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "address"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ContactsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ContactsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ContactsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Contacts;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Contacts;->instantMessage:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Contacts;->address:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Contacts;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ContactsJson;->getValues(Lcom/google/api/services/plusi/model/Contacts;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Contacts;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/services/plusi/model/Contacts;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Contacts;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ContactsJson;->newInstance()Lcom/google/api/services/plusi/model/Contacts;

    move-result-object v0

    return-object v0
.end method
