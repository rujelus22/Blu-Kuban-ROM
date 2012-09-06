.class final Lcom/dropbox/android/activity/cj;
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
    .line 230
    iput-object p1, p0, Lcom/dropbox/android/activity/cj;->a:Lcom/dropbox/android/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dropbox/android/activity/cj;->a:Lcom/dropbox/android/activity/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->a(Lcom/dropbox/android/activity/WebViewActivity;Z)V

    .line 234
    return-void
.end method
