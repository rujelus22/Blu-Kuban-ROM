.class public final Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "NamespaceSpecificDataJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/NamespaceSpecificData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/NamespaceSpecificData;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/CarouselFrameDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "carouselFrameData"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/InterestDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "interestData"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/BirthdayDataJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "birthdayData"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/EventFrameJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "eventFrameData"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/PhotoDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "photoData"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/PlusPageDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pluspageData"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/google/api/services/plusi/model/CircleSharingDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "circlesharingData"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Lcom/google/api/services/plusi/model/EventPhotoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "eventPhotoData"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/PlusOnePostDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "plusonePostData"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lcom/google/api/services/plusi/model/A2aDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "a2aData"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-class v3, Lcom/google/api/services/plusi/model/EventActivityDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "eventActivityData"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/SearchSharingDataJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "searchSharingData"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-class v3, Lcom/google/api/services/plusi/model/SharedPlusOneJson;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "plusoneData"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-class v3, Lcom/google/api/services/plusi/model/EventCommentJson;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "eventCommentData"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;->INSTANCE:Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/NamespaceSpecificData;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->carouselFrameData:Lcom/google/api/services/plusi/model/CarouselFrameData;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->interestData:Lcom/google/api/services/plusi/model/InterestData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->birthdayData:Lcom/google/api/services/plusi/model/BirthdayData;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->eventFrameData:Lcom/google/api/services/plusi/model/EventFrame;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->photoData:Lcom/google/api/services/plusi/model/PhotoData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->pluspageData:Lcom/google/api/services/plusi/model/PlusPageData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->circlesharingData:Lcom/google/api/services/plusi/model/CircleSharingData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->eventPhotoData:Lcom/google/api/services/plusi/model/EventPhoto;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->plusonePostData:Lcom/google/api/services/plusi/model/PlusOnePostData;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->a2aData:Lcom/google/api/services/plusi/model/A2aData;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->eventActivityData:Lcom/google/api/services/plusi/model/EventActivityData;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->searchSharingData:Lcom/google/api/services/plusi/model/SearchSharingData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->plusoneData:Lcom/google/api/services/plusi/model/SharedPlusOne;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;->eventCommentData:Lcom/google/api/services/plusi/model/EventComment;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/NamespaceSpecificData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;->getValues(Lcom/google/api/services/plusi/model/NamespaceSpecificData;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/NamespaceSpecificData;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/services/plusi/model/NamespaceSpecificData;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/NamespaceSpecificData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/NamespaceSpecificDataJson;->newInstance()Lcom/google/api/services/plusi/model/NamespaceSpecificData;

    move-result-object v0

    return-object v0
.end method
