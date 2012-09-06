.class public Lcom/google/android/finsky/api/DfeApiImpl;
.super Ljava/lang/Object;
.source "DfeApiImpl.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;,
        Lcom/google/android/finsky/api/DfeApiImpl$TocListener;
    }
.end annotation


# static fields
.field private static final BULK_DETAILS_TIMEOUT_MS:I

.field private static final DEFAULT_BACKOFF_MULT:F

.field private static final DEFAULT_MAX_RETRIES:I

.field private static final PURCHASE_TIMEOUT_MS:I

.field private static final VERIFY_ASSOCIATION_MAX_RETRIES:I

.field private static final VERIFY_ASSOCIATION_TIMEOUT_MS:I


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    .line 76
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    .line 79
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    .line 83
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    .line 90
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_MAX_RETRIES:I

    .line 93
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_BACKOFF_MULT:F

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V
    .registers 3
    .parameter "queue"
    .parameter "apiContext"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    .line 100
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method private static encodeServerToken([B)Ljava/lang/String;
    .registers 2
    .parameter "serverToken"

    .prologue
    .line 593
    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;
    .registers 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, encodedQuery:Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 107
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, params:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_2e

    aget-object v6, v0, v2

    .line 109
    .local v6, param:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, pair:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2b

    .line 111
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 115
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #param:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :cond_2e
    return-object v4
.end method

.method public static getRecommendationsUrl(I)Ljava/lang/String;
    .registers 4
    .parameter "backendId"

    .prologue
    .line 727
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->BESPOKE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "c"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;
    .registers 8
    .parameter "baseUrl"
    .parameter "filterByDevice"
    .parameter "versionFilter"
    .parameter "ratingFilter"
    .parameter "sortOrder"

    .prologue
    .line 237
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 238
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p1, :cond_11

    .line 239
    const-string v1, "dfil"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    :cond_11
    if-lez p2, :cond_1c

    .line 242
    const-string v1, "vc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    :cond_1c
    if-lez p3, :cond_27

    .line 246
    const-string v1, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    :cond_27
    const-string v1, "sort"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;
    .registers 6

    .prologue
    .line 656
    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    return-object v0
.end method


# virtual methods
.method public acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ACCEPT_TOS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 269
    const-string v1, "tost"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz p2, :cond_21

    .line 271
    const-string v1, "toscme"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ACK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 260
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ADDREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 206
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "rating"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public addToLibrary(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 673
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v1, "libid"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v1, "mlat"

    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->REQUEST_PARAM_VALUE_MODIFY_LIBRARY_ACTION_TYPE_ADD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public checkInstrument(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 482
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    if-eqz p2, :cond_3c

    .line 484
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 488
    :cond_3c
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public checkPromoOffers(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_PROMO_OFFER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 498
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 499
    if-eqz p1, :cond_1f

    .line 500
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_30

    .line 504
    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_30
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 414
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 415
    const-string v1, "doc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p2, :cond_28

    .line 417
    const-string v1, "cart"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 420
    const-string v1, "vc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_40
    if-eqz p3, :cond_47

    .line 424
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_47
    if-eqz p4, :cond_6d

    .line 427
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 431
    :cond_6d
    if-eqz p5, :cond_76

    .line 432
    const-string v1, "ctos"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_76
    if-eqz p6, :cond_7d

    .line 435
    const-string v1, "pc"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_7d
    if-eqz p7, :cond_84

    .line 438
    const-string v1, "chdi"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_84
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 557
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->DELIVERY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 560
    if-eqz p3, :cond_21

    .line 561
    invoke-static {p3}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 564
    :cond_21
    if-eqz p4, :cond_2c

    .line 565
    const-string v0, "vc"

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 567
    :cond_2c
    if-eqz p5, :cond_3c

    .line 568
    const-string v0, "bvc"

    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 571
    const-string v0, "pf"

    invoke-virtual {v1, v0, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 573
    :cond_3c
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 576
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->FLAG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 178
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "cft"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method public getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 282
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v3, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;-><init>()V

    .line 289
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 290
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 291
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-virtual {v3, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_11

    .line 294
    :cond_21
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$1;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApiImpl$1;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setShouldCache(Z)V

    .line 311
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_MAX_RETRIES:I

    sget v4, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_BACKOFF_MULT:F

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 313
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;
    .registers 10
    .parameter "corpus"
    .parameter "libraryId"
    .parameter "docType"
    .parameter "serverToken"

    .prologue
    .line 581
    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "dt"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "libid"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 585
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p4, :cond_2b

    .line 586
    invoke-static {p4}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, encodedServerToken:Ljava/lang/String;
    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 589
    .end local v0           #encodedServerToken:Ljava/lang/String;
    :cond_2b
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 396
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 400
    invoke-static {v6}, Lcom/google/android/finsky/api/DfeApiImpl;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 401
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 404
    :cond_3a
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendations(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 609
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApiImpl;->getRecommendationsUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 613
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIII",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    new-instance v4, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Lcom/android/volley/Response$Listener;)V

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 138
    invoke-virtual {v0, p3}, Lcom/google/android/finsky/api/DfeRequest;->setAllowMultipleResponses(Z)V

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_INITIATE_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 517
    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public instrumentSetupInfo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 633
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->INSTRUMENT_SETUP_INFO_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 637
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v1, "if"

    invoke-virtual {v0, v1, v6}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    if-eqz p2, :cond_26

    .line 640
    const-string v1, "cc"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_26
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDetailsCache(Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 710
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 712
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 714
    return-void
.end method

.method public invalidateListCache(Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 720
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 722
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 724
    return-void
.end method

.method public invalidateRecommendationsCache(I)V
    .registers 4
    .parameter "backendId"

    .prologue
    .line 662
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApiImpl;->getRecommendationsUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl;->invalidateListCache(Ljava/lang/String;Z)V

    .line 665
    return-void
.end method

.method public invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 697
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    .line 700
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 702
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p6, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 704
    return-void
.end method

.method public log(Lcom/google/android/finsky/remoting/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Log$LogRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$LogResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->LOG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 539
    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setAvoidBulkCancel()V

    .line 540
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 362
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 363
    const-string v1, "doc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    .line 366
    const-string v1, "vc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_43
    if-eqz p3, :cond_4a

    .line 370
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_4a
    if-eqz p4, :cond_68

    .line 373
    const-string v1, "shpn"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "shh"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "shvc"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-nez p7, :cond_63

    .line 380
    const-string p7, ""

    .line 382
    :cond_63
    const-string v1, "payload"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_68
    if-eqz p8, :cond_8e

    .line 385
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 389
    :cond_8e
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 18
    .parameter "doc"
    .parameter "offerType"
    .parameter "authToken"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p4, extraPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public rateReview(Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v6, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->RATEREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "revId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v6, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->GTFO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "crt"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 622
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 625
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public redeemGiftCard(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REDEEM_GIFT_CARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 652
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public removeFromLibrary(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 686
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v1, "libid"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v1, "mlat"

    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->REQUEST_PARAM_VALUE_MODIFY_LIBRARY_ACTION_TYPE_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public replicateLibrary(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 550
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->RESOLVE_LINK:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 600
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 603
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REVOKE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 449
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 450
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PLUSONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 322
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "rating"

    if-eqz p2, :cond_29

    const/4 v1, 0x1

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0

    .line 323
    :cond_29
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 460
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 462
    :cond_9
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 466
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 467
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_33

    .line 469
    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/ProtoDfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_33
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public verifyAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_VERIFY_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 527
    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 530
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
