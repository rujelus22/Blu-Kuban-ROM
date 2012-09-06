.class Lcom/twitter/android/ey;
.super Ljava/lang/Object;


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    const v0, 0x7f07003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ey;->c:Landroid/widget/TextView;

    const v0, 0x7f07005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/ew;)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    if-nez p0, :cond_32

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/twitter/android/ey;

    invoke-direct {v0, p0}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1a
    iget-object v1, v0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/twitter/android/ew;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p2, Lcom/twitter/android/ew;->b:I

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    iget v2, p2, Lcom/twitter/android/ew;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_31
    return-object p0

    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ey;

    goto :goto_1a

    :cond_39
    iget-object v0, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31
.end method
