.class Lcom/estrongs/android/pop/view/lu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lu;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lu;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lu;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CURRENT_WORKING_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    :cond_28
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
