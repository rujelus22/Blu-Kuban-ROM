.class Lcom/sprint/dsa/dss/DsaWebViewClient$6;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaWebViewClient;->getFirstPage()V
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
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$6;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$6;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$6;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/dss/DsaDialogs;->closeDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V

    .line 252
    return-void
.end method
