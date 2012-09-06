.class Lcom/estrongs/android/pop/view/ly;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/lv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/lv;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/lv;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    iget v1, v1, Lcom/estrongs/android/pop/view/lv;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    iget v1, v1, Lcom/estrongs/android/pop/view/lv;->i:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ly;->a:Lcom/estrongs/android/pop/view/lv;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/lv;->h:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/lv;->a(ILjava/lang/Object;)V

    return-void
.end method
