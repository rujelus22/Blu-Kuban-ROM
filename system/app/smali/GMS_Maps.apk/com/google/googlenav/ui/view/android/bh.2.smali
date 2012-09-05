.class public Lcom/google/googlenav/ui/view/android/bh;
.super Lcom/google/googlenav/ui/view/android/bx;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lay/q;


# instance fields
.field private c:Lcom/google/googlenav/ui/bb;

.field private d:Ljava/lang/CharSequence;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    const v0, 0x7f0d001a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;I)V
    .registers 5

    invoke-direct {p0, p1, p3, p2}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bh;->k:Z

    return-void
.end method

.method private a(Lbb/p;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v2

    if-le v1, v2, :cond_14

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    move v1, v2

    goto :goto_11

    :cond_16
    return v1
.end method

.method private a(Lbb/m;)Landroid/view/View;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030192

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lbb/m;->h:Lbb/y;

    iget-object v1, v1, Lbb/y;->c:Lbb/n;

    if-eqz v1, :cond_2f

    const v1, 0x7f0f022e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lbb/m;->h:Lbb/y;

    iget-object v3, v3, Lbb/y;->c:Lbb/n;

    iget v4, p1, Lbb/m;->c:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/LayoutInflater;Lbb/n;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v2, p1, Lbb/m;->h:Lbb/y;

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/view/ViewGroup;Lbb/y;Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private a(Lbb/o;)Landroid/view/View;
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;

    iget-boolean v2, p1, Lbb/o;->u:Z

    if-eqz v2, :cond_4c

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/Y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bh;->f:Lcom/google/googlenav/ui/p;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/googlenav/ui/view/android/Y;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v2, p1, Lbb/o;->w:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_39
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/o;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v6, p1, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/LayoutInflater;Lbb/o;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/widget/AbsListView;)V

    return-object v0

    :cond_4c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bh;->f:Lcom/google/googlenav/ui/p;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;Landroid/widget/ListView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p1}, Lbb/o;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_39
.end method

