.class public final Lcom/google/api/services/plusi/model/PhoneNumberJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "PhoneNumberJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/PhoneNumber;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/PhoneNumberJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/PhoneNumberJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhoneNumberJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/PhoneNumberJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhoneNumberJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/PhoneNumber;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extension"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "preferredDomesticCarrierCode"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/api/services/plusi/model/PhoneNumberJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "nationalNumber"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "countryCode"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "italianLeadingZero"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rawInput"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "countryCodeSource"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/PhoneNumberJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/PhoneNumberJson;->INSTANCE:Lcom/google/api/services/plusi/model/PhoneNumberJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/PhoneNumber;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->extension:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->preferredDomesticCarrierCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->nationalNumber:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->countryCode:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->italianLeadingZero:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->rawInput:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/PhoneNumber;->countryCodeSource:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/PhoneNumber;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/PhoneNumberJson;->getValues(Lcom/google/api/services/plusi/model/PhoneNumber;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/PhoneNumber;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/PhoneNumber;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/PhoneNumber;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/PhoneNumberJson;->newInstance()Lcom/google/api/services/plusi/model/PhoneNumber;

    move-result-object v0

    return-object v0
.end method
