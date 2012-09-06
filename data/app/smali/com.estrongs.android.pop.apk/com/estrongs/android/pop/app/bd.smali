.class Lcom/estrongs/android/pop/app/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/CompressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/CompressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f07002b

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->a(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->b(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f070029

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->a(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->b(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e
.end method
