.class Lcom/google/android/apps/books/render/WebViewRenderer$2;
.super Landroid/webkit/WebChromeClient;
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
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$2;,"Lcom/google/android/apps/books/render/WebViewRenderer.2;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$2;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4
    .parameter "consoleMessage"

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$2;,"Lcom/google/android/apps/books/render/WebViewRenderer.2;"
    const-string v0, "WebViewRenderer"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    return v0
.end method
