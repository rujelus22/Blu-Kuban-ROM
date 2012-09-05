.class Lcom/sprint/w/installer/delivery/SearchActivity$3;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->searchKeyword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

.field final synthetic val$searchValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iput-object p2, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->val$searchValue:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v4, 0x7f060101

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->val$searchValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, jsonResponse:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2a
    invoke-static {v2, v3, v4}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_4b

    move-result-object v1

    .line 347
    :goto_2e
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$100(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/id/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 348
    return-object v1

    .line 344
    :catch_4b
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$100(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "Received an error searching for a Keyword"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .parameter "jsonResponse"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 378
    :cond_b
    :goto_b
    return-void

    .line 357
    :cond_c
    if-nez p1, :cond_1b

    .line 358
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->resetActionBar()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$000(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 359
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto :goto_b

    .line 361
    :cond_1b
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-direct {v1, p1}, Lcom/sprint/w/installer/delivery/DeliveryRequest;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$202(Lcom/sprint/w/installer/delivery/SearchActivity;Lcom/sprint/w/installer/delivery/DeliveryRequest;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 362
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    if-eqz v0, :cond_b

    .line 363
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 364
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-boolean v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchPSI:Z

    if-eqz v0, :cond_47

    .line 366
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->val$searchValue:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->searchPSI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$300(Lcom/sprint/w/installer/delivery/SearchActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 368
    :cond_47
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->searchLoadComplete()V

    .line 369
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->resetActionBar()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$000(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    goto :goto_b

    .line 373
    :cond_52
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->createDeliveryHub()V

    .line 374
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$3;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->handleDeliveryHub()V

    goto :goto_b
.end method
