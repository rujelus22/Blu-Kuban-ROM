.class public Lcom/google/android/plus1/ApiaryPlusOneApi;
.super Lcom/google/android/plus1/BasePlusOneReader;
.source "ApiaryPlusOneApi.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mClientIdFactory:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeveloperKeyFactory:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;)V
    .registers 5
    .parameter "accountManager"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, developerKeyFactory:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneReader;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    .line 91
    iput-object p1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    .line 92
    iput-object p3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mDeveloperKeyFactory:Lcom/google/common/base/Supplier;

    .line 94
    iput-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageName:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mClientIdFactory:Lcom/google/common/base/Supplier;

    .line 98
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->createPosClient()Lcom/google/android/apps/pos/network/PosClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private configureAuthentication(Lcom/google/android/apps/pos/network/PosClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "client"
    .parameter "tokenToInvalidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 353
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_88

    .line 354
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing account manager for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    if-eqz p2, :cond_3a

    .line 358
    :try_start_21
    const-string v2, "ApiaryPlusOneApi"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 359
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Invalidating auth token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_31
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_3a
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    const-string v4, "Manage your +1\'s"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, token:Ljava/lang/String;
    if-nez v1, :cond_8a

    .line 367
    const-string v2, "ApiaryPlusOneApi"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 368
    const-string v2, "ApiaryPlusOneApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " needs authorizing to use +1."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_72
    new-instance v2, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;-><init>(Lcom/google/android/plus1/ApiaryPlusOneApi;)V

    throw v2
    :try_end_78
    .catch Landroid/accounts/AuthenticatorException; {:try_start_21 .. :try_end_78} :catch_78
    .catch Landroid/accounts/OperationCanceledException; {:try_start_21 .. :try_end_78} :catch_8e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_78} :catch_9f

    .line 374
    .end local v1           #token:Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 375
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 376
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Authentication error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_88
    :goto_88
    const/4 v1, 0x0

    :goto_89
    return-object v1

    .line 372
    .restart local v1       #token:Ljava/lang/String;
    :cond_8a
    :try_start_8a
    invoke-virtual {p1, v1}, Lcom/google/android/apps/pos/network/PosClient;->setAccessToken(Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8a .. :try_end_8d} :catch_78
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_9f

    goto :goto_89

    .line 378
    .end local v1           #token:Ljava/lang/String;
    :catch_8e
    move-exception v0

    .line 379
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 380
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Authentication canceled: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 382
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_9f
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 384
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Error fetching auth token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88
.end method

.method private createPosClient()Lcom/google/android/apps/pos/network/PosClient;
    .registers 4

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->createTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 160
    .local v0, httpTransport:Lcom/google/api/client/http/HttpTransport;
    new-instance v1, Lcom/google/api/client/json/jackson/JacksonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/jackson/JacksonFactory;-><init>()V

    .line 161
    .local v1, jsonFactory:Lcom/google/api/client/json/jackson/JacksonFactory;
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/pos/network/PosClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    return-object v2
.end method

.method private createTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 4

    .prologue
    .line 334
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_c

    .line 335
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    .line 339
    .local v0, transport:Lcom/google/api/client/http/HttpTransport;
    :goto_b
    return-object v0

    .line 337
    .end local v0           #transport:Lcom/google/api/client/http/HttpTransport;
    :cond_c
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .restart local v0       #transport:Lcom/google/api/client/http/HttpTransport;
    goto :goto_b
.end method

.method private executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/apps/pos/model/PlusoneResponse;",
            ">(",
            "Lcom/google/android/apps/pos/network/PosClient$PosRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<TT;>;"
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, authToken:Ljava/lang/String;
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;->execute()Lcom/google/android/apps/pos/model/PlusoneResponse;
    :try_end_a
    .catch Lcom/google/android/apps/pos/network/PosAuthorizationException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    .line 199
    :goto_b
    return-object v2

    .line 197
    :catch_c
    move-exception v1

    .line 198
    .local v1, e:Lcom/google/android/apps/pos/network/PosAuthorizationException;
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, v2, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosClient;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;->execute()Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v2

    goto :goto_b
