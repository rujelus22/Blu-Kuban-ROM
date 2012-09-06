.class final Lcom/dropbox/android/widget/l;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/dropbox/android/widget/l;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/dropbox/android/widget/l;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->i(Lcom/dropbox/android/widget/DbxMediaController;)V

    .line 569
    iget-object v0, p0, Lcom/dropbox/android/widget/l;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 570
    return-void
.end method
