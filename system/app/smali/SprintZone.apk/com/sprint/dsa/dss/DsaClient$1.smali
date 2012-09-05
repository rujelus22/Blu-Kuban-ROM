.class Lcom/sprint/dsa/dss/DsaClient$1;
.super Ljava/lang/Object;
.source "DsaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaClient;->setBusyText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaClient;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaClient$1;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaClient$1;->val$text:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient$1;->this$0:Lcom/sprint/dsa/dss/DsaClient;

    #getter for: Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaClient;->access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method