.end method

.method private init()V
    .registers 6

    .prologue
    .line 178
    iget-boolean v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mInitialized:Z

    if-nez v2, :cond_35

    .line 179
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mDeveloperKeyFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, apiKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/pos/network/PosClient;->setApiKey(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mClientIdFactory:Lcom/google/common/base/Supplier;

    if-eqz v2, :cond_32

    .line 183
    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mClientIdFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2, v0}, Lcom/google/android/apps/pos/network/ContainerUtil;->getContainerUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, container:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/pos/network/PosClient;->setContainer(Ljava/lang/String;)V

    .line 188
    .end local v1           #container:Ljava/lang/String;
    :cond_32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mInitialized:Z

    .line 190
    .end local v0           #apiKey:Ljava/lang/String;
    :cond_35
    return-void
.end method

.method private plusOneArrayToMap([Lcom/google/android/apps/pos/model/Plusone;)Ljava/util/Map;
    .registers 25
    .parameter "plusOnes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/pos/model/Plusone;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    move-object/from16 v0, p1

    array-length v3, v0

    invoke-static {v3}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v20

    .line 226
    .local v20, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    move-object/from16 v7, p1

    .local v7, arr$:[Lcom/google/android/apps/pos/model/Plusone;
    array-length v14, v7

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v7           #arr$:[Lcom/google/android/apps/pos/model/Plusone;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .local v11, i$:I
    :goto_c
    if-ge v11, v14, :cond_d3

    aget-object v19, v7, v11

    .line 227
    .local v19, plusOne:Lcom/google/android/apps/pos/model/Plusone;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 228
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v16

    .line 232
    .local v16, metadata:Lcom/google/android/apps/pos/model/Metadata;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v13

    .line 233
    .local v13, isSetByViewerBoolean:Ljava/lang/Boolean;
    if-nez v13, :cond_62

    const/4 v12, 0x0

    .line 235
    .local v12, isSetByViewer:Z
    :goto_23
    const/4 v5, 0x0

    .line 236
    .local v5, count:I
    const/4 v4, 0x0

    .line 237
    .local v4, friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    if-eqz v16, :cond_67

    .line 238
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v9

    .line 239
    .local v9, counts:Lcom/google/android/apps/pos/model/GlobalCounts;
    if-eqz v9, :cond_67

    .line 240
    invoke-virtual {v9}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v21

    .line 241
    .local v21, totalCount:Ljava/lang/Double;
    if-eqz v21, :cond_3b

    .line 242
    invoke-virtual {v9}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 244
    :cond_3b
    invoke-virtual {v9}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v17

    .line 245
    .local v17, people:[Lcom/google/android/apps/pos/model/Person;
    if-eqz v17, :cond_67

    .line 246
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 247
    move-object/from16 v8, v17

    .local v8, arr$:[Lcom/google/android/apps/pos/model/Person;
    array-length v15, v8

    .local v15, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_49
    if-ge v10, v15, :cond_67

    aget-object v18, v8, v10

    .line 248
    .local v18, person:Lcom/google/android/apps/pos/model/Person;
    new-instance v3, Lcom/google/android/plus1/PlusOnePerson;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/pos/model/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/pos/model/Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v6, v0}, Lcom/google/android/plus1/PlusOnePerson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 233
    .end local v4           #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .end local v5           #count:I
    .end local v8           #arr$:[Lcom/google/android/apps/pos/model/Person;
    .end local v9           #counts:Lcom/google/android/apps/pos/model/GlobalCounts;
    .end local v10           #i$:I
    .end local v12           #isSetByViewer:Z
    .end local v15           #len$:I
    .end local v17           #people:[Lcom/google/android/apps/pos/model/Person;
    .end local v18           #person:Lcom/google/android/apps/pos/model/Person;
    .end local v21           #totalCount:Ljava/lang/Double;
    .restart local v11       #i$:I
    :cond_62
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_23

    .line 254
    .end local v11           #i$:I
    .restart local v4       #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .restart local v5       #count:I
    .restart local v12       #isSetByViewer:Z
    :cond_67
    if-nez v13, :cond_a3

    .line 255
    const-string v3, "ApiaryPlusOneApi"

    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 256
    const-string v3, "ApiaryPlusOneApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isSetByViewer is null for item "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_8c
    :goto_8c
    new-instance v1, Lcom/google/android/plus1/PlusOne;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/pos/model/Plusone;->getAbuseToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    .line 269
    .local v1, plusOneResult:Lcom/google/android/plus1/PlusOne;
    move-object/from16 v0, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_c

    .line 259
    .end local v1           #plusOneResult:Lcom/google/android/plus1/PlusOne;
    .end local v11           #i$:I
    :cond_a3
    const-string v3, "ApiaryPlusOneApi"

    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 260
    const-string v3, "ApiaryPlusOneApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isSetByViewer is "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v22, " for URI "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 271
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .end local v5           #count:I
    .end local v12           #isSetByViewer:Z
    .end local v13           #isSetByViewerBoolean:Ljava/lang/Boolean;
    .end local v16           #metadata:Lcom/google/android/apps/pos/model/Metadata;
    .end local v19           #plusOne:Lcom/google/android/apps/pos/model/Plusone;
    .restart local v11       #i$:I
    :cond_d3
    return-object v20
.end method


# virtual methods
.method public getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 204
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 205
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "calling getAccountStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_10
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 208
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v2}, Lcom/google/android/apps/pos/network/PosClient;->createGetSignUpStateRequest()Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/SignUpState;

    .line 210
    .local v0, signUpState:Lcom/google/android/apps/pos/model/SignUpState;
    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 211
    .local v1, signedUp:Z
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 212
    const-string v2, "ApiaryPlusOneApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result for signedUp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_47
    new-instance v2, Lcom/google/android/plus1/PlusOneStatus$Builder;

    invoke-direct {v2}, Lcom/google/android/plus1/PlusOneStatus$Builder;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setOptedIntoPlusOne(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/plus1/PlusOneStatus$Builder;->build()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v2

    return-object v2
.end method

.method public getPlusOnes(Ljava/util/Set;)Ljava/util/Map;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    const-string v7, "ApiaryPlusOneApi"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 277
    const-string v7, "ApiaryPlusOneApi"

    const-string v8, "calling getPlusOnes"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_10
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 280
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 281
    .local v5, size:I
    new-array v2, v5, [Ljava/lang/String;

    .line 282
    .local v2, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 283
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 284
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 287
    .end local v6           #uri:Landroid/net/Uri;
    :cond_33
    iget-object v7, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v7, v2}, Lcom/google/android/apps/pos/network/PosClient;->createBatchGetRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;

    move-result-object v3

    .line 289
    .local v3, request:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<Lcom/google/android/apps/pos/model/Plusones;>;"
    invoke-direct {p0, v3}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/pos/model/Plusones;

    .line 290
    .local v4, result:Lcom/google/android/apps/pos/model/Plusones;
    invoke-virtual {v4}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/plus1/ApiaryPlusOneApi;->plusOneArrayToMap([Lcom/google/android/apps/pos/model/Plusone;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 296
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 14
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 301
    const-string v4, "ApiaryPlusOneApi"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 302
    const-string v4, "ApiaryPlusOneApi"

    const-string v5, "Setting %s +1 to %s for abuse token %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_23
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 307
    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, authToken:Ljava/lang/String;
    if-eqz p2, :cond_44

    .line 311
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 312
    .local v2, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/pos/network/PosClient;->createBatchInsertRequest(Ljava/util/Map;)Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;

    move-result-object v3

    .line 319
    .end local v2           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    :goto_40
    invoke-direct {p0, v3}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    .line 320
    return-void

    .line 316
    .end local v3           #request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    :cond_44
    new-array v1, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 317
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/pos/network/PosClient;->createBatchDeleteRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;

    move-result-object v3

    .restart local v3       #request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    goto :goto_40
.end method
