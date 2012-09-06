.class public final Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataTimedTextMetaDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataTimedTextMetaData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/DataTimedTextTrackJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "track"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ttsUrl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataTimedTextMetaData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;->track:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;->ttsUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;->getValues(Lcom/google/api/services/plusi/model/DataTimedTextMetaData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataTimedTextMetaData;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataTimedTextMetaData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataTimedTextMetaDataJson;->newInstance()Lcom/google/api/services/plusi/model/DataTimedTextMetaData;

    move-result-object v0

    return-object v0
.end method
