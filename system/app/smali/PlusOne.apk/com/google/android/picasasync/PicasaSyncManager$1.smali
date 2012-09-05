.class Lcom/google/android/picasasync/PicasaSyncManager$1;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$1;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 4
    .parameter "accounts"

    .prologue
    .line 150
    const-string v0, "PicasaSyncManager"

    const-string v1, "account change detect - update database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$1;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #getter for: Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$000(Lcom/google/android/picasasync/PicasaSyncManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method
