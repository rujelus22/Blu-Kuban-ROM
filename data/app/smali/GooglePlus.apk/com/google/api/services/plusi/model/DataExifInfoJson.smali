.class public final Lcom/google/api/services/plusi/model/DataExifInfoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataExifInfoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataExifInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataExifInfoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataExifInfoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataExifInfoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataExifInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataExifInfoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataExifInfo;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "exposureBias"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "distance"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "cameraMake"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "focalLengthMm"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "isoEquivalent"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/api/services/plusi/model/DataExifInfoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "exifTimeSec"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "exposureTimeSec"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "flashUsed"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "originHash"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "apertureFnumber"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/api/services/plusi/model/DataExifInfoJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "photoTimeSec"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "cameraModel"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataExifInfoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataExifInfoJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataExifInfoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataExifInfo;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->exposureBias:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->distance:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->cameraMake:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->focalLengthMm:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->isoEquivalent:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->exifTimeSec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->exposureTimeSec:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->flashUsed:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->originHash:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->apertureFnumber:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->photoTimeSec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataExifInfo;->cameraModel:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataExifInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataExifInfoJson;->getValues(Lcom/google/api/services/plusi/model/DataExifInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataExifInfo;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/DataExifInfo;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataExifInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataExifInfoJson;->newInstance()Lcom/google/api/services/plusi/model/DataExifInfo;

    move-result-object v0

    return-object v0
.end method
