.class public LaC/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private final d:LaC/v;

.field private e:Lcom/google/googlenav/br;

.field private f:LaC/l;

.field private g:LaC/l;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/br;LaC/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, LaC/t;

    invoke-direct {v0, p0}, LaC/t;-><init>(LaC/s;)V

    iput-object v0, p0, LaC/s;->h:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, LaC/u;

    invoke-direct {v0, p0}, LaC/u;-><init>(LaC/s;)V

    iput-object v0, p0, LaC/s;->i:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p2, p0, LaC/s;->d:LaC/v;

    .line 34
    iput-object p1, p0, LaC/s;->e:Lcom/google/googlenav/br;

    .line 35
    return-void
.end method

.method static synthetic a(LaC/s;)LaC/v;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LaC/s;->d:LaC/v;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    invoke-virtual {v0}, Lcom/google/googlenav/br;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 95
    :cond_14
    iget-object v0, p0, LaC/s;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    :goto_1b
    return-void

    .line 97
    :cond_1c
    iget-object v0, p0, LaC/s;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    iget-object v0, p0, LaC/s;->c:Landroid/widget/TextView;

    iget-object v3, p0, LaC/s;->e:Lcom/google/googlenav/br;

    invoke-virtual {v3}, Lcom/google/googlenav/br;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, LaC/s;->f:LaC/l;

    const v4, 0x7f02031c

    invoke-direct {p0}, LaC/s;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget v0, v0, Lcom/google/googlenav/br;->f:I

    if-lez v0, :cond_5a

    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_42
    invoke-virtual {v3, v4, v5, v0}, LaC/l;->a(ILjava/lang/String;Z)V

    .line 101
    iget-object v0, p0, LaC/s;->g:LaC/l;

    const v3, 0x7f02031b

    const/16 v4, 0x3a6

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget-object v5, v5, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    if-eqz v5, :cond_5c

    :goto_56
    invoke-virtual {v0, v3, v4, v1}, LaC/l;->a(ILjava/lang/String;Z)V

    goto :goto_1b

    :cond_5a
    move v0, v2

    .line 99
    goto :goto_42

    :cond_5c
    move v1, v2

    .line 101
    goto :goto_56
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget v0, v0, Lcom/google/googlenav/br;->f:I

    if-lez v0, :cond_1f

    .line 112
    const/16 v0, 0x3a9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, LaC/s;->e:Lcom/google/googlenav/br;

    iget v3, v3, Lcom/google/googlenav/br;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_1e
    return-object v0

    :cond_1f
    const/16 v0, 0x3a8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    const v0, 0x7f100340

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaC/s;->a:Landroid/view/ViewGroup;

    .line 50
    const v0, 0x7f100342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaC/s;->b:Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f100341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/s;->c:Landroid/widget/TextView;

    .line 54
    new-instance v0, LaC/n;

    invoke-direct {v0}, LaC/n;-><init>()V

    const v1, 0x7f02031c

    invoke-virtual {v0, v1}, LaC/n;->a(I)LaC/n;

    move-result-object v0

    invoke-virtual {v0}, LaC/n;->a()LaC/l;

    move-result-object v0

    iput-object v0, p0, LaC/s;->f:LaC/l;

    .line 57
    new-instance v0, LaC/n;

    invoke-direct {v0}, LaC/n;-><init>()V

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, LaC/n;->a(I)LaC/n;

    move-result-object v0

    invoke-virtual {v0}, LaC/n;->a()LaC/l;

    move-result-object v0

    iput-object v0, p0, LaC/s;->g:LaC/l;

    .line 60
    iget-object v0, p0, LaC/s;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LaC/s;->f:LaC/l;

    invoke-virtual {v1}, LaC/l;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, LaC/s;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LaC/s;->g:LaC/l;

    invoke-virtual {v1}, LaC/l;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, LaC/s;->f:LaC/l;

    iget-object v1, p0, LaC/s;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, LaC/l;->a(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, LaC/s;->g:LaC/l;

    iget-object v1, p0, LaC/s;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, LaC/l;->a(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, LaC/s;->a()V

    .line 68
    return-void
.end method

.method public a(Lcom/google/googlenav/br;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, LaC/s;->e:Lcom/google/googlenav/br;

    .line 89
    invoke-direct {p0}, LaC/s;->a()V

    .line 90
    return-void
.end method
