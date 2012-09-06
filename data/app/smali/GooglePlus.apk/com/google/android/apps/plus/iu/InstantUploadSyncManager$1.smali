.class Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$1;
.super Ljava/lang/Object;
.source "InstantUploadSyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$1;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 5
    .parameter "accounts"

    .prologue
    const/4 v2, 0x4

    .line 91
    const-string v0, "InstantUploadSyncMgr"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    const-string v0, "InstantUploadSyncMgr"

    const-string v1, "account change detect - update database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$1;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #getter for: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$000(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method
