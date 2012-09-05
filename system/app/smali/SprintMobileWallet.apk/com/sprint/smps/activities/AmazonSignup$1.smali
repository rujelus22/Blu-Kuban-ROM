.class Lcom/sprint/smps/activities/AmazonSignup$1;
.super Ljava/lang/Object;
.source "AmazonSignup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/AmazonSignup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AmazonSignup;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AmazonSignup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AmazonSignup$1;->this$0:Lcom/sprint/smps/activities/AmazonSignup;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 42
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 45
    sget-wide v4, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    const-wide/16 v6, 0x78

    add-long/2addr v4, v6

    sput-wide v4, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    .line 47
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    const v5, 0x7f030020

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->setContentView(I)V

    .line 49
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/smps/activities/AmazonSignup;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x7

    const v6, 0x7f03001f

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 50
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    const v5, 0x7f08004a

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v5

    const v6, 0x7f060029

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/AmazonSignup;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    const v5, 0x7f080051

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    invoke-static {v4}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 56
    const-string v0, "Amazon"

    .line 57
    .local v0, acctNickName:Ljava/lang/String;
    sget-object v4, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v5, "AP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v6}, Lcom/sprint/smps/service/SMPSService;->addAlternativePayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    .line 58
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    iget-object v4, p0, Lcom/sprint/smps/activities/AmazonSignup$1;->this$0:Lcom/sprint/smps/activities/AmazonSignup;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getAlternativePayment()Lcom/sprint/smps/pojo/AlternativePayment;

    move-result-object v5

    #setter for: Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;
    invoke-static {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->access$1(Lcom/sprint/smps/activities/AmazonSignup;Lcom/sprint/smps/pojo/AlternativePayment;)V

    .line 59
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "?PaReq="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sprint/smps/activities/AmazonSignup$1;->this$0:Lcom/sprint/smps/activities/AmazonSignup;

    #getter for: Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;
    invoke-static {v5}, Lcom/sprint/smps/activities/AmazonSignup;->access$2(Lcom/sprint/smps/activities/AmazonSignup;)Lcom/sprint/smps/pojo/AlternativePayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/AlternativePayment;->getPayload()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
    const-string v5, "&TermUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "http://accepted/"

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    const-string v5, "&MD=%22%22&sub="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Go To Amazon"

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, params:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sprint/smps/activities/AmazonSignup$1;->this$0:Lcom/sprint/smps/activities/AmazonSignup;

    #getter for: Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;
    invoke-static {v5}, Lcom/sprint/smps/activities/AmazonSignup;->access$2(Lcom/sprint/smps/activities/AmazonSignup;)Lcom/sprint/smps/pojo/AlternativePayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/AlternativePayment;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, postUrl:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v4

    const v5, 0x7f080052

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/AmazonSignup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    sput-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    .line 67
    sget-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    sget-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 69
    sget-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 70
    new-instance v4, Lcom/sprint/smps/activities/AmazonWebClient;

    invoke-static {}, Lcom/sprint/smps/activities/AmazonSignup;->access$0()Lcom/sprint/smps/activities/AmazonSignup;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/smps/activities/AmazonSignup$1;->this$0:Lcom/sprint/smps/activities/AmazonSignup;

    #getter for: Lcom/sprint/smps/activities/AmazonSignup;->ap:Lcom/sprint/smps/pojo/AlternativePayment;
    invoke-static {v6}, Lcom/sprint/smps/activities/AmazonSignup;->access$2(Lcom/sprint/smps/activities/AmazonSignup;)Lcom/sprint/smps/pojo/AlternativePayment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/AlternativePayment;->getPayload()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/sprint/smps/activities/AmazonWebClient;-><init>(Lcom/sprint/smps/activities/ActivityHelper;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    sput-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webClient:Lcom/sprint/smps/activities/AmazonWebClient;

    .line 71
    sget-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    sget-object v5, Lcom/sprint/smps/activities/AmazonSignup;->webClient:Lcom/sprint/smps/activities/AmazonWebClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    sget-object v4, Lcom/sprint/smps/activities/AmazonSignup;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method
