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

.field private final mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;)V
    .registers 7
    .parameter
    .parameter
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

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneReader;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    .line 83
    iput-object p1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    .line 84
    iput-object p3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mDeveloperKeyFactory:Lcom/google/common/base/Supplier;

    .line 86
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->createTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/google/api/client/json/jackson/JacksonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/jackson/JacksonFactory;-><init>()V

    .line 88
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/pos/network/PosClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    iput-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    .line 89
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    const-class v1, Lcom/google/android/plus1/ApiaryPlusOneApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/pos/network/PosClient;->setAppId(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;Ljava/lang/String;)V
    .registers 5
    .parameter "accountManager"
    .parameter "account"
    .parameter
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, developerKeyFactory:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/plus1/ApiaryPlusOneApi;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;)V

    .line 110
    invoke-virtual {p0, p4}, Lcom/google/android/plus1/ApiaryPlusOneApi;->setAppId(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private configureAuthentication(Lcom/google/android/apps/pos/network/PosBaseClient;Ljava/lang/String;)Ljava/lang/String;
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

    .line 278
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_88

    .line 279
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

    .line 282
    if-eqz p2, :cond_3a

    .line 283
    :try_start_21
    const-string v2, "ApiaryPlusOneApi"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 284
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Invalidating auth token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_31
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_3a
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;

    const-string v4, "Manage your +1\'s"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, token:Ljava/lang/String;
    if-nez v1, :cond_8a

    .line 292
    const-string v2, "ApiaryPlusOneApi"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 293
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

    .line 295
    :cond_72
    new-instance v2, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;-><init>(Lcom/google/android/plus1/ApiaryPlusOneApi;)V

    throw v2
    :try_end_78
    .catch Landroid/accounts/AuthenticatorException; {:try_start_21 .. :try_end_78} :catch_78
    .catch Landroid/accounts/OperationCanceledException; {:try_start_21 .. :try_end_78} :catch_8e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_78} :catch_9f

    .line 299
    .end local v1           #token:Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 300
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 301
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Authentication error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_88
    :goto_88
    const/4 v1, 0x0

    :goto_89
    return-object v1

    .line 297
    .restart local v1       #token:Ljava/lang/String;
    :cond_8a
    :try_start_8a
    invoke-virtual {p1, v1}, Lcom/google/android/apps/pos/network/PosBaseClient;->setAccessToken(Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8a .. :try_end_8d} :catch_78
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_9f

    goto :goto_89

    .line 303
    .end local v1           #token:Ljava/lang/String;
    :catch_8e
    move-exception v0

    .line 304
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 305
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Authentication canceled: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 307
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_9f
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 309
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Error fetching auth token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88
.end method

