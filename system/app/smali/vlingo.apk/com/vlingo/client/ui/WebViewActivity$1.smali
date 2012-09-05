.class Lcom/vlingo/client/ui/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/WebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vlingo/client/ui/WebViewActivity$1;->this$0:Lcom/vlingo/client/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/ui/WebViewActivity$1;->this$0:Lcom/vlingo/client/ui/WebViewActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/vlingo/client/ui/WebViewActivity;->setProgress(I)V

    .line 69
    return-void
.end method
