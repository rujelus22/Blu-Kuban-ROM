.class Lcom/estrongs/android/pop/view/ic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ImageMenuActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ImageMenuActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ic;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ic;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->a(Lcom/estrongs/android/pop/view/ImageMenuActivity;)[I

    move-result-object v2

    aget v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ic;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ic;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->finish()V

    return-void
.end method
