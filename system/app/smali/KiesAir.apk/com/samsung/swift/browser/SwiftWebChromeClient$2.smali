.class Lcom/samsung/swift/browser/SwiftWebChromeClient$2;
.super Ljava/lang/Object;
.source "SwiftWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/browser/SwiftWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/browser/SwiftWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/samsung/swift/browser/SwiftWebChromeClient;Landroid/webkit/JsResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$2;->this$0:Lcom/samsung/swift/browser/SwiftWebChromeClient;

    iput-object p2, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 178
    return-void
.end method
