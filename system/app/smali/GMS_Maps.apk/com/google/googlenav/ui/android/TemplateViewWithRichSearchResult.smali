.class public Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field a:Ljava/util/List;

.field i:Ljava/util/List;

.field j:Ljava/util/List;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:[Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    return-void
.end method

.method private f()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lbb/c;Lbb/E;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    if-eqz v0, :cond_6e

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_6e

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/ui/bn;

    iget-object v2, v0, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    if-eqz v2, :cond_65

    iget-object v1, v0, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/ai;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    :goto_20
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->b:Lbb/E;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/bw;->by:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/google/googlenav/ui/bw;->bz:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_52
    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->L:Ljava/lang/Object;

    sget-object v1, Lcom/google/googlenav/ui/bl;->h:Ljava/lang/Object;

    if-ne v0, v1, :cond_64

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_64

    const v0, 0x7f020238

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->setBackgroundResource(I)V

    :cond_64
    return-void

    :cond_65
    iget-object v2, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v2, :cond_6e

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    check-cast v0, Lai/f;

    goto :goto_20

    :cond_6e
    move-object v0, v1

    goto :goto_20
.end method

.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bp:Lcom/google/googlenav/ui/bg;

    if-eq v4, v5, :cond_38

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bq:Lcom/google/googlenav/ui/bg;

    if-eq v4, v5, :cond_38

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_45

    :cond_38
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v4, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-static {p0, v4, v0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    goto :goto_1a

    :cond_45
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->br:Lcom/google/googlenav/ui/bg;

    if-eq v4, v5, :cond_51

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bs:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_57

    :cond_51
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_57
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bt:Lcom/google/googlenav/ui/bg;

    if-eq v4, v5, :cond_63

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bu:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_69

    :cond_63
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_69
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    if-eq v4, v5, :cond_75

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bw:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_7b

    :cond_75
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_7b
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bx:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_90

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lbb/c;Lbb/E;)V

    goto :goto_1a

    :cond_90
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->aH:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_9d

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    goto/16 :goto_1a

    :cond_9d
    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->by:Lcom/google/googlenav/ui/bg;

    if-ne v4, v5, :cond_1a

    iget-boolean v4, p1, Lcom/google/googlenav/ui/bl;->C:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-boolean v5, p1, Lcom/google/googlenav/ui/bl;->D:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-object v5, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-object v5, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->e:Lbb/E;

    invoke-static {v4, v5, v0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v0

    if-nez v0, :cond_d1

    move v0, v1

    :goto_cc
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto/16 :goto_1a

    :cond_d1
    move v0, v2

    goto :goto_cc

    :cond_d3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_134

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_134

    move v3, v1

    :goto_f0
    if-eqz v3, :cond_110

    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x50

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_110
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v1, :cond_11a

    if-eqz v3, :cond_136

    :cond_11a
    :goto_11a
    move v0, v1

    move v1, v2

    :goto_11c
    if-ge v1, v4, :cond_138

    iget-object v5, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    add-int/lit8 v3, v0, 0x1

    aget-object v5, v5, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_11c

    :cond_134
    move v3, v2

    goto :goto_f0

    :cond_136
    move v1, v2

    goto :goto_11a

    :cond_138
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_153

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_153
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0294

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0f016a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0f0298

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    const v0, 0x7f0f0295

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    const v0, 0x7f0f03a6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    const v0, 0x7f0f02a5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    return-void
.end method
