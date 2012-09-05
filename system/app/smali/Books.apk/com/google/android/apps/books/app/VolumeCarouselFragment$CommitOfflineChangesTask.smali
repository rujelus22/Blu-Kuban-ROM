.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;
.super Landroid/os/AsyncTask;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommitOfflineChangesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mTaskAccount:Landroid/accounts/Account;

.field private final mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/accounts/Account;Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;)V
    .registers 4
    .parameter
    .parameter "account"
    .parameter "omc"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 879
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 880
    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    .line 881
    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    .line 882
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 873
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .registers 15
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x0

    .line 886
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 888
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v9, v9, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 889
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 890
    .local v7, volumeId:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 891
    .local v2, pinned:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_ba

    const/4 v3, 0x1

    .line 893
    .local v3, pinnedValue:I
    :goto_32
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "account_name"

    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v9, "volume_id"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v9, "pinned"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v9, "VolumeCarouselFragment"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 899
    const-string v9, "VolumeCarouselFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting pinned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_78
    new-instance v5, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v9, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v8}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {v5, v9}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 904
    .local v5, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;)V

    .line 906
    const-string v9, "VolumeCarouselFragment"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 907
    const-string v9, "VolumeCarouselFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saved "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_af
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 911
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .end local v3           #pinnedValue:I
    .end local v5           #syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_ba
    move v3, v8

    .line 891
    goto/16 :goto_32

    .line 915
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #pinned:Ljava/lang/Boolean;
    .end local v7           #volumeId:Ljava/lang/String;
    :cond_bd
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 873
    check-cast p1, Ljava/util/Set;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p1, volumeIdsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->mTaskAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V

    .line 922
    return-void
.end method
