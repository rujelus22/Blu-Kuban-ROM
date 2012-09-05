.class Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->setInputType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;->this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iput p2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;->val$type:I

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;->this$0:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    #getter for: Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->access$0(Lcom/sprint/dsa/dss/DsaJavaScriptInterface;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    .local v1, txtView:Landroid/widget/TextView;
    if-eqz v1, :cond_15

    .line 170
    iget v2, p0, Lcom/sprint/dsa/dss/DsaJavaScriptInterface$3;->val$type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 175
    .end local v1           #txtView:Landroid/widget/TextView;
    :cond_15
    :goto_15
    return-void

    .line 172
    :catch_16
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    const-string v3, "setInputType:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
