.class Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;
.super Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMorePacksThread"
.end annotation


# instance fields
.field folderId:Ljava/lang/String;

.field hasMorePages:Z

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field page:I

.field success:Z

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "handler"
    .parameter "folderId"
    .parameter "page"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V

    .line 404
    iput-object p3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->folderId:Ljava/lang/String;

    .line 405
    iput p4, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->page:I

    .line 406
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "arg0"

    .prologue
    const/16 v3, 0x19

    .line 410
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->folderId:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 411
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->getStoredFolderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->folderId:Ljava/lang/String;

    .line 413
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->list:Ljava/util/ArrayList;

    .line 414
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->folderId:Ljava/lang/String;

    iget v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->page:I

    mul-int/lit8 v2, v2, 0x19

    invoke-static {v1, v2, v3}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverServicePacks(Ljava/lang/String;II)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    move-result-object v0

    .line 415
    .local v0, results:Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->isSuccess()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->success:Z

    .line 416
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->getPacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 418
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_39

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->hasMorePages:Z

    .line 422
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    iget-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->success:Z

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->folderId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->hasMorePages:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;->handleLoadMorePacks(ZLjava/util/ArrayList;Ljava/lang/String;Z)V

    .line 428
    return-void
.end method

.method public setHandler(Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;->handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    .line 432
    return-void
.end method
