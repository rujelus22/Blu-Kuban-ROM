.class public abstract Lcom/google/android/apps/books/app/FetchReadingPositionTask;
.super Landroid/os/AsyncTask;
.source "FetchReadingPositionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field private final mAccount:Landroid/accounts/Account;

.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private mContentVersion:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mLastAccess:Ljava/lang/Long;

.field private mPosition:Lcom/google/android/apps/books/common/Position;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 7
    .parameter "responseGetter"
    .parameter "apiaryClient"
    .parameter "config"
    .parameter "volumeId"
    .parameter "account"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 61
    const-string v0, "missing apiaryClient"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryClient;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 62
    const-string v0, "missing config"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 63
    const-string v0, "missing volume ID"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mVolumeId:Ljava/lang/String;

    .line 64
    const-string v0, "missing account"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccount:Landroid/accounts/Account;

    .line 65
    return-void
.end method

.method private fetchUsingApiary()Ljava/util/List;
    .registers 6
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
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forFetchVolume(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 103
    :try_start_6
    iget-object v1, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/api/ApiaryClient;->makeGetRequest(Lcom/google/api/client/googleapis/GoogleUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryVolume;

    iget-object v3, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolume;

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/ApiaryVolume;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_2a

    move-result-object v0

    .line 118
    :goto_29
    return-object v0

    .line 113
    :catch_2a
    move-exception v0

    .line 114
    const-string v1, "FetchPositionTask"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 115
    const-string v1, "FetchPositionTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching reading position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4c
    iput-object v0, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mException:Ljava/lang/Exception;

    .line 118
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .parameter "params"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->fetchUsingApiary()Ljava/util/List;

    move-result-object v4

    .line 76
    .local v4, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4b

    .line 77
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 79
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v6, "position"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, position:Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 82
    new-instance v6, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v6, v3}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mPosition:Lcom/google/android/apps/books/common/Position;

    .line 83
    const-string v6, "last_access"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mLastAccess:Ljava/lang/Long;

    .line 86
    :cond_2b
    const-string v6, "viewability"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, viewability:Ljava/lang/String;
    const-string v6, "open_access"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, openAccess:Ljava/lang/String;
    const-string v6, "buy_url"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, buyUrl:Ljava/lang/String;
    invoke-static {v5, v2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 91
    const-string v6, "content_version"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mContentVersion:Ljava/lang/String;

    .line 96
    .end local v0           #buyUrl:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #openAccess:Ljava/lang/String;
    .end local v3           #position:Ljava/lang/String;
    .end local v5           #viewability:Ljava/lang/String;
    :cond_4b
    const/4 v6, 0x0

    return-object v6
.end method

.method protected abstract onFinished(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v2, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mContentVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mPosition:Lcom/google/android/apps/books/common/Position;

    iget-object v4, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mLastAccess:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->mException:Ljava/lang/Exception;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;->onFinished(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V

    .line 147
    return-void
.end method
