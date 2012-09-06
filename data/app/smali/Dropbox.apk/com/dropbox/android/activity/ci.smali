.class final Lcom/dropbox/android/activity/ci;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/WebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dropbox/android/activity/ci;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/android/activity/ci;->a:Lcom/dropbox/android/activity/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->a(Lcom/dropbox/android/activity/WebViewActivity;Z)V

    .line 226
    return-void
.end method
