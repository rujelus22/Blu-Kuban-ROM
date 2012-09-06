.class public final Lcom/google/api/services/plusi/model/FrameJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FrameJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Frame;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FrameJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FrameJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FrameJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FrameJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrameJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Frame;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "domain"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "userText"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/api/services/plusi/model/FrameJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "timestampMsec"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/SourceJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "source"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFieldsJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "embedDupes"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "iconUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/VerbJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "verb"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "isPrivate"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "embed"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FrameJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FrameJson;->INSTANCE:Lcom/google/api/services/plusi/model/FrameJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Frame;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->domain:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->userText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->timestampMsec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->source:Lcom/google/api/services/plusi/model/Source;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->embedDupes:Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->iconUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->verb:Lcom/google/api/services/plusi/model/Verb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->isPrivate:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Frame;->embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Frame;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FrameJson;->getValues(Lcom/google/api/services/plusi/model/Frame;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Frame;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/Frame;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Frame;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FrameJson;->newInstance()Lcom/google/api/services/plusi/model/Frame;

    move-result-object v0

    return-object v0
.end method
