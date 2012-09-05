.class public Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;
.super Landroid/os/AsyncTask;
.source "RemoveLocalBookContentTask.java"


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
.field private final mAccount:Landroid/accounts/Account;

.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

.field private final mVolumeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/content/ContentResolver;Lcom/google/android/apps/books/api/ApiaryClient;Ljava/util/List;Lcom/google/android/apps/books/service/SyncService$SyncUi;Ljava/util/List;)V
    .registers 8
    .parameter "account"
    .end parameter
    .parameter "resolver"
    .end parameter
    .parameter "apiaryClient"
    .end parameter
    .parameter
    .end parameter
    .parameter "syncUiForNotification"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/books/api/ApiaryClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/apps/books/service/SyncService$SyncUi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, volumeIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, volumeTitlesForNotification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    .line 67
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mResolver:Landroid/content/ContentResolver;

    .line 68
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryClient;

    iput-object v0, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 69
    iput-object p4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeIds:Ljava/util/List;

    .line 70
    iput-object p5, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    if-eqz v0, :cond_26

    .line 72
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_26
    iput-object p6, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeTitles:Ljava/util/List;

    .line 75
    return-void
.end method

.method private bestEffortReleaseLicense(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    iget-object v1, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/books/api/ApiaryClient;->getSessionKeyVersionFor(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forReleaseDownloadAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    sget-object v2, Lcom/google/android/apps/books/api/ApiaryClient;->NO_POST_DATA:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    iget-object v3, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    .line 133
    :cond_20
    :goto_20
    return-void

    .line 127
    :catch_21
    move-exception v0

    .line 129
    const-string v1, "RemoveLocalContent"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 130
    const-string v1, "RemoveLocalContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/releaseDownloadAccess failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeIds:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 115
    :cond_d
    :goto_d
    return-object v7

    .line 83
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, volumeId:Ljava/lang/String;
    :try_start_20
    new-instance v4, Lcom/google/android/apps/books/model/VolumeStatesEditor;

    iget-object v5, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/model/VolumeStatesEditor;-><init>(Landroid/content/ContentResolver;)V

    iget-object v5, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    sget-object v6, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->RELEASE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    invoke-virtual {v4, v5, v3, v6}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startLicenseActionSave(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_32} :catch_41
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_32} :catch_53

    .line 102
    :cond_32
    :goto_32
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, v3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, clearUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->bestEffortReleaseLicense(Ljava/lang/String;)V

    goto :goto_14

    .line 91
    .end local v0           #clearUri:Landroid/net/Uri;
    :catch_41
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "RemoveLocalContent"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 93
    const-string v4, "RemoveLocalContent"

    const-string v5, "VolumeListActivity interrupted during license_action save."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 95
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_53
    move-exception v1

    .line 96
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    const-string v4, "RemoveLocalContent"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 97
    const-string v4, "RemoveLocalContent"

    const-string v5, "VolumeListActivity failed license_action save."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 111
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v3           #volumeId:Ljava/lang/String;
    :cond_65
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeTitles:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeTitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 112
    iget-object v4, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    iget-object v5, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->mVolumeTitles:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->deletedVolumes(Landroid/accounts/Account;Ljava/util/List;)V

    goto :goto_d
.end method
