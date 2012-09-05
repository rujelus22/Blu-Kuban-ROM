.class public Lcom/google/android/finsky/api/DfeApi;
.super Ljava/lang/Object;
.source "DfeApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeApi$DfePostRequest;,
        Lcom/google/android/finsky/api/DfeApi$TocListener;
    }
.end annotation


# static fields
.field private static final ACCEPT_TOS_URI:Landroid/net/Uri;

.field private static final ADDREVIEW_URI:Landroid/net/Uri;

.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CHANNELS_URI:Landroid/net/Uri;

.field private static final CHECK_INSTRUMENT_URI:Landroid/net/Uri;

.field private static final COMPLETE_PURCHASE_URI:Landroid/net/Uri;

.field private static final DCB_GET_VERIFICATION_ID_URI:Landroid/net/Uri;

.field private static final DCB_VERIFY_PIN_URI:Landroid/net/Uri;

.field private static final FLAG_CONTENT_URI:Landroid/net/Uri;

.field private static final LOG_URI:Landroid/net/Uri;

.field private static final PLUSONE_URI:Landroid/net/Uri;

.field private static final PURCHASE_TIMEOUT_MS:I

.field private static final PURCHASE_URI:Landroid/net/Uri;

.field private static final RATEREVIEW_URI:Landroid/net/Uri;

.field private static final RESOLVE_LINK:Landroid/net/Uri;

.field private static final SEARCH_CHANNEL_URI:Landroid/net/Uri;

.field private static final UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

.field private static final VIDEO_WATCH_URI:Landroid/net/Uri;


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "https://android.clients.google.com/fdfe/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "toc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHANNELS_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "addReview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->ADDREVIEW_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "rateReview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->RATEREVIEW_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_URI:Landroid/net/Uri;

    .line 83
    const-string v0, "completePurchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "updateInstrument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "checkInstrument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    .line 92
    const-string v0, "log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->LOG_URI:Landroid/net/Uri;

    .line 95
    const-string v0, "flagContent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->FLAG_CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "plusOne"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->PLUSONE_URI:Landroid/net/Uri;

    .line 101
    const-string v0, "acceptTos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->ACCEPT_TOS_URI:Landroid/net/Uri;

    .line 104
    const-string v0, "http://www.youtube.com/watch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->VIDEO_WATCH_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "dcbGetVerificationId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DCB_GET_VERIFICATION_ID_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "dcbVerifyPin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->DCB_VERIFY_PIN_URI:Landroid/net/Uri;

    .line 113
    const-string v0, "resolveLink"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->RESOLVE_LINK:Landroid/net/Uri;

    .line 202
    sget-object v0, Lcom/google/android/finsky/config/G;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V
    .registers 3
    .parameter "queue"
    .parameter "apiContext"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    .line 215
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/DfeApiContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method public static createDetailsUrlFromId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "docId"
    .parameter "originalUrl"

    .prologue
    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "details?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, dfeUrl:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 774
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 775
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "tid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, tid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    .end local v1           #tid:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_40
    return-object v0
.end method

.method public static formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "query"
    .parameter "channelId"

    .prologue
    .line 734
    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 738
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;
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
    .line 555
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 556
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, encodedQuery:Ljava/lang/String;
    if-eqz v1, :cond_2d

    .line 558
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, params:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_2d

    aget-object v6, v0, v2

    .line 560
    .local v6, param:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 561
    .local v5, pair:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2a

    .line 562
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 566
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #param:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :cond_2d
    return-object v4
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
    .line 321
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->ACCEPT_TOS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 324
    const-string v1, "tost"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz p2, :cond_21

    .line 326
    const-string v1, "toscme"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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
            "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->ADDREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 378
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "rating"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public checkInstrument(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
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
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 660
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 663
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    if-eqz p2, :cond_1d

    .line 665
    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_1d
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public completePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
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
    .line 609
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 612
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 614
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    if-eqz p2, :cond_2b

    .line 616
    const-string v1, "cart"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_2b
    if-eqz p3, :cond_32

    .line 619
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_32
    if-eqz p4, :cond_58

    .line 622
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 623
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 626
    :cond_58
    if-eqz p5, :cond_61

    .line 627
    const-string v1, "ctos"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_61
    if-eqz p6, :cond_68

    .line 630
    const-string v1, "chdi"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_68
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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
    .line 302
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->FLAG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 305
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "cft"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

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
    .line 286
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 288
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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
    .line 430
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 432
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
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
    .line 341
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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
    .line 579
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 580
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 583
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 585
    invoke-static {v6}, Lcom/google/android/finsky/api/DfeApi;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 586
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 589
    :cond_41
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getReviews(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 418
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .registers 11
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
    .line 238
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$1;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    new-instance v5, Lcom/google/android/finsky/api/DfeApi$TocListener;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/api/DfeApi$TocListener;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/Response$Listener;)V

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi$1;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 251
    invoke-virtual {v0, p3}, Lcom/google/android/finsky/api/DfeRequest;->setAllowMultipleResponses(Z)V

    .line 252
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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

    .line 806
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 808
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/android/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    .line 809
    return-void
.end method

.method public invalidateReviewsCache(Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 792
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 794
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/android/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    .line 795
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
    .line 709
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->LOG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setDrainable(Z)V

    .line 713
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
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
            "Ljava/lang/String;",
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
    .line 511
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 513
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 515
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz p3, :cond_35

    .line 518
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_35
    if-eqz p4, :cond_53

    .line 521
    const-string v1, "shpn"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "shh"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "shvc"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-nez p7, :cond_4e

    .line 528
    const-string p7, ""

    .line 530
    :cond_4e
    const-string v1, "payload"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_53
    if-eqz p8, :cond_79

    .line 533
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 537
    :cond_79
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 18
    .parameter "docId"
    .parameter "offerType"
    .parameter "authToken"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 485
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

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

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
            "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v6, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->RATEREVIEW_URI:Landroid/net/Uri;

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

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v6, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

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
    .line 718
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->RESOLVE_LINK:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 719
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 722
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
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
    .line 357
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

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
    .line 445
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->PLUSONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 448
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "rating"

    if-eqz p2, :cond_29

    const/4 v1, 0x1

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0

    .line 449
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
    .line 643
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 644
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 648
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 650
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