.method private createTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 4

    .prologue
    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_c

    .line 260
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    .line 264
    .local v0, transport:Lcom/google/api/client/http/HttpTransport;
    :goto_b
    return-object v0

    .line 262
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
    .line 131
    .local p1, request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<TT;>;"
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosBaseClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, authToken:Ljava/lang/String;
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;->execute()Lcom/google/android/apps/pos/model/PlusoneResponse;
    :try_end_a
    .catch Lcom/google/android/apps/pos/network/PosAuthorizationException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    .line 136
    :goto_b
    return-object v2

    .line 134
    :catch_c
    move-exception v1

    .line 135
    .local v1, e:Lcom/google/android/apps/pos/network/PosAuthorizationException;
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-direct {p0, v2, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosBaseClient;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/PosClient$PosRequest;->execute()Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v2

    goto :goto_b
.end method

.method private init()V
    .registers 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mInitialized:Z

    if-nez v0, :cond_14

    .line 124
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mDeveloperKeyFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/PosClient;->setApiKey(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mInitialized:Z

    .line 127
    :cond_14
    return-void
.end method

.method private plusOneArrayToMap([Lcom/google/android/apps/pos/model/Plusone;)Ljava/util/Map;
    .registers 27
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
    .line 160
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v19

    .line 161
    .local v19, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/google/android/apps/pos/model/Plusone;
    array-length v12, v3

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Lcom/google/android/apps/pos/model/Plusone;
    .end local v8           #i$:I
    .end local v12           #len$:I
    .local v9, i$:I
    :goto_e
    if-ge v9, v12, :cond_e0

    aget-object v17, v3, v9

    .line 162
    .local v17, plusOne:Lcom/google/android/apps/pos/model/Plusone;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 163
    .local v21, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v14

    .line 167
    .local v14, metadata:Lcom/google/android/apps/pos/model/Metadata;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v11

    .line 168
    .local v11, isSetByViewerBoolean:Ljava/lang/Boolean;
    if-nez v11, :cond_63

    const/4 v10, 0x0

    .line 170
    .local v10, isSetByViewer:Z
    :goto_25
    const/4 v5, 0x0

    .line 171
    .local v5, count:I
    const/4 v7, 0x0

    .line 172
    .local v7, friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    if-eqz v14, :cond_68

    .line 173
    invoke-virtual {v14}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v6

    .line 174
    .local v6, counts:Lcom/google/android/apps/pos/model/GlobalCounts;
    if-eqz v6, :cond_68

    .line 175
    invoke-virtual {v6}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v20

    .line 176
    .local v20, totalCount:Ljava/lang/Double;
    if-eqz v20, :cond_3d

    .line 177
    invoke-virtual {v6}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 179
    :cond_3d
    invoke-virtual {v6}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v15

    .line 180
    .local v15, people:[Lcom/google/android/apps/pos/model/Person;
    if-eqz v15, :cond_68

    .line 181
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 182
    move-object v4, v15

    .local v4, arr$:[Lcom/google/android/apps/pos/model/Person;
    array-length v13, v4

    .local v13, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_4a
    if-ge v8, v13, :cond_68

    aget-object v16, v4, v8

    .line 183
    .local v16, person:Lcom/google/android/apps/pos/model/Person;
    new-instance v22, Lcom/google/android/plus1/PlusOnePerson;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/pos/model/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/pos/model/Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/google/android/plus1/PlusOnePerson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 168
    .end local v4           #arr$:[Lcom/google/android/apps/pos/model/Person;
    .end local v5           #count:I
    .end local v6           #counts:Lcom/google/android/apps/pos/model/GlobalCounts;
    .end local v7           #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .end local v8           #i$:I
    .end local v10           #isSetByViewer:Z
    .end local v13           #len$:I
    .end local v15           #people:[Lcom/google/android/apps/pos/model/Person;
    .end local v16           #person:Lcom/google/android/apps/pos/model/Person;
    .end local v20           #totalCount:Ljava/lang/Double;
    .restart local v9       #i$:I
    :cond_63
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_25

    .line 189
    .end local v9           #i$:I
    .restart local v5       #count:I
    .restart local v7       #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .restart local v10       #isSetByViewer:Z
    :cond_68
    if-nez v11, :cond_ad

    .line 190
    const-string v22, "ApiaryPlusOneApi"

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_90

    .line 191
    const-string v22, "ApiaryPlusOneApi"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isSetByViewer is null for item "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_90
    :goto_90
    new-instance v18, Lcom/google/android/plus1/PlusOne;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;I)V

    .line 203
    .local v18, plusOneResult:Lcom/google/android/plus1/PlusOne;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_e

    .line 194
    .end local v9           #i$:I
    .end local v18           #plusOneResult:Lcom/google/android/plus1/PlusOne;
    :cond_ad
    const-string v22, "ApiaryPlusOneApi"

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_90

    .line 195
    const-string v22, "ApiaryPlusOneApi"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isSetByViewer is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for URI "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 205
    .end local v5           #count:I
    .end local v7           #friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    .end local v10           #isSetByViewer:Z
    .end local v11           #isSetByViewerBoolean:Ljava/lang/Boolean;
    .end local v14           #metadata:Lcom/google/android/apps/pos/model/Metadata;
    .end local v17           #plusOne:Lcom/google/android/apps/pos/model/Plusone;
    .end local v21           #uri:Landroid/net/Uri;
    .restart local v9       #i$:I
    :cond_e0
    return-object v19
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

    .line 141
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 142
    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "calling getAccountStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_10
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 145
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v2}, Lcom/google/android/apps/pos/network/PosClient;->createGetSignUpStateRequest()Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/SignUpState;

    .line 147
    .local v0, signUpState:Lcom/google/android/apps/pos/model/SignUpState;
    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 148
    .local v1, signedUp:Z
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 149
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

    .line 151
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
    .line 210
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    const-string v7, "ApiaryPlusOneApi"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 211
    const-string v7, "ApiaryPlusOneApi"

    const-string v8, "calling getPlusOnes"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_10
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 214
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 215
    .local v5, size:I
    new-array v2, v5, [Ljava/lang/String;

    .line 216
    .local v2, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 217
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

    .line 218
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 221
    .end local v6           #uri:Landroid/net/Uri;
    :cond_33
    iget-object v7, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v7, v2}, Lcom/google/android/apps/pos/network/PosClient;->createBatchGetRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;

    move-result-object v3

    .line 223
    .local v3, request:Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,"Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest<Lcom/google/android/apps/pos/model/Plusones;>;"
    invoke-direct {p0, v3}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/pos/model/Plusones;

    .line 224
    .local v4, result:Lcom/google/android/apps/pos/model/Plusones;
    invoke-virtual {v4}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/plus1/ApiaryPlusOneApi;->plusOneArrayToMap([Lcom/google/android/apps/pos/model/Plusone;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/PosClient;->setAppId(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 9
    .parameter "uri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v3, "ApiaryPlusOneApi"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 230
    const-string v3, "ApiaryPlusOneApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " +1 to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->init()V

    .line 234
    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/plus1/ApiaryPlusOneApi;->configureAuthentication(Lcom/google/android/apps/pos/network/PosBaseClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, authToken:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 237
    .local v1, items:[Ljava/lang/String;
    if-eqz p2, :cond_4b

    .line 239
    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/pos/network/PosClient;->createBatchInsertRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;

    move-result-object v2

    .line 244
    .local v2, request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    :goto_47
    invoke-direct {p0, v2}, Lcom/google/android/plus1/ApiaryPlusOneApi;->executeWithRetry(Lcom/google/android/apps/pos/network/PosClient$PosRequest;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    .line 245
    return-void

    .line 242
    .end local v2           #request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    :cond_4b
    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->mPosBatchClient:Lcom/google/android/apps/pos/network/PosClient;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/pos/network/PosClient;->createBatchDeleteRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;

    move-result-object v2

    .restart local v2       #request:Lcom/google/android/apps/pos/network/PosClient$PosRequest;,"Lcom/google/android/apps/pos/network/PosClient$PosRequest<*>;"
    goto :goto_47
.end method
