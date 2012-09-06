.class final Lcom/dropbox/android/widget/i;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dropbox/android/widget/i;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 225
    iget-object v0, p0, Lcom/dropbox/android/widget/i;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b(Lcom/dropbox/android/widget/DbxMediaController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 226
    iget-object v0, p0, Lcom/dropbox/android/widget/i;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 229
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
