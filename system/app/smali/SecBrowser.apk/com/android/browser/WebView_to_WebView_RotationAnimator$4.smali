.class Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;
.super Ljava/lang/Object;
.source "WebView_to_WebView_RotationAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebView_to_WebView_RotationAnimator;->finishAnimation()V
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
    .line 287
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$100(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Lcom/android/browser/AnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/AnimView;->recycleCache()V

    .line 291
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$200(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Lcom/android/browser/AnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/AnimView;->recycleCache()V

    .line 292
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object v1, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldWebView:Landroid/webkit/WebView;

    .line 293
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mNewWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    iput-object v1, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mNewWebView:Landroid/webkit/WebView;

    .line 294
    :cond_27
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #getter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$300(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    #setter for: Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;
    invoke-static {v0, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->access$302(Lcom/android/browser/WebView_to_WebView_RotationAnimator;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 295
    :cond_34
    return-void
.end method
