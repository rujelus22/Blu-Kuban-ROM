.class Lcom/google/googlenav/ui/view/android/aV;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aP;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/aP;Landroid/content/Context;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Lcom/google/googlenav/ui/view/android/aP;

    const v0, 0x7f03005c

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v1, 0x0

    if-eqz p2, :cond_7b

    check-cast p2, Landroid/widget/LinearLayout;

    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aV;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->a()Lcom/google/googlenav/ap;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_16
    const v1, 0x7f0f0162

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Lcom/google/googlenav/ui/view/android/aP;

    sget-object v4, Lcom/google/googlenav/ui/bg;->ba:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ui/view/android/aP;Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v1, 0x7f0f0163

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ui/view/android/aP;Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v1, 0x7f0f0164

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x266

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aZ:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const v1, 0x7f0f0161

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/aP;->c(Lcom/google/googlenav/ui/view/android/aP;)Lay/r;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ui/view/android/aP;Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    invoke-virtual {v2, v0}, Lay/r;->a(Lcom/google/googlenav/ui/bG;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7a
    return-object p2

    :cond_7b
    const v0, 0x7f03005c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    goto/16 :goto_5

    :cond_88
    move-object v2, v1

    goto :goto_16
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aV;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->a()Lcom/google/googlenav/ap;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
