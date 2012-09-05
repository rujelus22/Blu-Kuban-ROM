.class Lcom/google/android/apps/books/render/WebViewRenderer$5;
.super Ljava/lang/Object;
.source "WebViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchWebViewClientError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 534
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$5;,"Lcom/google/android/apps/books/render/WebViewRenderer.5;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$5;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    iput-object p2, p0, Lcom/google/android/apps/books/render/WebViewRenderer$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 537
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$5;,"Lcom/google/android/apps/books/render/WebViewRenderer.5;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$5;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1500(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/WebViewRendererModel;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 538
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$5;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1500(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/WebViewRendererModel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$5;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->dispatchError(Ljava/lang/Exception;)V

    .line 540
    :cond_13
    return-void
.end method
