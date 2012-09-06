.class Lcom/estrongs/android/pop/view/it;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/view/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;

.field private b:[Lcom/estrongs/android/pop/view/a/i;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/a/i;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/it;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/view/it;->b:[Lcom/estrongs/android/pop/view/a/i;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/view/it;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/it;->b:[Lcom/estrongs/android/pop/view/a/i;

    aget-object v2, v0, p1

    if-eqz v2, :cond_3e

    const v0, 0x7f0701a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0701aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    iget-object v3, v2, Lcom/estrongs/android/pop/view/a/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_33
    if-eqz v1, :cond_3e

    iget-object v0, v2, Lcom/estrongs/android/pop/view/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3e
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
