.class final Lcom/sdgtl/mediahub/spr/ae;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/sdgtl/mediahub/spr/Main;

.field private c:Lcom/sdgtl/mediahub/spr/common/dx;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdgtl/mediahub/spr/Main;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/ae;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/ae;)Lcom/sdgtl/mediahub/spr/Main;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/sdgtl/mediahub/spr/common/cn;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    return-object v0
.end method

.method public final a()Lcom/sdgtl/mediahub/spr/common/dx;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    return-object v0
.end method

.method public final a(Lcom/sdgtl/mediahub/spr/common/dx;)V
    .registers 15

    const v12, 0x7f0d0007

    const v11, 0x7f0d0006

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    if-eqz v0, :cond_17

    move v2, v3

    :goto_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_34

    :cond_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->d:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    move v5, v3

    :goto_28
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_94

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/ae;->notifyDataSetChanged()V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_45
    if-lt v4, v5, :cond_4b

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_4b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->stopFlipping()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_90

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->c:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0, v6}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->removeView(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_90
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_45

    :cond_94
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/cn;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ae;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->Q(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    move v4, v3

    :goto_ba
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_c5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_28

    :cond_c5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/co;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ae;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    invoke-virtual {v1, v2, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/co;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_130

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f1
    :goto_f1
    const v1, 0x7f0d0008

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/cn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0009

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x2

    if-ge v2, v8, :cond_143

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11c
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0, v7}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_ba

    :cond_130
    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/Main;->o(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v8

    if-nez v8, :cond_f1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/co;->e:Ljava/lang/String;

    new-instance v9, Lcom/sdgtl/mediahub/spr/af;

    invoke-direct {v9, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/af;-><init>(Lcom/sdgtl/mediahub/spr/ae;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-static {v8, v9}, Lcom/sdgtl/mediahub/spr/aj;->b(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V

    goto :goto_f1

    :cond_143
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/co;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11c
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cn;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cn;

    if-nez p2, :cond_2b

    iget-object p2, v0, Lcom/sdgtl/mediahub/spr/common/cn;->f:Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ae;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    return-object p2
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
