.class final Lcom/dropbox/android/activity/ch;
.super Landroid/webkit/WebChromeClient;
.source "panda.py"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/dropbox/android/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dropbox/android/activity/ch;->b:Lcom/dropbox/android/activity/WebViewActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/ch;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dropbox/android/activity/ch;->a:Landroid/app/Activity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 208
    return-void
.end method
