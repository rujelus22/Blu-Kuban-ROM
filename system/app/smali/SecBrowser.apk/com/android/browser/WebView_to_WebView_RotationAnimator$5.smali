.class Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;
.super Ljava/lang/Object;
.source "WebView_to_WebView_RotationAnimator.java"

# interfaces
.implements Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebView_to_WebView_RotationAnimator;
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
    .line 710
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postTabChange(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .registers 5
    .parameter "oldWebView"
    .parameter "newWebView"

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldWebView:Landroid/webkit/WebView;

    if-eq v0, p1, :cond_10

    .line 725
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object v1, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldWebView:Landroid/webkit/WebView;

    .line 726
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object v1, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mNewWebView:Landroid/webkit/WebView;

    .line 731
    :goto_f
    return-void

    .line 730
    :cond_10
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->startAnimation_PART1(Landroid/webkit/WebView;Z)V

    goto :goto_f
.end method

.method public preTabChange(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .registers 4
    .parameter "oldWebView"
    .parameter "newWebView"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object p1, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldWebView:Landroid/webkit/WebView;

    .line 716
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object p2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mNewWebView:Landroid/webkit/WebView;

    .line 718
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->initializeAnimation(Landroid/webkit/WebView;)V

    .line 719
    return-void
.end method
