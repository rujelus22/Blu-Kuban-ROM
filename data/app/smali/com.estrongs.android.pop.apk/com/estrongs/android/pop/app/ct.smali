.class Lcom/estrongs/android/pop/app/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->g(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->h(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->i(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    :try_start_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    goto :goto_23

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->h(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->i(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->j(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->h(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_66} :catch_79

    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->k(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopNoteEditor;->e(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    goto :goto_23

    :catch_79
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->h(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_66
.end method
