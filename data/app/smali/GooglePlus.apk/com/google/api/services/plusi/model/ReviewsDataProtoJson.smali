.class public final Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ReviewsDataProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ReviewsDataProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ReviewsDataProto;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reviewCount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "latitudeE6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "cid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "gaiaNicknamePresent"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "country"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "address"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/ReviewsDataProtoExistingUserReviewSectionJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "existingUserReview"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "longitudeE6"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "phone2"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "mapsAuthToken"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "phone1"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "businessName"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "authorNickname"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ReviewsDataProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->reviewCount:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->latitudeE6:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->cid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->gaiaNicknamePresent:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->address:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->existingUserReview:Lcom/google/api/services/plusi/model/ReviewsDataProtoExistingUserReviewSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->longitudeE6:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->phone2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->mapsAuthToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->phone1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->businessName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;->authorNickname:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ReviewsDataProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;->getValues(Lcom/google/api/services/plusi/model/ReviewsDataProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ReviewsDataProto;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/services/plusi/model/ReviewsDataProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ReviewsDataProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ReviewsDataProtoJson;->newInstance()Lcom/google/api/services/plusi/model/ReviewsDataProto;

    move-result-object v0

    return-object v0
.end method
