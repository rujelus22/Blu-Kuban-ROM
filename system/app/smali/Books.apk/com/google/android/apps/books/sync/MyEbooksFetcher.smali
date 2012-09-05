.class public Lcom/google/android/apps/books/sync/MyEbooksFetcher;
.super Ljava/lang/Object;
.source "MyEbooksFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# instance fields
.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

.field private final mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/sync/SyncAccountsState;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/service/SyncService$SyncUi;)V
    .registers 9
    .parameter "resolver"
    .parameter "responseGetter"
    .parameter "state"
    .parameter "apiaryClient"
    .parameter "config"
    .parameter "keyFactory"
    .parameter "syncUi"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 83
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 84
    const-string v0, "missing state"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/SyncAccountsState;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 85
    const-string v0, "missing requestExecutor"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryClient;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 86
    const-string v0, "missing config"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 87
    const-string v0, "missing keyFactory"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 88
    const-string v0, "missing syncUi"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/service/SyncService$SyncUi;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    .line 89
    return-void
.end method

.method private buildCollectionVolumesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;
    .registers 7
    .parameter "account"

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 347
    .local v0, synchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    return-object v1
.end method

.method private buildStatesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;
    .registers 5
    .parameter "account"

    .prologue
    .line 351
    new-instance v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 353
    .local v0, synchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    return-object v1
.end method

