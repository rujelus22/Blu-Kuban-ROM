.class Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;
.super Ljava/lang/Object;
.source "WebView_to_WebView_RotationAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebView_to_WebView_RotationAnimator;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;


# direct methods
.method constructor <init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$000(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 146
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$000(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-virtual {v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getWebPageNavegationListener()Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setWebPageNavegationListener(Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$000(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-virtual {v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getBrowserTabFocusListener()Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setBrowserTabFocusListener(Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;)V

    .line 149
    :cond_3a
    return-void
.end method
