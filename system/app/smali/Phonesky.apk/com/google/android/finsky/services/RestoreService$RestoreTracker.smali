.class Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTracker"
.end annotation


# instance fields
.field private final mAllDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckinListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

.field private final mDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:I

.field private mSucceeded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V
    .registers 5
    .parameter
    .parameter "checkinListener"

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    .line 95
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    .line 98
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 101
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    .line 81
    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mCheckinListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    .line 82
    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;Z)V
    .registers 8
    .parameter "packageName"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    if-eqz p2, :cond_4b

    .line 126
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 131
    :goto_16
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 132
    const-string v0, "Restore complete with %d success and %d failed."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const-string v0, "Resuming checkin listener as restore completes."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mCheckinListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v1, "RestoreService"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->resume(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/RestoreService;->stopSelf()V

    .line 142
    :cond_4a
    return-void

    .line 128
    :cond_4b
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    goto :goto_16
.end method

.method public isTracked(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 196
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v0

    .line 173
    .local v0, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v0, :cond_8

    .line 178
    :goto_7
    return-void

    .line 176
    :cond_8
    const-string v1, "Restore package %s download cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v1, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 8
    .parameter "download"

    .prologue
    const/4 v5, 0x1

    .line 162
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v0

    .line 163
    .local v0, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v0, :cond_8

    .line 168
    :goto_7
    return-void

    .line 166
    :cond_8
    const-string v1, "Restore package %s download complete"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v1, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 9
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    const/4 v5, 0x0

    .line 182
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v0

    .line 183
    .local v0, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v0, :cond_8

    .line 188
    :goto_7
    return-void

    .line 186
    :cond_8
    const-string v1, "Restore package %s download error %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v1, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 200
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 204
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 158
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 109
    const-string v0, "Suspending checkin listener as restore begins."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mCheckinListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v1, "RestoreService"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->suspend(Ljava/lang/String;)V

    .line 113
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method