.method private a(Lbb/v;)Landroid/view/View;
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030190

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0f03fc

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move v2, v3

    :goto_1a
    iget-object v4, p1, Lbb/v;->h:[Lbb/x;

    array-length v4, v4

    if-ge v2, v4, :cond_79

    if-eqz v2, :cond_2b

    new-instance v4, Landroid/widget/TextView;

    sget-object v5, Lcom/google/googlenav/ui/view/android/bh;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2b
    iget-object v4, p1, Lbb/v;->h:[Lbb/x;

    aget-object v5, v4, v2

    iget-object v8, v5, Lbb/x;->a:[Lcom/google/googlenav/ui/bh;

    if-eqz v8, :cond_70

    array-length v4, v8

    if-lez v4, :cond_70

    move v4, v7

    :goto_37
    if-eqz v4, :cond_4e

    new-instance v9, Landroid/widget/TextView;

    sget-object v10, Lcom/google/googlenav/ui/view/android/bh;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4e
    iget-object v8, v5, Lbb/x;->b:[Lbb/w;

    if-nez v2, :cond_72

    if-nez v4, :cond_72

    if-eqz v8, :cond_72

    array-length v4, v8

    if-ne v4, v7, :cond_72

    move v4, v7

    :goto_5a
    if-eqz v4, :cond_74

    sget-object v4, Lcom/google/googlenav/ui/bg;->ah:Lcom/google/googlenav/ui/bg;

    move-object v5, v4

    :goto_5f
    if-eqz v8, :cond_76

    array-length v4, v8

    if-lez v4, :cond_76

    move v4, v3

    :goto_65
    array-length v9, v8

    if-ge v4, v9, :cond_76

    aget-object v9, v8, v4

    invoke-direct {p0, v9, v1, v5}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/w;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/bg;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_70
    move v4, v3

    goto :goto_37

    :cond_72
    move v4, v3

    goto :goto_5a

    :cond_74
    move-object v5, v6

    goto :goto_5f

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_79
    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bl;Z)V
    .registers 9

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    if-nez p3, :cond_10

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_f

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bl;->l()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p3, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    const v0, 0x7f0f03a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2c
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bl;->m()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p3, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    const v0, 0x7f0f03a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_48
    const v0, 0x7f0f03a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_89

    iget-object v1, p3, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_c8

    if-eqz p4, :cond_c8

    move v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_89

    iget v0, p3, Lcom/google/googlenav/ui/bl;->r:I

    packed-switch v0, :pswitch_data_f0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_89
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p3, Lcom/google/googlenav/ui/bl;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p3}, Lcom/google/googlenav/ui/bl;->n()Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_c8
    move v1, v3

    goto :goto_65

    :pswitch_ca
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_82

    :pswitch_da
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_82

    :cond_ea
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    nop

    :pswitch_data_f0
    .packed-switch 0x2c
        :pswitch_ca
        :pswitch_da
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V
    .registers 5

    if-nez p1, :cond_1a

    const/4 v0, 0x0

    move-object v2, v0

    :goto_4
    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    const v1, 0x7f0f0167

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    return-void

    :cond_1a
    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->E:LaJ/B;

    move-object v2, v0

    goto :goto_4
.end method

.method private a(Lbb/o;Landroid/widget/LinearLayout;)V
    .registers 10

    const/16 v1, 0x11

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p1, Lbb/o;->p:Lbb/p;

    if-eqz v0, :cond_9c

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7f080007

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_15
    iget-object v0, p1, Lbb/o;->p:Lbb/p;

    iget v0, v0, Lbb/p;->a:I

    if-ne v0, v4, :cond_2b

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x4000

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :cond_2b
    iget-object v0, p1, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v0, v5

    if-eqz v1, :cond_58

    const v0, 0x7f0f0011

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v3, p1, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v5

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    iget-object v1, p1, Lbb/o;->p:Lbb/p;

    iget v1, v1, Lbb/p;->a:I

    if-ne v1, v4, :cond_58

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_58
    iget-object v0, p1, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v0, v4

    if-eqz v1, :cond_78

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f0012

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p1, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v4

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    :cond_78
    iget-object v0, p1, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v0, v6

    if-eqz v1, :cond_98

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f001c

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p1, Lbb/o;->p:Lbb/p;

    iget-object v3, v3, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v6

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V

    :cond_98
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9b
    :goto_9b
    return-void

    :cond_9c
    if-eqz p2, :cond_9b

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9b
.end method

.method private a(Lbb/w;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/bg;)V
    .registers 6

    if-eqz p1, :cond_9

    iget-object v0, p1, Lbb/w;->b:Ljava/lang/String;

    iget-object v1, p1, Lbb/w;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/googlenav/ui/view/android/bh;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/bg;)V

    :cond_9
    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v1

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    :goto_b
    if-eqz p0, :cond_16

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(LaE/h;)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(LaJ/B;)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->b(LaJ/B;)V

    :cond_16
    if-eqz p1, :cond_24

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(LaP/h;)V

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(LaE/h;)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(LaJ/B;)V

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(LaJ/B;)V

    :cond_24
    return-void

    :cond_25
    move-object v1, v0

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/bg;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03018f

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p4, :cond_38

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    const/4 v2, 0x0

    :try_start_1d
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_22} :catch_44

    :goto_22
    if-eqz v1, :cond_34

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bi;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/view/android/bi;-><init>(Lcom/google/googlenav/ui/view/android/bh;Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v5, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_34
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_37
    return-void

    :cond_38
    invoke-static {p1, p4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :catch_44
    move-exception v3

    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_60
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/net/MalformedURLException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_22

    :catch_66
    move-exception v1

    const-string v3, "UI"

    invoke-static {v3, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6c
    move v1, v2

    goto :goto_22
.end method

.method private a(Lcom/google/googlenav/ui/bl;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/google/googlenav/ui/bl;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    new-instance v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bh;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto :goto_3
.end method

.method private w()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/o;

    iget-object v1, v0, Lbb/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lbb/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected H_()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bh;->k:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lar/r;->a()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    if-eqz v0, :cond_7

    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v1}, Lbb/f;->e()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v1}, Lbb/f;->d()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;)V

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v0}, Lbb/f;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->m()V

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/o;

    invoke-virtual {v0}, Lbb/o;->i()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a_(Landroid/view/View;)V

    :cond_47
    invoke-virtual {v0}, Lbb/o;->j()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->b(Landroid/view/View;)V

    :cond_52
    invoke-virtual {v0}, Lbb/o;->k()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;Lbb/o;)V

    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v0}, Lbb/f;->b()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v0}, Lbb/f;->a()[Laq/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a([Laq/a;)V

    :cond_6e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {v0}, Lbb/f;->f()V

    goto :goto_7
.end method

.method protected N_()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    :cond_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->m()V

    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;
    .registers 8

    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    if-nez v0, :cond_a

    iget-object v0, p3, Lbb/o;->j:Lbb/p;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    iget v1, p3, Lbb/o;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/LayoutInflater;Lbb/n;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;Lbb/o;)V

    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    if-eqz v0, :cond_2b

    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    iget-object v1, v0, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    iget-object v0, v1, Lcom/google/googlenav/ui/bl;->E:LaJ/B;

    if-eqz v0, :cond_2d

    move-object v0, v1

    :goto_22
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;Lcom/google/googlenav/ui/bl;)V

    check-cast p4, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p4, v2, v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2b
    move-object v0, v2

    goto :goto_9

    :cond_2d
    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    iget-object v0, v0, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    goto :goto_22
