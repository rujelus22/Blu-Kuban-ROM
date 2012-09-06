.class Lcom/google/googlenav/ui/view/android/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->b(Lcom/google/googlenav/ui/view/android/j;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1e

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->b(Lcom/google/googlenav/ui/view/android/j;)Lcom/google/googlenav/suggest/android/SuggestView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/j;->c(Lcom/google/googlenav/ui/view/android/j;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
