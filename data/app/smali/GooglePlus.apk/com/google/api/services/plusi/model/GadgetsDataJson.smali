.class public final Lcom/google/api/services/plusi/model/GadgetsDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "GadgetsDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/GadgetsData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/GadgetsDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/GadgetsDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GadgetsDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/GadgetsDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/GadgetsDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/GadgetsData;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gadgetMessageTitle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "gadgetMessageImageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gadgetImageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "anchorText"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "gadgetId"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "gadgetMessage"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "navParams"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "gadgetThumbnailUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "userAnnotation"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "gadgetName"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "anchorUrl"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/GadgetsDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/GadgetsDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/GadgetsDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/GadgetsData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetMessageTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetMessageImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->anchorText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetMessage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->navParams:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetThumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->userAnnotation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->gadgetName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GadgetsData;->anchorUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/GadgetsData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/GadgetsDataJson;->getValues(Lcom/google/api/services/plusi/model/GadgetsData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/GadgetsData;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/GadgetsData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GadgetsData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/GadgetsDataJson;->newInstance()Lcom/google/api/services/plusi/model/GadgetsData;

    move-result-object v0

    return-object v0
.end method
