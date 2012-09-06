.class public Lcom/google/android/apps/docs/utils/ToastErrorReporter;
.super Ljava/lang/Object;
.source "ToastErrorReporter.java"

# interfaces
.implements LXJ;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Laaj;

    invoke-direct {v0, p0}, Laaj;-><init>(Lcom/google/android/apps/docs/utils/ToastErrorReporter;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/utils/ToastErrorReporter;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;

    iget-object v1, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/content/Context;

    sget v2, LcY;->error_page_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/apps/docs/utils/ToastErrorReporter$ErrorRetriever;-><init>(Lcom/google/android/apps/docs/utils/ToastErrorReporter;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    const-string v1, "errorRetriever"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcX;->error_page:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 90
    const-string v1, "file:///android_res/raw/"

    invoke-static {v1, v0, p1}, LZW;->a(Ljava/lang/String;Ljava/io/InputStream;Landroid/webkit/WebView;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method
