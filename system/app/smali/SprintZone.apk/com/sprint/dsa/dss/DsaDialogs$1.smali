.class Lcom/sprint/dsa/dss/DsaDialogs$1;
.super Landroid/os/Handler;
.source "DsaDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/dss/DsaDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sprint/dsa/dss/DsaClient;

    .line 28
    .local v0, dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4c

    .line 75
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 31
    :pswitch_c
    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_b

    .line 37
    :pswitch_10
    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_b

    .line 41
    :pswitch_14
    const-string v2, "&option=exit"

    iput-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    .line 43
    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_b

    .line 51
    :pswitch_21
    const-string v2, "&option=save"

    iput-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 52
    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/dss/DsaWebChromeClient;

    invoke-virtual {v2}, Lcom/sprint/dsa/dss/DsaWebChromeClient;->getFormData()V

    goto :goto_b

    .line 56
    :pswitch_2b
    const-string v2, "&option=main_menu"

    iput-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 58
    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_b

    .line 63
    :pswitch_35
    const-string v2, "&option=back"

    iput-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 64
    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_b

    .line 68
    :pswitch_3f
    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    invoke-virtual {v2}, Lcom/sprint/dsa/dss/DsaHttpClient;->retryLastUrl()Z

    move-result v1

    .line 69
    .local v1, retried:Z
    if-nez v1, :cond_b

    .line 71
    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_b

    .line 28
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_b
        :pswitch_21
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
    .end packed-switch
.end method
