.class public Lcom/google/googlenav/ui/view/dialog/aE;
.super Lcom/google/googlenav/ui/view/dialog/at;

# interfaces
.implements Lay/q;


# static fields
.field private static final b:Lcom/google/googlenav/ui/bg;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/List;

.field private final m:Lcom/google/googlenav/ui/bF;

.field private final n:Lah/f;

.field private o:Landroid/widget/ListView;

.field private p:Lcom/google/googlenav/ui/view/dialog/aH;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/bg;->ah:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/aE;->b:Lcom/google/googlenav/ui/bg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ui/bF;Lah/f;Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 7

    invoke-direct {p0, p5}, Lcom/google/googlenav/ui/view/dialog/at;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    const/16 v0, 0x47e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:Ljava/lang/String;

    const/16 v0, 0x47f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->l:Ljava/util/List;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aE;->m:Lcom/google/googlenav/ui/bF;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/aE;->n:Lah/f;

    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030146

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f038a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x480

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Landroid/view/View;Ljava/lang/String;)V

    const/16 v2, 0x47d

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const v0, 0x7f0f038b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/view/dialog/aE;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aE;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private b(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 7

    const/16 v4, 0xa

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030149

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/aE;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/aE;)Lcom/google/googlenav/ui/view/dialog/aH;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->p:Lcom/google/googlenav/ui/view/dialog/aH;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aH;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->Z()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->l:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/aH;-><init>(Lcom/google/googlenav/ui/view/dialog/aE;Landroid/content/Context;Ljava/util/List;Lcom/google/googlenav/ui/view/dialog/aF;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->p:Lcom/google/googlenav/ui/view/dialog/aH;

    const v0, 0x7f0f039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aG;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aG;-><init>(Lcom/google/googlenav/ui/view/dialog/aE;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aE;->b(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->p:Lcom/google/googlenav/ui/view/dialog/aH;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/aE;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/aE;)Lcom/google/googlenav/ui/bF;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->m:Lcom/google/googlenav/ui/bF;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/aE;)Lah/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->n:Lah/f;

    return-object v0
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->p:Lcom/google/googlenav/ui/view/dialog/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aH;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v0, 0x1

    :goto_19
    if-ge v0, v1, :cond_23

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aE;->o:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_23
    if-eqz v2, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->d:Ljava/lang/String;

    :goto_27
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->q:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/aE;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/aE;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:Ljava/lang/String;

    goto :goto_27
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x47c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aF;-><init>(Lcom/google/googlenav/ui/view/dialog/aE;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->p:Lcom/google/googlenav/ui/view/dialog/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aH;->notifyDataSetChanged()V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aE;->b(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->h()V

    return-object v0
.end method
