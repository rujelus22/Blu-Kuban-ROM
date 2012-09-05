.class public Lcom/vlingo/client/social/api/FoursquareAPI;
.super Ljava/lang/Object;
.source "FoursquareAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/FoursquareAPI$1;,
        Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;,
        Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareUserCallback;,
        Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    }
.end annotation


# static fields
.field public static final SIG_CHECKIN:I = 0x138a

.field public static final SIG_GET_FRIENDS:I = 0x138b

.field public static final SIG_GET_VENUES:I = 0x138c

.field public static final SIG_LOGIN:I = 0x1389

.field public static final SIG_SHOUT:I = 0x138e


# instance fields
.field private authenticated:Z

.field private authenticatedPassword:Ljava/lang/String;

.field private authenticatedUsername:Ljava/lang/String;

.field private final callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

.field private curRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field private final params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field userDetailsCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/social/api/FoursquareUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;)V
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticated:Z

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    .line 289
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->userDetailsCache:Ljava/util/Hashtable;

    .line 51
    iput-object p1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    .line 52
    const-string v0, "foursquare_username"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedUsername:Ljava/lang/String;

    .line 53
    const-string v0, "foursquare_password"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedPassword:Ljava/lang/String;

    .line 54
    const-string v0, "foursquare_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticated:Z

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->assembleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/vlingo/client/social/api/FoursquareAPI;->extractXMLElementBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/social/api/FoursquareAPI;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->saveAuthentication()V

    return-void
.end method

.method private appendGeoToQueryString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "queryString"

    .prologue
    .line 249
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getCellTowerInfo()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, locationString:Ljava/lang/String;
    if-nez v1, :cond_8

    .line 251
    const-string v1, ""

    .line 252
    :cond_8
    const-string v3, "Lat="

    invoke-direct {p0, v1, v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, latString:Ljava/lang/String;
    const-string v3, "Long="

    invoke-direct {p0, v1, v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, lonString:Ljava/lang/String;
    if-eqz v0, :cond_67

    if-eqz v2, :cond_67

    .line 255
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_46

    .line 256
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geolat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&geolong="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    :goto_45
    return-object v3

    .line 258
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&geolat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&geolong="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_67
    move-object v3, p1

    .line 260
    goto :goto_45
.end method

.method private static assembleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "responseXML"

    .prologue
    .line 483
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, name:Ljava/lang/String;
    const-string v3, "firstname"

    invoke-static {p0, v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->extractXMLElementBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, firstName:Ljava/lang/String;
    const-string v3, "lastname"

    invoke-static {p0, v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->extractXMLElementBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, lastName:Ljava/lang/String;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_42
    :goto_42
    return-object v2

    .line 488
    :cond_43
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4d

    .line 489
    move-object v2, v0

    goto :goto_42

    .line 490
    :cond_4d
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 491
    move-object v2, v1

    goto :goto_42
.end method

.method private createAuthenticatedRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 8
    .parameter "sig"
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 234
    const-string v1, "FoursquareHttpReq"

    new-instance v2, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;-><init>(Lcom/vlingo/client/social/api/FoursquareAPI;ILcom/vlingo/client/social/api/FoursquareAPI$1;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lcom/vlingo/client/android/core/http/AndroidHttpRequest;->createRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    .line 235
    .local v0, req:Lcom/vlingo/client/core/http/HttpRequest;
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->getAuthenticatedHeaders()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/http/HttpRequest;->setExtraHeaders(Ljava/util/Hashtable;)V

    .line 237
    return-object v0
.end method

.method private createAuthenticatedRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 12
    .parameter "sig"
    .parameter "url"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, credentials:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/core/crypto/MD5;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, base64Credentials:Ljava/lang/String;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 226
    .local v2, extraHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v4, "FoursquareHttpReq"

    new-instance v5, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;-><init>(Lcom/vlingo/client/social/api/FoursquareAPI;ILcom/vlingo/client/social/api/FoursquareAPI$1;)V

    invoke-static {v4, v5, p2}, Lcom/vlingo/client/android/core/http/AndroidHttpRequest;->createRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v3

    .line 228
    .local v3, req:Lcom/vlingo/client/core/http/HttpRequest;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, v2}, Lcom/vlingo/client/core/http/HttpRequest;->setExtraHeaders(Ljava/util/Hashtable;)V

    .line 230
    return-object v3
.end method

.method private static extractXMLElementBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "xml"
    .parameter "elementName"

    .prologue
    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, elemStart:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, elemEnd:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 475
    .local v2, iBeg:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 476
    .local v3, iEnd:I
    if-ge v2, v3, :cond_49

    const/4 v4, -0x1

    if-le v2, v4, :cond_49

    .line 477
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 479
    :goto_48
    return-object v4

    :cond_49
    const/4 v4, 0x0

    goto :goto_48
.end method

.method private declared-synchronized getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "input"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 265
    .local v1, keyLen:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, startIndex:I
    if-gez v2, :cond_c

    .line 272
    :cond_b
    :goto_b
    return-object v3

    .line 268
    :cond_c
    add-int/2addr v2, v1

    .line 269
    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 270
    .local v0, endIndex:I
    if-ltz v0, :cond_b

    .line 272
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_b
.end method

.method public static resetSettings()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "foursquare_username"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "foursquare_password"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "foursquare_account_name"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "foursquare_account"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v0, "foursquare_picture"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    const-string v0, "foursquare_picture_url"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private saveAuthentication()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 62
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedUsername:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedPassword:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, name:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticated:Z

    .line 66
    const-string v1, "foursquare_username"

    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedUsername:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "foursquare_password"

    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedPassword:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "foursquare_account_name"

    invoke-static {v1, v0}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "foursquare_account"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 70
    const-string v2, "foursquare_picture_url"

    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v3, "photo"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    if-eqz v0, :cond_12

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->cancel()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 95
    :cond_12
    monitor-exit p0

    return-void

    .line 90
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthenticatedHeaders()Ljava/util/Hashtable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->authenticatedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, credentials:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/crypto/MD5;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, base64Credentials:Ljava/lang/String;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 244
    .local v2, extraHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-object v2
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "username"
    .parameter "password"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v0, 0x1389

    const-string v1, "http://api.foursquare.com/v1/user"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/vlingo/client/social/api/FoursquareAPI;->createAuthenticatedRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->start()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 112
    monitor-exit p0

    return-void

    .line 102
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shout(Ljava/lang/String;)V
    .registers 5
    .parameter "shout"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/FoursquareAPI;->cancel()V

    .line 202
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;

    const-string v2, "shout"

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, ""

    .line 208
    .local v0, postData:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-direct {p0, v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->appendGeoToQueryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const/16 v1, 0x138e

    const-string v2, "http://api.foursquare.com/v1/checkin"

    invoke-direct {p0, v1, v2, v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->createAuthenticatedRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 212
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/vlingo/client/social/api/FoursquareAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpRequest;->start()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 214
    monitor-exit p0

    return-void

    .line 201
    .end local v0           #postData:Ljava/lang/String;
    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1
.end method
