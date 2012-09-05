.class Lcom/android/browser/Tab$4$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$4;->setupAutoFill(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$4;

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$4;Landroid/view/View;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/browser/Tab$4$4;->this$1:Lcom/android/browser/Tab$4;

    iput-object p2, p0, Lcom/android/browser/Tab$4$4;->val$layout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/browser/Tab$4$4;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/android/browser/Tab$4$4;->val$layout:Landroid/view/View;

    const v2, 0x7f0d00b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1444
    .local v0, disableAutoFill:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1446
    iget-object v1, p0, Lcom/android/browser/Tab$4$4;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setAutofillEnabled(Z)V

    .line 1447
    iget-object v1, p0, Lcom/android/browser/Tab$4$4;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a4

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1456
    :goto_2e
    return-void

    .line 1454
    :cond_2f
    iget-object v1, p0, Lcom/android/browser/Tab$4$4;->this$1:Lcom/android/browser/Tab$4;

    iget-object v1, v1, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$4$4;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewController;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_2e
.end method
