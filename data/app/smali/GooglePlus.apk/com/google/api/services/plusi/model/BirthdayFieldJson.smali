.class public final Lcom/google/api/services/plusi/model/BirthdayFieldJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "BirthdayFieldJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/BirthdayField;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/BirthdayFieldJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/BirthdayFieldJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/BirthdayFieldJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/BirthdayFieldJson;->INSTANCE:Lcom/google/api/services/plusi/model/BirthdayFieldJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/BirthdayField;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "showYear"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "value"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "month"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "year"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "day"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/MetadataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "metadata"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/BirthdayFieldJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/BirthdayFieldJson;->INSTANCE:Lcom/google/api/services/plusi/model/BirthdayFieldJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/BirthdayField;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->showYear:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->month:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->year:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->day:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/BirthdayField;->metadata:Lcom/google/api/services/plusi/model/Metadata;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/BirthdayField;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/BirthdayFieldJson;->getValues(Lcom/google/api/services/plusi/model/BirthdayField;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/BirthdayField;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/BirthdayField;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/BirthdayField;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/BirthdayFieldJson;->newInstance()Lcom/google/api/services/plusi/model/BirthdayField;

    move-result-object v0

    return-object v0
.end method
