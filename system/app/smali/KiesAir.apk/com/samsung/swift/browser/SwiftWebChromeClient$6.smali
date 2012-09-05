.class Lcom/samsung/swift/browser/SwiftWebChromeClient$6;
.super Ljava/lang/Object;
.source "SwiftWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/swift/browser/SwiftWebChromeClient;Landroid/view/View;Landroid/webkit/JsPromptResult;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$6;->this$0:Lcom/samsung/swift/browser/SwiftWebChromeClient;

    iput-object p2, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$6;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$6;->val$v:Landroid/view/View;

    sget v2, Lcom/samsung/swift/R$id;->prompt_input_field:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/browser/SwiftWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 217
    return-void
.end method
