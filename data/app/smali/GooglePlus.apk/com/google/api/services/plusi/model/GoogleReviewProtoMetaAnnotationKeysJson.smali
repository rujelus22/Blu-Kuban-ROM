.class public final Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "GoogleReviewProtoMetaAnnotationKeysJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "authToken"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "escapedUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "idNamespace"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ownerGaia"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "groups"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;->INSTANCE:Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->authToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->escapedUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->idNamespace:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->ownerGaia:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->author:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;->groups:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;->getValues(Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeysJson;->newInstance()Lcom/google/api/services/plusi/model/GoogleReviewProtoMetaAnnotationKeys;

    move-result-object v0

    return-object v0
.end method
