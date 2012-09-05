.class Lcom/sprint/dsa/dss/DsaWebViewClient$4;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaWebViewClient;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaWebViewClient;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->val$str:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 218
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->val$str:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 219
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v5}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v5

    iget-object v5, v5, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 218
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$4;->val$str:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 224
    :goto_3b
    return-void

    .line 221
    :catch_3c
    move-exception v6

    .line 222
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method