.method private fetchUsingApiary(Landroid/accounts/Account;I)Ljava/util/List;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonceString()Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findOrCreateSessionKey(Landroid/accounts/Account;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v4

    .line 136
    iget-object v0, v4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    .line 138
    invoke-static {v0, v2, v3}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forMyEBooksAndSyncLicenses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v5

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->getVolumesToRenewLicensesFor(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v8

    .line 142
    new-instance v6, Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;

    invoke-direct {v6}, Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;-><init>()V

    .line 143
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 144
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;->addVolumeId(Ljava/lang/String;)V

    goto :goto_26

    .line 147
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 152
    :try_start_40
    iget-object v5, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v6, Lcom/google/android/apps/books/api/ApiaryVolumes;

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual {v5, v0, v6, p1, v7}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolumes;
    :try_end_4d
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_40 .. :try_end_4d} :catch_61

    move-object v7, v0

    move-object v0, v1

    .line 159
    :goto_4f
    :try_start_4f
    iget-object v4, v4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->encyptedK_sClause:[B

    invoke-static {v4}, Lcom/google/android/apps/books/util/EncryptionUtils;->extractSessionKeyInHexFormat([B)Ljava/lang/String;
    :try_end_54
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_4f .. :try_end_54} :catch_164
    .catch Ljava/security/GeneralSecurityException; {:try_start_4f .. :try_end_54} :catch_64

    move-result-object v1

    .line 169
    :goto_55
    if-eqz v0, :cond_77

    .line 171
    if-gtz p2, :cond_6b

    .line 173
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;

    const-string v2, "New session key still invalid"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :catch_61
    move-exception v0

    move-object v7, v1

    .line 155
    goto :goto_4f

    .line 165
    :catch_64
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestSessionKeyUpgrade(Landroid/accounts/Account;)V

    .line 177
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->fetchUsingApiary(Landroid/accounts/Account;I)Ljava/util/List;

    move-result-object v0

    .line 226
    :goto_76
    return-object v0

    .line 181
    :cond_77
    const-string v0, "MyEbooksFetcher"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 182
    const-string v0, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apiary result contains "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/google/android/apps/books/api/ApiaryVolumes;->volumes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volumes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_a3
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 185
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 187
    iget-object v0, v7, Lcom/google/android/apps/books/api/ApiaryVolumes;->volumes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b1
    :goto_b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolume;

    .line 188
    iget-object v6, v0, Lcom/google/android/apps/books/api/ApiaryVolume;->id:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v6, v0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v6, v6, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->downloadAccess:Lcom/google/android/apps/books/api/DownloadAccessResponse;

    .line 190
    if-eqz v6, :cond_b1

    .line 191
    invoke-static {v2, v3, v1, v6}, Lcom/google/android/apps/books/api/ApiaryClient;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/api/VerifiableResponse;)V

    .line 192
    iget-boolean v6, v6, Lcom/google/android/apps/books/api/DownloadAccessResponse;->deviceAllowed:Z

    if-eqz v6, :cond_b1

    .line 193
    iget-object v0, v0, Lcom/google/android/apps/books/api/ApiaryVolume;->id:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 200
    :cond_d5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 201
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 202
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e1
    :goto_e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 203
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 205
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 207
    const-string v3, "MyEbooksFetcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting content for volume "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_11a
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 212
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 216
    :cond_126
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13d

    .line 217
    new-instance v0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;

    iget-object v2, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    iget-object v5, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;-><init>(Landroid/accounts/Account;Landroid/content/ContentResolver;Lcom/google/android/apps/books/api/ApiaryClient;Ljava/util/List;Lcom/google/android/apps/books/service/SyncService$SyncUi;Ljava/util/List;)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    :cond_13d
    iget-object v0, v7, Lcom/google/android/apps/books/api/ApiaryVolumes;->volumes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    iget-object v0, v7, Lcom/google/android/apps/books/api/ApiaryVolumes;->volumes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolume;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/apps/books/api/ApiaryVolume;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14d

    :cond_161
    move-object v0, v1

    .line 226
    goto/16 :goto_76

    .line 161
    :catch_164
    move-exception v0

    goto/16 :goto_55
.end method

.method private static filterToPositionValues(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 362
    .local v0, filteredList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 363
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "position"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, position:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 365
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 368
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_20
    return-object v0
.end method

.method private getVolumesToRenewLicensesFor(Landroid/accounts/Account;)Ljava/util/List;
    .registers 15
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 238
    .local v9, result:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 239
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "segment_fraction"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "resource_fraction"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "page_fraction"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "volume_id"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "title"

    aput-object v3, v2, v0

    .line 246
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, cursor:Landroid/database/Cursor;
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 249
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v10

    .line 250
    .local v10, sectionFrac:Ljava/lang/Double;
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v8

    .line 251
    .local v8, resourceFrac:Ljava/lang/Double;
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v7

    .line 252
    .local v7, pageFrac:Ljava/lang/Double;
    invoke-static {v10, v8, v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isPartiallyOrFullyDownloaded(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 254
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, volumeId:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, title:Ljava/lang/String;
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_2d .. :try_end_5a} :catchall_5b

    goto :goto_2d

    .line 261
    .end local v7           #pageFrac:Ljava/lang/Double;
    .end local v8           #resourceFrac:Ljava/lang/Double;
    .end local v10           #sectionFrac:Ljava/lang/Double;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #volumeId:Ljava/lang/String;
    :catchall_5b
    move-exception v0

    if-eqz v6, :cond_61

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    .line 261
    :cond_62
    if-eqz v6, :cond_67

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_67
    return-object v9
.end method


# virtual methods
.method public ensureMyEbooksCollection(Landroid/accounts/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    const/4 v6, 0x3

    .line 100
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 101
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started ensureMyEbooks() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "collection_id"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v3, "title"

    const-string v4, "My eBooks"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "summary"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 112
    .local v1, synchronizable:Lcom/google/android/apps/books/sync/CollectionsSynchronizable;
    new-instance v0, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 113
    .local v0, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 115
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 116
    const-string v3, "MyEbooksFetcher"

    const-string v4, "finished ensureMyEbooks()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_6b
    return-void
.end method

.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 11
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 295
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 297
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 298
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started MyEbooksFetcher.fetch() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_26
    const/4 v3, 0x1

    :try_start_27
    invoke-direct {p0, p2, v3}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->fetchUsingApiary(Landroid/accounts/Account;I)Ljava/util/List;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_d6

    move-result-object v1

    .line 315
    .local v1, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 316
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volumes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 318
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volumes found:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_75
    const-wide/16 v3, 0x7

    invoke-static {p2, v3, v4, v1}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V

    .line 326
    new-instance v2, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v3, Lcom/google/android/apps/books/sync/VolumesSynchronizable;

    iget-object v4, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, v4, p2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 328
    .local v2, volumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 329
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->buildCollectionVolumesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 330
    invoke-static {v1}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->filterToPositionValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 331
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->buildStatesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 334
    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/books/sync/SyncAccountsState;->setLastMyEbooksFetchTime(Ljava/lang/String;J)V

    .line 336
    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 338
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 339
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished MyEbooksFetcher.fetch() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_d5
    return-void

    .line 305
    .end local v1           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2           #volumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;
    :catch_d6
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MyEbooksFetcher"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 307
    const-string v3, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_f7
    throw v0
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 8
    .parameter "account"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, accountName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 128
    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_11
    return v3

    :cond_12
    const/4 v3, 0x0

    goto :goto_11
.end method
