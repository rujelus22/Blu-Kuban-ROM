.class public Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;
.super Landroid/os/AsyncTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeMetadataLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCheckShelfMembership:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mException:Ljava/lang/Exception;

.field private final mFetchService:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateVolumeOverview:Z

.field private final mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;ZZ)V
    .registers 9
    .parameter
    .parameter "contentResolver"
    .parameter
    .parameter "account"
    .parameter "volumeId"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 4350
    .local p3, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4351
    const-string v0, "missing content resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 4353
    const-string v0, "missing fetchService"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mFetchService:Ljava/util/concurrent/Future;

    .line 4354
    const-string v0, "missing account"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mAccount:Landroid/accounts/Account;

    .line 4355
    const-string v0, "missing volumeId"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mVolumeId:Ljava/lang/String;

    .line 4356
    iput-boolean p6, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mUpdateVolumeOverview:Z

    .line 4357
    iput-boolean p7, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mCheckShelfMembership:Z

    .line 4358
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/VolumeMetadata;
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 4363
    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mFetchService:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 4365
    .local v2, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    new-instance v0, Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mVolumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v4, v5}, Lcom/google/android/apps/books/model/VolumeMetadata;-><init>(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 4366
    .local v0, data:Lcom/google/android/apps/books/model/VolumeMetadata;
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mUpdateVolumeOverview:Z

    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mCheckShelfMembership:Z

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZ)V

    .line 4368
    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->fetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 4370
    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v5, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 4371
    new-instance v4, Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;

    iget-object v5, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    const-string v6, "tried opening a NO_VIEW volume"

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;-><init>(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mException:Ljava/lang/Exception;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-object v0, v3

    .line 4380
    .end local v0           #data:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    :cond_33
    :goto_33
    return-object v0

    .line 4378
    :catch_34
    move-exception v1

    .line 4379
    .local v1, e:Ljava/lang/Exception;
    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mException:Ljava/lang/Exception;

    move-object v0, v3

    .line 4380
    goto :goto_33
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4339
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 4386
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9502(Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;)Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    .line 4388
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_10

    .line 4389
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->onError(Ljava/lang/Exception;)V

    .line 4393
    :goto_f
    return-void

    .line 4391
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->onLoadedVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    goto :goto_f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4339
    check-cast p1, Lcom/google/android/apps/books/model/VolumeMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->onPostExecute(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    return-void
.end method