.end method

.method protected a(Landroid/view/LayoutInflater;Lbb/n;I)Landroid/view/View;
    .registers 9

    const v0, 0x7f030096

    packed-switch p3, :pswitch_data_5c

    :pswitch_6
    const v0, 0x7f03008b

    :cond_9
    :goto_9
    :pswitch_9
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f01fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-boolean v1, p2, Lbb/n;->o:Z

    if-eqz v1, :cond_58

    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    const v1, 0x7f0f01f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const v2, 0x7f0f01f9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    const v3, 0x7f0f02fc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v4, p2, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(Lbb/n;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    return-object v0

    :pswitch_42
    const v0, 0x7f03008f

    goto :goto_9

    :pswitch_46
    const v0, 0x7f030090

    goto :goto_9

    :pswitch_4a
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f030097

    goto :goto_9

    :pswitch_54
    const v0, 0x7f030095

    goto :goto_9

    :cond_58
    const/16 v1, 0x8

    goto :goto_1e

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_54
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_4a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_46
        :pswitch_6
        :pswitch_6
        :pswitch_54
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method protected a(Lbb/f;)Landroid/view/View;
    .registers 3

    iget v0, p1, Lbb/f;->b:I

    packed-switch v0, :pswitch_data_1c

    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :pswitch_7
    check-cast p1, Lbb/o;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/o;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :pswitch_e
    check-cast p1, Lbb/v;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/v;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :pswitch_15
    check-cast p1, Lbb/m;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/m;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_e
        :pswitch_15
    .end packed-switch
.end method

.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->x()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    if-eqz v0, :cond_12

    sget v1, Lcom/google/googlenav/ui/view/android/bh;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_12
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Lbb/o;Landroid/widget/LinearLayout;)V
    .registers 6

    iget-object v0, p2, Lbb/o;->i:[Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_26

    const v0, 0x7f0f0071

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_26

    iget-object v1, p2, Lbb/o;->i:[Lcom/google/googlenav/ui/bh;

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_27

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_26
    return-void

    :cond_27
    const/16 v1, 0x8

    goto :goto_23
.end method

.method protected a(Landroid/view/View;Lbb/o;)V
    .registers 12

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lbb/o;->j:Lbb/p;

    if-eqz v0, :cond_e0

    const v0, 0x7f0f0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e0

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/bl;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/bl;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/bl;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lbb/o;->j:Lbb/p;

    iget-object v1, v1, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/bl;)Z

    move-result v1

    if-eqz v1, :cond_e0

    :cond_44
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x190

    move v2, v1

    :goto_51
    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_e1

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    :goto_67
    iget-object v5, p2, Lbb/o;->j:Lbb/p;

    iget v5, v5, Lbb/p;->a:I

    div-int/2addr v2, v5

    sub-int v1, v2, v1

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/p;)I

    move-result v2

    if-lt v1, v2, :cond_b1

    move v1, v4

    :goto_77
    new-array v4, v6, [I

    fill-array-data v4, :array_e4

    new-array v5, v6, [I

    fill-array-data v5, :array_f0

    move v2, v3

    :goto_82
    array-length v6, v4

    if-ge v2, v6, :cond_b3

    aget v6, v4, v2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aget v7, v5, v2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p2, Lbb/o;->j:Lbb/p;

    iget-object v8, v8, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v8, v8, v2

    invoke-direct {p0, v6, v7, v8, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bl;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9d
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_51

    :cond_b1
    move v1, v3

    goto :goto_77

    :cond_b3
    const v1, 0x7f0f017a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_dd

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v2

    iget-object v4, p2, Lbb/o;->j:Lbb/p;

    iget-object v4, v4, Lbb/p;->d:Law/f;

    invoke-virtual {v2, v1, v4}, Law/g;->a(Landroid/view/View;Law/f;)V

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget v2, v2, Lbb/p;->c:I

    if-eqz v2, :cond_dd

    const v2, 0x7f0f017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p2, Lbb/o;->j:Lbb/p;

    iget v2, v2, Lbb/p;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_dd
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_e0
    return-void

    :cond_e1
    move v1, v3

    goto :goto_67

    nop

    :array_e4
    .array-data 0x4
        0x6et 0x1t 0xft 0x7ft
        0x70t 0x1t 0xft 0x7ft
        0x72t 0x1t 0xft 0x7ft
        0xfat 0x1t 0xft 0x7ft
    .end array-data

    :array_f0
    .array-data 0x4
        0xdt 0x2t 0xft 0x7ft
        0xet 0x2t 0xft 0x7ft
        0xft 0x2t 0xft 0x7ft
        0x10t 0x2t 0xft 0x7ft
    .end array-data
.end method

.method protected a(Landroid/widget/AbsListView;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_39

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bb;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v1, v0, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    if-eqz v1, :cond_2a

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    invoke-interface {v0}, Lcom/google/googlenav/ui/b;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    :cond_2a
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    goto :goto_3

    :cond_33
    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/util/List;)Ljava/lang/String;

    goto :goto_3

    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    goto :goto_3
.end method

.method protected a_(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/o;

    iget-object v1, v0, Lbb/o;->h:Lbb/n;

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const v1, 0x7f0f01f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const v2, 0x7f0f01f9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    const v3, 0x7f0f02fc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bh;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v0, v0, Lbb/o;->h:Lbb/n;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aB;->a(Lbb/n;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_8
.end method

.method public aa_()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->i()Lbb/f;

    move-result-object v0

    sget-object v1, Lbb/h;->c:Lbb/h;

    invoke-virtual {v0, v1}, Lbb/f;->a(Lbb/h;)V

    sget-object v1, Lbb/h;->a:Lbb/h;

    invoke-virtual {v0, v1}, Lbb/f;->a(Lbb/h;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->v()V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/o;

    const v1, 0x7f0f000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/o;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:I

    packed-switch v0, :pswitch_data_22

    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/f;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :pswitch_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/v;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/v;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :pswitch_19
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    check-cast v0, Lbb/m;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/m;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method protected c(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    if-eqz v0, :cond_c

    iget v1, v0, Lbb/f;->b:I

    if-eq v1, v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    check-cast v0, Lbb/o;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_d4

    goto :goto_c

    :sswitch_17
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_21
    iget-object v0, v0, Lbb/o;->j:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_2b
    iget-object v0, v0, Lbb/o;->j:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_35
    iget-object v0, v0, Lbb/o;->j:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_3f
    iget-object v0, v0, Lbb/o;->j:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_49
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_53
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_5d
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->a:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_69
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->a:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_75
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->a:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_81
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->a:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_c

    :sswitch_8d
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->b:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    :sswitch_9a
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->b:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    :sswitch_a7
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->b:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    :sswitch_b4
    iget-object v0, v0, Lbb/o;->k:Lbb/r;

    iget-object v0, v0, Lbb/r;->b:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    :sswitch_c1
    iget-object v0, v0, Lbb/o;->h:Lbb/n;

    iget-object v0, v0, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    :sswitch_ca
    iget-object v0, v0, Lbb/o;->h:Lbb/n;

    iget-object v0, v0, Lbb/n;->n:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    goto/16 :goto_c

    nop

    :sswitch_data_d4
    .sparse-switch
        0x7f0f0011 -> :sswitch_17
        0x7f0f0012 -> :sswitch_49
        0x7f0f001c -> :sswitch_53
        0x7f0f016e -> :sswitch_21
        0x7f0f0170 -> :sswitch_2b
        0x7f0f0172 -> :sswitch_35
        0x7f0f01f7 -> :sswitch_c1
        0x7f0f01f8 -> :sswitch_c1
        0x7f0f01fa -> :sswitch_3f
        0x7f0f025d -> :sswitch_8d
        0x7f0f025e -> :sswitch_9a
        0x7f0f025f -> :sswitch_a7
        0x7f0f0260 -> :sswitch_b4
        0x7f0f0261 -> :sswitch_5d
        0x7f0f0262 -> :sswitch_69
        0x7f0f0263 -> :sswitch_75
        0x7f0f0264 -> :sswitch_81
        0x7f0f02fc -> :sswitch_ca
    .end sparse-switch
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget v0, v0, Lbb/f;->f:I

    packed-switch v0, :pswitch_data_28

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method protected m()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:I

    packed-switch v0, :pswitch_data_68

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->requestWindowFeature(I)Z

    :cond_25
    :goto_25
    return-void

    :pswitch_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bh;->w()V

    goto :goto_25

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_25

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_25

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0274

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f040a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->i()Lbb/f;

    move-result-object v1

    iget-object v1, v1, Lbb/f;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public n()I
    .registers 4

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->x()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_11

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    :cond_11
    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->k()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/widget/AdapterView;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->k()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/widget/AdapterView;I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bb;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->c:Lcom/google/googlenav/ui/bb;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/bb;)Z

    move-result v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bh;->k()V

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/googlenav/ui/view/android/bx;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bh;->d:Ljava/lang/CharSequence;

    return-void
.end method
