.class Lcom/sprint/dsa/dss/DsaClient$3;
.super Ljava/lang/Object;
.source "DsaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaClient;->close(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaClient$3;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient$3;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    #getter for: Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaClient;->access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 614
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient$3;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    #getter for: Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaClient;->access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    :cond_11
    return-void
.end method
