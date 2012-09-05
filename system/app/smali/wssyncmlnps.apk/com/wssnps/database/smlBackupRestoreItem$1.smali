.class final Lcom/wssnps/database/smlBackupRestoreItem$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "smlBackupRestoreItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssnps/database/smlBackupRestoreItem;->smlBRgetdatasize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 5
    .parameter "pStats"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x1

    #calls: Lcom/wssnps/database/smlBackupRestoreItem;->changeNumLookups(I)V
    invoke-static {v0}, Lcom/wssnps/database/smlBackupRestoreItem;->access$000(I)V

    .line 484
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    #calls: Lcom/wssnps/database/smlBackupRestoreItem;->save_data_size(J)V
    invoke-static {v0, v1}, Lcom/wssnps/database/smlBackupRestoreItem;->access$100(J)V

    .line 488
    return-void
.end method
