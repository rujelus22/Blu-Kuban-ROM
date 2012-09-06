.class public final Lcom/google/api/services/plusi/model/WebReviewProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "WebReviewProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/WebReviewProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/WebReviewProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/WebReviewProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/WebReviewProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/WebReviewProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/WebReviewProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/WebReviewProto;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reviewNum"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "crowded"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sourceName"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "fullReviewLink"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "snippet"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "date"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "title"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/WebReviewProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/WebReviewProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/WebReviewProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/WebReviewProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->reviewNum:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->crowded:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->sourceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->fullReviewLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->snippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->date:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/WebReviewProto;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/WebReviewProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/WebReviewProtoJson;->getValues(Lcom/google/api/services/plusi/model/WebReviewProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/WebReviewProto;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/WebReviewProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/WebReviewProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/WebReviewProtoJson;->newInstance()Lcom/google/api/services/plusi/model/WebReviewProto;

    move-result-object v0

    return-object v0
.end method
