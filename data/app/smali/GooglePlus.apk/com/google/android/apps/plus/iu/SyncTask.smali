.class public abstract Lcom/google/android/apps/plus/iu/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"


# instance fields
.field mPriority:I

.field public final syncAccount:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public abstract cancelSync()V
.end method

.method public isAutoSync()Z
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/SyncTask;->isBackgroundSync()Z

    move-result v0

    return v0
.end method

.method public abstract isBackgroundSync()Z
.end method

.method public abstract isSyncOnBattery()Z
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSyncOnWifiOnly()Z
.end method

.method public onRejected(I)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 76
    return-void
.end method

.method public abstract performSync(Landroid/content/SyncResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 101
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
