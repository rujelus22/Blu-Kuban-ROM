.class public Lcom/sprint/smps/activities/AmazonWebClient;
.super Landroid/webkit/WebViewClient;
.source "AmazonWebClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apPayloadRes:Ljava/lang/String;

.field public completed:Z

.field public lastUrl:Ljava/lang/String;

.field private parent:Lcom/sprint/smps/activities/ActivityHelper;

.field private startedDialog:Z

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/sprint/smps/activities/AmazonWebClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/AmazonWebClient;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sprint/smps/activities/ActivityHelper;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 7
    .parameter "parent"
    .parameter "url"
    .parameter "apPayloadRes"
    .parameter "webview"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    .line 25
    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    .line 26
    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->apPayloadRes:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/sprint/smps/activities/AmazonWebClient;->startedDialog:Z

    .line 28
    iput-boolean v1, p0, Lcom/sprint/smps/activities/AmazonWebClient;->completed:Z

    .line 29
    iput-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->lastUrl:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    .line 34
    iput-object p3, p0, Lcom/sprint/smps/activities/AmazonWebClient;->apPayloadRes:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    .line 36
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/AmazonWebClient$1;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AmazonWebClient$1;-><init>(Lcom/sprint/smps/activities/AmazonWebClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 142
    return-void
.end method

.method private showProgressBar(I)V
    .registers 4
    .parameter "show"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sprint/smps/activities/AmazonWebClient;->showProgressBar(I)V

    .line 99
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 100
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    if-eqz v0, :cond_1b

    .line 102
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ActivityHelper;->deleteDialog(I)V

    .line 103
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ActivityHelper;->deleteDialog(I)V

    .line 106
    :cond_1b
    const-string v0, "http://accepted/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 110
    :goto_28
    return-void

    .line 109
    :cond_29
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_28
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 59
    iput-object p2, p0, Lcom/sprint/smps/activities/AmazonWebClient;->lastUrl:Ljava/lang/String;

    .line 60
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sprint/smps/activities/AmazonWebClient;->showProgressBar(I)V

    .line 63
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 64
    iget-boolean v3, p0, Lcom/sprint/smps/activities/AmazonWebClient;->startedDialog:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    if-eqz v3, :cond_17

    .line 67
    iput-boolean v4, p0, Lcom/sprint/smps/activities/AmazonWebClient;->startedDialog:Z

    .line 70
    :cond_17
    const-string v3, "http://accepted/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-boolean v3, p0, Lcom/sprint/smps/activities/AmazonWebClient;->completed:Z

    if-nez v3, :cond_49

    .line 72
    iget-object v3, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearView()V

    .line 73
    iput-boolean v4, p0, Lcom/sprint/smps/activities/AmazonWebClient;->completed:Z

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, response:Lcom/sprint/smps/service/ClientResponse;
    :try_start_2b
    sget-object v3, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    iget-object v4, p0, Lcom/sprint/smps/activities/AmazonWebClient;->apPayloadRes:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sprint/smps/service/SMPSService;->completeAlternativePaymentAdd(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_4a

    move-result-object v1

    .line 78
    :goto_33
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 79
    :cond_3b
    const-string v3, "Amazon Payment"

    const-string v4, "Unable to add amazon payment at this time."

    iget-object v5, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    invoke-direct {p0, v3, v4, v5}, Lcom/sprint/smps/activities/AmazonWebClient;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    :goto_44
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/sprint/smps/activities/AmazonWebClient;->showProgressBar(I)V

    .line 90
    .end local v1           #response:Lcom/sprint/smps/service/ClientResponse;
    :cond_49
    return-void

    .line 77
    .restart local v1       #response:Lcom/sprint/smps/service/ClientResponse;
    :catch_4a
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_33

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :cond_64
    const-string v3, "Amazon Payment"

    const-string v4, "Amazon payment added."

    iget-object v5, p0, Lcom/sprint/smps/activities/AmazonWebClient;->parent:Lcom/sprint/smps/activities/ActivityHelper;

    invoke-direct {p0, v3, v4, v5}, Lcom/sprint/smps/activities/AmazonWebClient;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Type"

    const-string v4, "Amazon"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v3, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v4, "Amazon Signup"

    invoke-virtual {v3, v4, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_44
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 45
    const-string v0, "http://accepted/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/sprint/smps/activities/AmazonWebClient;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 47
    :cond_13
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 53
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, override:Z
    const-string v1, "http://accepted/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_a
    return v0
.end method
