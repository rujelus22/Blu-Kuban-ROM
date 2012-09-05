.class final Lcom/google/android/youtube/app/ui/dg;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/da;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/da;)V
    .registers 3
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    .line 191
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/da;->b(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 192
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->f(Lcom/google/android/youtube/app/ui/da;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/dg;->b:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->f(Lcom/google/android/youtube/app/ui/da;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 226
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/f;->a(Ljava/lang/Exception;)V

    .line 227
    return-void
.end method

.method public final d_()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->f(Lcom/google/android/youtube/app/ui/da;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/f;->d_()V

    .line 221
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 195
    if-eqz p2, :cond_42

    .line 196
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/dg;->b:Z

    if-nez v0, :cond_41

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->e(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a014b

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/da;->d(Lcom/google/android/youtube/app/ui/da;)Lcom/google/android/youtube/app/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->d()Z

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 209
    :cond_41
    :goto_41
    return-void

    .line 205
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dg;->a:Lcom/google/android/youtube/app/ui/da;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/da;->c(Lcom/google/android/youtube/app/ui/da;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_41
.end method
