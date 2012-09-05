.class Lcom/google/android/apps/books/render/WebViewRenderer$1;
.super Landroid/webkit/WebView;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 141
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 133
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 135
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 4
    .parameter "delayMilliseconds"

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 129
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 8
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$1;,"Lcom/google/android/apps/books/render/WebViewRenderer.1;"
    invoke-super/range {p0 .. p6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$1;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    .line 123
    return-void
.end method
