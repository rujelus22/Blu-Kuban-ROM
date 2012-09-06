.class public final Lcom/google/api/services/plusi/model/ProfilesLinkJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ProfilesLinkJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ProfilesLink;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ProfilesLinkJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ProfilesLinkJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProfilesLinkJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ProfilesLinkJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProfilesLinkJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ProfilesLink;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "label"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/VerificationJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "verification"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "rel"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "normalizedUri"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "faviconImgUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "isVerified"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/MetadataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "metadata"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ProfilesLinkJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ProfilesLinkJson;->INSTANCE:Lcom/google/api/services/plusi/model/ProfilesLinkJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ProfilesLink;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->verification:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->rel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->normalizedUri:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->faviconImgUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->isVerified:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ProfilesLink;->metadata:Lcom/google/api/services/plusi/model/Metadata;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ProfilesLink;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ProfilesLinkJson;->getValues(Lcom/google/api/services/plusi/model/ProfilesLink;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ProfilesLink;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/ProfilesLink;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ProfilesLink;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ProfilesLinkJson;->newInstance()Lcom/google/api/services/plusi/model/ProfilesLink;

    move-result-object v0

    return-object v0
.end method
