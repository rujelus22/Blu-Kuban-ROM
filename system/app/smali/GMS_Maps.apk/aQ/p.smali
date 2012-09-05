.class public LaQ/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private final d:LaQ/s;

.field private e:LaQ/m;

.field private f:LaQ/l;

.field private g:LaQ/l;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(LaQ/m;LaQ/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaQ/q;

    invoke-direct {v0, p0}, LaQ/q;-><init>(LaQ/p;)V

    iput-object v0, p0, LaQ/p;->h:Landroid/view/View$OnClickListener;

    new-instance v0, LaQ/r;

    invoke-direct {v0, p0}, LaQ/r;-><init>(LaQ/p;)V

    iput-object v0, p0, LaQ/p;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, LaQ/p;->e:LaQ/m;

    iput-object p2, p0, LaQ/p;->d:LaQ/s;

    return-void
.end method

.method static synthetic a(LaQ/p;)LaQ/m;
    .registers 2

    iget-object v0, p0, LaQ/p;->e:LaQ/m;

    return-object v0
.end method

.method private a()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaQ/p;->e:LaQ/m;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaQ/p;->e:LaQ/m;

    iget-object v0, v0, LaQ/m;->a:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, LaQ/p;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, LaQ/p;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, LaQ/p;->c:Landroid/widget/TextView;

    iget-object v3, p0, LaQ/p;->e:LaQ/m;

    iget-object v3, v3, LaQ/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, LaQ/p;->f:LaQ/l;

    invoke-direct {p0}, LaQ/p;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, LaQ/p;->e:LaQ/m;

    iget-object v0, v0, LaQ/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_44

    move v0, v1

    :goto_2f
    invoke-virtual {v3, v2, v4, v0}, LaQ/l;->a(ILjava/lang/String;Z)V

    iget-object v0, p0, LaQ/p;->g:LaQ/l;

    const/16 v3, 0x2ee

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LaQ/p;->e:LaQ/m;

    iget-object v4, v4, LaQ/m;->c:Ljava/lang/String;

    if-eqz v4, :cond_46

    :goto_40
    invoke-virtual {v0, v2, v3, v1}, LaQ/l;->a(ILjava/lang/String;Z)V

    goto :goto_13

    :cond_44
    move v0, v2

    goto :goto_2f

    :cond_46
    move v1, v2

    goto :goto_40
.end method

.method static synthetic b(LaQ/p;)LaQ/s;
    .registers 2

    iget-object v0, p0, LaQ/p;->d:LaQ/s;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, LaQ/p;->e:LaQ/m;

    iget v0, v0, LaQ/m;->i:I

    if-lez v0, :cond_1f

    const/16 v0, 0x2f0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, LaQ/p;->e:LaQ/m;

    iget v3, v3, LaQ/m;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/16 v0, 0x2ef

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method public a(LaQ/m;)V
    .registers 2

    iput-object p1, p0, LaQ/p;->e:LaQ/m;

    invoke-direct {p0}, LaQ/p;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f02bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaQ/p;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0f02c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaQ/p;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0f02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/p;->c:Landroid/widget/TextView;

    new-instance v0, LaQ/l;

    invoke-direct {v0}, LaQ/l;-><init>()V

    iput-object v0, p0, LaQ/p;->f:LaQ/l;

    new-instance v0, LaQ/l;

    invoke-direct {v0}, LaQ/l;-><init>()V

    iput-object v0, p0, LaQ/p;->g:LaQ/l;

    iget-object v0, p0, LaQ/p;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/p;->f:LaQ/l;

    invoke-virtual {v1}, LaQ/l;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, LaQ/p;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/p;->g:LaQ/l;

    invoke-virtual {v1}, LaQ/l;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, LaQ/p;->f:LaQ/l;

    iget-object v1, p0, LaQ/p;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, LaQ/l;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LaQ/p;->g:LaQ/l;

    iget-object v1, p0, LaQ/p;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, LaQ/l;->a(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, LaQ/p;->a()V

    return-void
.end method
