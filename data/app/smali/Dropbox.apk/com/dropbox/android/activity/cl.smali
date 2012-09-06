.class final Lcom/dropbox/android/activity/cl;
.super Lcom/dropbox/android/activity/ck;
.source "panda.py"


# instance fields
.field final synthetic b:Lcom/dropbox/android/activity/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dropbox/android/activity/cl;->b:Lcom/dropbox/android/activity/WebViewActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/activity/ck;-><init>(Lcom/dropbox/android/activity/WebViewActivity;Lcom/dropbox/android/activity/ch;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;Lcom/dropbox/android/activity/ch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/cl;-><init>(Lcom/dropbox/android/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 117
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to load insecure resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/cl;->b:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-static {v3}, Lcom/dropbox/android/activity/WebViewActivity;->a(Lcom/dropbox/android/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    .line 118
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v4, v4, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 120
    :goto_45
    return-object v0

    :cond_46
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/ck;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_45
.end method
