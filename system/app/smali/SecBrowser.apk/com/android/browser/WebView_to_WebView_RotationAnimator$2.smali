.class Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;
.super Ljava/lang/Object;
.source "WebView_to_WebView_RotationAnimator.java"

# interfaces
.implements Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;


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
    .line 154
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;->this$0:Lcom/android/browser/WebView_to_WebView_RotationAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify_newWebPageIsAboutToOpen(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 156
    return-void
.end method

.method public notify_newWebPageIsNowAvailable(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 161
    return-void
.end method
