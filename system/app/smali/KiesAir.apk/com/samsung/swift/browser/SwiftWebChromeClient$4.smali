.class Lcom/samsung/swift/browser/SwiftWebChromeClient$4;
.super Ljava/lang/Object;
.source "SwiftWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/browser/SwiftWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/browser/SwiftWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/samsung/swift/browser/SwiftWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$4;->this$0:Lcom/samsung/swift/browser/SwiftWebChromeClient;

    iput-object p2, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 228
    return-void
.end method
