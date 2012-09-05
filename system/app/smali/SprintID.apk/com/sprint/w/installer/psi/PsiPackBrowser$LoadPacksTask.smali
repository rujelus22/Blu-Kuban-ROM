.class Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;
.super Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPacksTask"
.end annotation


# instance fields
.field folderId:Ljava/lang/String;

.field ignoreNoMobileData:Z

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "handler"
    .parameter "ignoreNoMobileData"
    .parameter "folderId"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V

    .line 352
    iput-boolean p3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->ignoreNoMobileData:Z

    .line 353
    iput-object p4, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->folderId:Ljava/lang/String;

    .line 354
    return-void
.end method

.method private loadServicePacks()Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
    .registers 5

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->folderId:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 376
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->getStoredFolderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->folderId:Ljava/lang/String;

    .line 378
    :cond_c
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->folderId:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-static {v1, v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverServicePacks(Ljava/lang/String;II)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    move-result-object v0

    .line 382
    .local v0, results:Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
    .registers 4
    .parameter "arg0"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->ignoreNoMobileData:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 359
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    new-instance v1, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    const/4 v0, 0x0

    .line 370
    :goto_1b
    return-object v0

    :cond_1c
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->loadServicePacks()Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    move-result-object v0

    goto :goto_1b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->doInBackground([Ljava/lang/Void;)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter "results"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    #getter for: Lcom/sprint/w/installer/psi/PsiPackBrowser;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->access$100(Lcom/sprint/w/installer/psi/PsiPackBrowser;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "results null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_29

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    check-cast p1, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    .end local p1
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->folderId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->handlePackLoad(Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;Ljava/lang/String;)V

    .line 390
    return-void

    .line 388
    .restart local p1
    :cond_29
    const/4 v0, 0x0

    goto :goto_14
.end method
