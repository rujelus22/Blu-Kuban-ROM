.class Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->popup(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->val$title:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    #getter for: Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->access$0(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$4;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/dss/DsaDialogs;->popupDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method
