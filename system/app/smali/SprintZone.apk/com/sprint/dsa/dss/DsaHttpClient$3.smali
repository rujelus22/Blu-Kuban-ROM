.class Lcom/sprint/dsa/dss/DsaHttpClient$3;
.super Ljava/lang/Object;
.source "DsaHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaHttpClient;->handleResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaHttpClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaHttpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient$3;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient$3;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaHttpClient$3;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$6(Lcom/sprint/dsa/dss/DsaHttpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/dss/DsaDialogs;->retryDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V

    .line 456
    return-void
.end method
