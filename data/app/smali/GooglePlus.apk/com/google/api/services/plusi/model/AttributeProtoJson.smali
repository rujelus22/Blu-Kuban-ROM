.class public final Lcom/google/api/services/plusi/model/AttributeProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "AttributeProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/AttributeProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/AttributeProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AttributeProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/AttributeProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/AttributeProto;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "attribution"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "labelAttribution"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "labelId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "labelDisplay"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "valueDisplaySuffix"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValueJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "value"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "valueDisplay"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "valueSpaceId"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ved"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "valueAttribution"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/AttributeProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/AttributeProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/AttributeProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/AttributeProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->attribution:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->labelAttribution:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->labelId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->labelDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->valueDisplaySuffix:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->value:Lcom/google/api/services/plusi/model/AttributeProtoCanonicalValue;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->valueDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->valueSpaceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->ved:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/AttributeProto;->valueAttribution:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/AttributeProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/AttributeProtoJson;->getValues(Lcom/google/api/services/plusi/model/AttributeProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/AttributeProto;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/services/plusi/model/AttributeProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/AttributeProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/AttributeProtoJson;->newInstance()Lcom/google/api/services/plusi/model/AttributeProto;

    move-result-object v0

    return-object v0
.end method
