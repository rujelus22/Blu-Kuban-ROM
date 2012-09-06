.class public final Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "LiveMapsPPEventJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/LiveMapsPPEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;->INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dateSectionTitle"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "formattedTime"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "titleLink"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "fullDescription"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/LiveMapsProviderDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "providerData"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "formattedDate"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "calendarLink"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "formattedFullTime"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "formattedDow"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;->INSTANCE:Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/LiveMapsPPEvent;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->category:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->dateSectionTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->formattedTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->titleLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->fullDescription:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->providerData:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->formattedDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->calendarLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->formattedFullTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;->formattedDow:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;->getValues(Lcom/google/api/services/plusi/model/LiveMapsPPEvent;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/LiveMapsPPEvent;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/LiveMapsPPEventJson;->newInstance()Lcom/google/api/services/plusi/model/LiveMapsPPEvent;

    move-result-object v0

    return-object v0
.end method
