.class Lcom/google/android/accounts/Adapter$1;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/Adapter;->getSyncAdapterBinder()Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/Adapter;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/Adapter;Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/accounts/Adapter$1;->this$0:Lcom/google/android/accounts/Adapter;

    invoke-direct {p0, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 8
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/accounts/Adapter$1;->this$0:Lcom/google/android/accounts/Adapter;

    #getter for: Lcom/google/android/accounts/Adapter;->mSyncAdapter:Lcom/google/android/accounts/AbstractSyncAdapter;
    invoke-static {v0}, Lcom/google/android/accounts/Adapter;->access$100(Lcom/google/android/accounts/Adapter;)Lcom/google/android/accounts/AbstractSyncAdapter;

    move-result-object v0

    #calls: Lcom/google/android/accounts/Adapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    invoke-static {p1}, Lcom/google/android/accounts/Adapter;->access$000(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/accounts/AbstractSyncAdapter;->onPerformSync(Lcom/google/android/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 278
    return-void
.end method
