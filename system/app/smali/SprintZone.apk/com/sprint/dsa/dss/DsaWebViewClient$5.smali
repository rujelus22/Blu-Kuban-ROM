.class Lcom/sprint/dsa/dss/DsaWebViewClient$5;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaWebViewClient;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    const-string v1, "images"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/dss/DsaClient;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, absPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 235
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/a.jsp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->page:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$1(Lcom/sprint/dsa/dss/DsaWebViewClient;)Ljava/lang/String;

    move-result-object v2

    .line 236
    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$5;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v5}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v5

    iget-object v5, v5, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 240
    .end local v6           #absPath:Ljava/lang/String;
    :goto_53
    return-void

    .line 237
    :catch_54
    move-exception v7

    .line 238
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadImages:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method
