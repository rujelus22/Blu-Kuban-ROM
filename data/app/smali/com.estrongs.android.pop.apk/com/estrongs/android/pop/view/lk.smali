.class Lcom/estrongs/android/pop/view/lk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lk;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c
.end method
