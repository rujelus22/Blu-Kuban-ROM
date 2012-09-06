.class Lcom/estrongs/android/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->a(Lcom/estrongs/android/widget/a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->b(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->c(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->b(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/b;->a:Lcom/estrongs/android/widget/a;

    invoke-static {v0}, Lcom/estrongs/android/widget/a;->c(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_20
.end method
