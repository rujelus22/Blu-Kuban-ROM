.class Lcom/google/android/apps/books/render/WebViewRenderer$4;
.super Ljava/lang/Object;
.source "WebViewRenderer.java"

# interfaces
.implements Lcom/google/android/apps/books/render/JavaScriptExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .registers 3
    .parameter "script"

    .prologue
    .line 439
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$4;,"Lcom/google/android/apps/books/render/WebViewRenderer.4;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$4;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 440
    return-void
.end method
