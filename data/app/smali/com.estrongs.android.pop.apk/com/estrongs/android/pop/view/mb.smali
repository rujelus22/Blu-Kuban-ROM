.class Lcom/estrongs/android/pop/view/mb;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchPageActivity;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/view/SearchPageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/mb;->a:Lcom/estrongs/android/pop/view/SearchPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/view/SearchPageActivity;Lcom/estrongs/android/pop/view/mb;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/mb;-><init>(Lcom/estrongs/android/pop/view/SearchPageActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
