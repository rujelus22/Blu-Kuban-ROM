.class final Lcom/dropbox/android/activity/k;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/j;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/j;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    iget-object v0, v0, Lcom/dropbox/android/activity/j;->a:Lcom/dropbox/android/activity/m;

    iget-object v0, v0, Lcom/dropbox/android/activity/m;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    .line 448
    iget-object v0, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    iget-object v0, v0, Lcom/dropbox/android/activity/j;->b:Lcom/dropbox/android/activity/i;

    invoke-static {v0}, Lcom/dropbox/android/activity/i;->a(Lcom/dropbox/android/activity/i;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    iget-object v0, v0, Lcom/dropbox/android/activity/j;->b:Lcom/dropbox/android/activity/i;

    iget-object v1, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    iget-object v1, v1, Lcom/dropbox/android/activity/j;->a:Lcom/dropbox/android/activity/m;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/i;->a(Lcom/dropbox/android/activity/i;Lcom/dropbox/android/activity/m;)V

    .line 453
    :goto_1f
    return-void

    .line 451
    :cond_20
    iget-object v0, p0, Lcom/dropbox/android/activity/k;->a:Lcom/dropbox/android/activity/j;

    iget-object v0, v0, Lcom/dropbox/android/activity/j;->b:Lcom/dropbox/android/activity/i;

    invoke-static {v0}, Lcom/dropbox/android/activity/i;->b(Lcom/dropbox/android/activity/i;)V

    goto :goto_1f
.end method
