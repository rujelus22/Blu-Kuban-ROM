.class public final Lcom/google/api/services/plusi/model/LineSnippetJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LineSnippetJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LineSnippet;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LineSnippetJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LineSnippetJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LineSnippetJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LineSnippetJson;->INSTANCE:Lcom/google/api/services/plusi/model/LineSnippetJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LineSnippet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "vehicleTypeName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "nameInColorBox"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "iconAlt"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "nameNonBold"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "tooltip"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "backgroundColor"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "longName"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "iconSrc"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textColor"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LineSnippetJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LineSnippetJson;->INSTANCE:Lcom/google/api/services/plusi/model/LineSnippetJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LineSnippet;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->vehicleTypeName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->nameInColorBox:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->iconAlt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->nameNonBold:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->tooltip:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->backgroundColor:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->longName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->iconSrc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LineSnippet;->textColor:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LineSnippet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LineSnippetJson;->getValues(Lcom/google/api/services/plusi/model/LineSnippet;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LineSnippet;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/LineSnippet;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LineSnippet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LineSnippetJson;->newInstance()Lcom/google/api/services/plusi/model/LineSnippet;

    move-result-object v0

    return-object v0
.end method
