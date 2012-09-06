.class final Lcom/dropbox/android/widget/j;
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
    .line 319
    iput-object p1, p0, Lcom/dropbox/android/widget/j;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dropbox/android/widget/j;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0, p2}, Lcom/dropbox/android/widget/DbxMediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
