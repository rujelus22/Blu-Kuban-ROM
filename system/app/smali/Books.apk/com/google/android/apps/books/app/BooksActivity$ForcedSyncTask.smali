.class Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcedSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .registers 6
    .parameter "voids"

    .prologue
    .line 1324
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$2400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 1325
    .local v1, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 1329
    const/4 v0, 0x0

    .line 1331
    .end local v1           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    :goto_17
    return-object v0

    .line 1330
    :catch_18
    move-exception v0

    .line 1331
    .local v0, e:Ljava/lang/Exception;
    goto :goto_17
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1319
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1338
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1362
    :cond_a
    :goto_a
    return-void

    .line 1340
    :cond_b
    if-eqz p1, :cond_1a

    move v2, v0

    .line 1341
    :goto_e
    if-nez v2, :cond_1c

    .line 1343
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->requestManualSyncDownloadWithoutFetch(Landroid/accounts/Account;)V

    goto :goto_a

    :cond_1a
    move v2, v1

    .line 1340
    goto :goto_e

    .line 1347
    :cond_1c
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$3200(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 1348
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5a

    .line 1350
    :goto_34
    if-eqz v0, :cond_a

    .line 1351
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1354
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    .line 1355
    const-string v4, "syncError"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    invoke-static {v4, v0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 1356
    const-class v0, Lcom/google/android/apps/books/app/SyncErrorFragment;

    const-string v4, "syncError"

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v0, v4, v3, v2, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 1359
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_a

    :cond_5a
    move v0, v1

    .line 1348
    goto :goto_34
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1319
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
