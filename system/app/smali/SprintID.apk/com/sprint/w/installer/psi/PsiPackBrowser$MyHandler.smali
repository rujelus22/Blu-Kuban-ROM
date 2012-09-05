.class Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;
.super Ljava/lang/Object;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V

    return-void
.end method


# virtual methods
.method public handleLoadMorePacks(ZLjava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 7
    .parameter "success"
    .parameter
    .parameter "folderId"
    .parameter "hasMorePages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    :goto_8
    return-void

    .line 476
    :cond_9
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iput-object p3, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iput-boolean p4, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    .line 478
    if-eqz p1, :cond_3f

    .line 480
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    sget-object v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;->TEMP_ITEM:Lcom/sprint/w/installer/psi/TempItem;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->remove(Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0, p2}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->addItems(Ljava/util/ArrayList;)V

    .line 483
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-boolean v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    if-eqz v0, :cond_32

    .line 485
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    sget-object v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;->TEMP_ITEM:Lcom/sprint/w/installer/psi/TempItem;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->add(Ljava/lang/Object;)V

    .line 488
    :cond_32
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;->notifyDataSetChanged()V

    .line 492
    :goto_39
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mBusy:Z

    goto :goto_8

    .line 490
    :cond_3f
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->showDialog(I)V

    goto :goto_39
.end method

.method public handlePackLoad(Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;Ljava/lang/String;)V
    .registers 8
    .parameter "results"
    .parameter "folderId"

    .prologue
    .line 438
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 470
    :goto_8
    return-void

    .line 442
    :cond_9
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iput-object p2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    .line 444
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 448
    if-eqz p1, :cond_4a

    .line 449
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->getFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 450
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->getPacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->getFeaturedPacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 454
    :cond_4a
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, count:I
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackBrowser;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->access$100(Lcom/sprint/w/installer/psi/PsiPackBrowser;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 457
    const/16 v2, 0x19

    if-gt v2, v0, :cond_7d

    .line 458
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    .line 461
    :cond_7d
    if-eqz p1, :cond_85

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 462
    :cond_85
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    #calls: Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadComplete()V
    invoke-static {v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->access$200(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V

    goto/16 :goto_8

    .line 465
    :cond_8c
    :try_start_8c
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->showDialog(I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_95

    goto/16 :goto_8

    .line 466
    :catch_95
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackBrowser;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->access$100(Lcom/sprint/w/installer/psi/PsiPackBrowser;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error Showing Dialog Box"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method
