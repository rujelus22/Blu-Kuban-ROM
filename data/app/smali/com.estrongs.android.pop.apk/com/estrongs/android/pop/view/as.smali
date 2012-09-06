.class Lcom/estrongs/android/pop/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->b(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->c(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/as;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->d(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_29
.end method
