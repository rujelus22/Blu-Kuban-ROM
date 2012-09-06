.class public final Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ClickTrackingCGIJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ClickTrackingCGI;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;->INSTANCE:Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ClickTrackingCGI;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "elementIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "style"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "nonArchivalVeIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "resultIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "deprecated2"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "deprecated1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "doNotLogUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "veIndex"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "veType"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "pageStart"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "resultGroupElementIndex"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;->INSTANCE:Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ClickTrackingCGI;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->elementIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->style:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->nonArchivalVeIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->resultIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->deprecated2:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->deprecated1:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->doNotLogUrl:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->veIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->veType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->pageStart:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;->resultGroupElementIndex:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ClickTrackingCGI;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;->getValues(Lcom/google/api/services/plusi/model/ClickTrackingCGI;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ClickTrackingCGI;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/services/plusi/model/ClickTrackingCGI;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ClickTrackingCGI;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ClickTrackingCGIJson;->newInstance()Lcom/google/api/services/plusi/model/ClickTrackingCGI;

    move-result-object v0

    return-object v0
.end method
