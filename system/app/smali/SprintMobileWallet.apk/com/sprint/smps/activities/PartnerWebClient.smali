.class public Lcom/sprint/smps/activities/PartnerWebClient;
.super Landroid/webkit/WebViewClient;
.source "PartnerWebClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public completed:Z

.field public lastUrl:Ljava/lang/String;

.field private parent:Lcom/sprint/smps/activities/ActivityHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/sprint/smps/activities/PartnerWebClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/PartnerWebClient;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/sprint/smps/activities/ActivityHelper;)V
    .registers 4
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sprint/smps/activities/PartnerWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/smps/activities/PartnerWebClient;->completed:Z

    .line 19
    iput-object v1, p0, Lcom/sprint/smps/activities/PartnerWebClient;->lastUrl:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/sprint/smps/activities/PartnerWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    .line 24
    return-void
.end method

.method private showProgressBar(I)V
    .registers 4
    .parameter "show"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/smps/activities/PartnerWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 54
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sprint/smps/activities/PartnerWebClient;->showProgressBar(I)V

    .line 56
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sprint/smps/activities/PartnerWebClient;->showProgressBar(I)V

    .line 46
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 47
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 32
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 38
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
