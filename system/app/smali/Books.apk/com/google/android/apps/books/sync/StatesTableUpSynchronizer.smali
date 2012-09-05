.class public Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;
.super Ljava/lang/Object;
.source "StatesTableUpSynchronizer.java"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mAppName:Ljava/lang/String;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

.field private final mTime:Landroid/text/format/Time;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/StatesServerSynchronizable;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Landroid/accounts/Account;)V
    .registers 8
    .parameter "synchronizable"
    .parameter "appName"
    .parameter "responseGetter"
    .parameter "apiaryClient"
    .parameter "account"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "missing synchronizable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    .line 55
    const-string v0, "missing appName"

    invoke-static {p2, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAppName:Ljava/lang/String;

    .line 56
    const-string v0, "missing account"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    .line 58
    const-string v0, "missing responseGetter"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 59
    iput-object p4, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 60
    invoke-static {}, Lcom/google/android/apps/books/util/OceanUris;->getMyVolumesUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mUri:Landroid/net/Uri;

    .line 61
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    .line 62
    return-void
.end method

.method private queryForUpsyncValues()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->queryAllForUpsync()Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, allCursor:Landroid/database/Cursor;
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 114
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v1

    .line 116
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 120
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_22
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v2       #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private upsyncUsingApiary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forSetReadingPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    .line 130
    return-void
.end method


# virtual methods
.method public upsync()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->queryForUpsyncValues()Ljava/util/List;

    move-result-object v6

    .line 66
    .local v6, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 67
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "volume_id"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, volumeId:Ljava/lang/String;
    const-string v8, "position"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, position:Ljava/lang/String;
    const-string v8, "last_access"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 70
    .local v0, accessMillis:Ljava/lang/Long;
    const-string v8, "last_action"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, action:Ljava/lang/String;
    const-string v8, "missing volumeId"

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v8, "missing position"

    invoke-static {v3, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v8, "missing accessMillis"

    invoke-static {v0, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v8, "missing action"

    invoke-static {v1, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v8, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 78
    iget-object v8, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, time3339:Ljava/lang/String;
    const-string v8, "StatesTableUpSynch"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 80
    const-string v8, "StatesTableUpSynch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upsync position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_8f
    invoke-direct {p0, v7, v3, v4, v1}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->upsyncUsingApiary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v8, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v8, v5}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->updateAfterUpsync(Landroid/content/ContentValues;)I

    goto/16 :goto_8

    .line 91
    .end local v0           #accessMillis:Ljava/lang/Long;
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #position:Ljava/lang/String;
    .end local v4           #time3339:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v7           #volumeId:Ljava/lang/String;
    :cond_99
    return-void
.end method
