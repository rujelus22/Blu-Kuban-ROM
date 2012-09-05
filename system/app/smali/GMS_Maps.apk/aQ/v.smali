.class public LaQ/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private final e:Lcom/google/googlenav/ui/wizard/ez;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaQ/v;->a:Ljava/util/List;

    iput-object p2, p0, LaQ/v;->e:Lcom/google/googlenav/ui/wizard/ez;

    return-void
.end method

.method private a(LaQ/I;LaQ/I;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0300f4

    invoke-static {v0, p4, v3}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f02c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, p1, p3}, LaQ/I;->a(Landroid/view/View;LaQ/I;Landroid/view/View$OnClickListener;)V

    invoke-static {v2, p2, p3}, LaQ/I;->a(Landroid/view/View;LaQ/I;Landroid/view/View$OnClickListener;)V

    if-eqz p5, :cond_26

    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {v1, v3, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_25
.end method

.method static synthetic a(LaQ/v;)Lcom/google/googlenav/ui/wizard/ez;
    .registers 2

    iget-object v0, p0, LaQ/v;->e:Lcom/google/googlenav/ui/wizard/ez;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaQ/v;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f02ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    iget-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    const/16 v1, 0x2f3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaQ/v;->d:Landroid/view/View;

    const v0, 0x7f0f02bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, LaQ/v;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, LaQ/v;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 13

    const/16 v10, 0xa

    const/4 v8, 0x1

    const/16 v1, 0x8

    const/4 v7, 0x0

    iput-object p1, p0, LaQ/v;->a:Ljava/util/List;

    iget-object v0, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_25

    :cond_15
    iget-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, LaQ/v;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, LaQ/v;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, LaQ/w;

    invoke-direct {v3, p0}, LaQ/w;-><init>(LaQ/v;)V

    move v5, v7

    move v6, v8

    :goto_3b
    if-ge v5, v10, :cond_82

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_82

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaQ/I;

    invoke-virtual {v1}, LaQ/I;->e()Z

    move-result v0

    and-int v4, v6, v0

    const/4 v2, 0x0

    add-int/lit8 v0, v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9c

    add-int/lit8 v0, v5, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/I;

    invoke-virtual {v0}, LaQ/I;->e()Z

    move-result v2

    and-int/2addr v2, v4

    move v6, v2

    move-object v2, v0

    :goto_67
    add-int/lit8 v9, v5, 0x2

    iget-object v4, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    if-ge v9, v10, :cond_73

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_80

    :cond_73
    move v5, v8

    :goto_74
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LaQ/v;->a(LaQ/I;LaQ/I;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, LaQ/v;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v5, v9

    goto :goto_3b

    :cond_80
    move v5, v7

    goto :goto_74

    :cond_82
    if-eqz v6, :cond_90

    iget-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    const/16 v1, 0x2f4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_90
    iget-object v0, p0, LaQ/v;->c:Landroid/widget/TextView;

    const/16 v1, 0x2f3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_9c
    move v6, v4

    goto :goto_67
.end method
