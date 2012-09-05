.class Lcom/sprint/dsa/dss/DsaHttpClient$2;
.super Landroid/os/AsyncTask;
.source "DsaHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaHttpClient;->execute(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->val$url:Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/dss/DsaHttpClient$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 352
    :try_start_2
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    const-string v3, "stic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_4a

    .line 354
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    const-string v3, "10.31.172.173"

    #setter for: Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$2(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    const/16 v3, 0x50

    #setter for: Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I
    invoke-static {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$3(Lcom/sprint/dsa/dss/DsaHttpClient;I)V

    .line 362
    :goto_20
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->val$url:Ljava/lang/String;

    const-string v3, "spcsdns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_41

    .line 364
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$4(Lcom/sprint/dsa/dss/DsaHttpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaDiag;->canConnectTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 365
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    invoke-virtual {v2}, Lcom/sprint/dsa/dss/DsaSystem;->warmInit()Ljava/lang/String;

    .line 368
    :cond_41
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->loadURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_49
    return-object v1

    .line 356
    :cond_4a
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    const-string v3, "dsa.spcsdns.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_94

    .line 357
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    const-string v3, "144.226.247.31"

    #setter for: Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$2(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    const/16 v3, 0x50

    #setter for: Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I
    invoke-static {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$3(Lcom/sprint/dsa/dss/DsaHttpClient;I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_68} :catch_69

    goto :goto_20

    .line 371
    :catch_69
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    const-string v3, "DsaHttpClient.execute(): ERROR"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$5(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    .line 377
    const/4 v1, 0x0

    goto :goto_49

    .line 360
    .end local v0           #e:Ljava/lang/Exception;
    :cond_94
    :try_start_94
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sprint/dsa/dss/DsaClient;->SLOT0:Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9d} :catch_69

    goto :goto_20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/dss/DsaHttpClient$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/dss/DsaHttpClient;->handleResult(Ljava/lang/String;)V

    .line 387
    return-void
.end method
