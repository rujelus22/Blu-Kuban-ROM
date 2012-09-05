.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V
    .registers 2
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$600(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$600(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 517
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$800(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$800(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 520
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-virtual {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    .line 521
    return-void
.end method
