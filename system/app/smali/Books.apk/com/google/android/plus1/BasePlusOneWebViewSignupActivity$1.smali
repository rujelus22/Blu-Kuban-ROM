.class Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;
.super Ljava/lang/Object;
.source "BasePlusOneWebViewSignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    #getter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mWebViewShown:Z
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$000(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->mWebViewShown:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->access$002(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Z)Z

    .line 84
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->dismissProgressDialog()V

    .line 85
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->showWebView()V

    .line 87
    :cond_18
    return-void
.end method
