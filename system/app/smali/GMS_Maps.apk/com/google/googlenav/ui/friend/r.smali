.class public Lcom/google/googlenav/ui/friend/r;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field private final a:Lcom/google/googlenav/ui/friend/q;

.field private final b:LaM/ag;

.field private final c:Lcom/google/googlenav/ui/af;

.field private d:Lcom/google/googlenav/ui/view/android/L;

.field private e:Landroid/view/View;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Lcom/google/googlenav/ui/friend/A;

.field private final s:Lcom/google/googlenav/ui/friend/B;

.field private t:Landroid/view/MenuItem;

.field private u:Landroid/view/MenuItem;

.field private v:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(LaM/ag;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/friend/q;Lcom/google/googlenav/ui/af;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {}, Lcom/google/googlenav/ui/view/android/V;->p()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 157
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    .line 158
    iput-object p3, p0, Lcom/google/googlenav/ui/friend/r;->a:Lcom/google/googlenav/ui/friend/q;

    .line 159
    iput-object p4, p0, Lcom/google/googlenav/ui/friend/r;->c:Lcom/google/googlenav/ui/af;

    .line 160
    new-instance v0, Lcom/google/googlenav/ui/friend/B;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ui/friend/B;-><init>(Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->s:Lcom/google/googlenav/ui/friend/B;

    .line 161
    return-void
.end method

.method private A()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->a:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/q;->c()Ljava/lang/Boolean;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lar/c;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lar/c;->k()Z

    move-result v0

    if-nez v0, :cond_21

    .line 450
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    :goto_20
    return-void

    .line 452
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->q:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_20
.end method

.method private B()Ljava/util/List;
    .registers 6

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->c()Lcom/google/googlenav/friend/aM;

    .line 463
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    iget-object v2, p0, Lcom/google/googlenav/ui/friend/r;->c:Lcom/google/googlenav/ui/af;

    iget-object v3, p0, Lcom/google/googlenav/ui/friend/r;->s:Lcom/google/googlenav/ui/friend/B;

    iget-object v4, p0, Lcom/google/googlenav/ui/friend/r;->a:Lcom/google/googlenav/ui/friend/q;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/googlenav/ui/friend/r;->a(LaM/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/friend/L;Lcom/google/googlenav/ui/friend/q;Ljava/util/List;)V

    .line 466
    return-object v0
.end method

.method private C()V
    .registers 1

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->w()V

    .line 649
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->m()V

    .line 650
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->l()V

    .line 651
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->D()V

    .line 652
    return-void
.end method

.method private D()V
    .registers 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bR()Z

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->t:Landroid/view/MenuItem;

    if-eqz v1, :cond_14

    .line 658
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->t:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 659
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->t:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 661
    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->u:Landroid/view/MenuItem;

    if-eqz v1, :cond_22

    .line 662
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->u:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->u:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 665
    :cond_22
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->v:Landroid/view/MenuItem;

    if-eqz v1, :cond_30

    .line 666
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->v:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 667
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->v:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 669
    :cond_30
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 242
    const v0, 0x7f040084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    const v0, 0x7f1001e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->n:Landroid/widget/Button;

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->n:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/friend/t;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/t;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f1001e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->o:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->o:Landroid/widget/Button;

    const/16 v2, 0x196

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->o:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/friend/u;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/u;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v0, 0x7f1001e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->p:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->p:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/friend/v;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/v;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f1001e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->q:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->q:Landroid/widget/Button;

    const/16 v2, 0x1a9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->q:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/friend/w;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/w;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private static a(LaM/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/friend/L;Lcom/google/googlenav/ui/friend/q;Ljava/util/List;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-interface {p0}, LaM/ag;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v8

    .line 477
    invoke-virtual {v8}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v9

    .line 478
    invoke-interface {p0}, LaM/ag;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->f()Z

    move-result v10

    .line 481
    invoke-virtual {v8}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v0

    if-lez v0, :cond_26

    .line 482
    new-instance v0, LaK/d;

    invoke-virtual {v8}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LaK/d;-><init>(Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/ui/af;LaM/ag;Lcom/google/googlenav/friend/L;I)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_26
    const/4 v0, 0x1

    if-le v9, v0, :cond_98

    invoke-interface {p0}, LaM/ag;->bR()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 492
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v0

    .line 493
    if-nez v0, :cond_4c

    .line 494
    new-instance v0, LaQ/bv;

    const/4 v1, 0x1

    const v2, 0x7f0400de

    const/16 v3, 0xdd

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_4c
    const/4 v1, 0x0

    .line 501
    const/4 v0, 0x1

    move v7, v0

    move v0, v1

    :goto_50
    if-ge v7, v9, :cond_98

    .line 502
    invoke-virtual {v8, v7}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v2

    if-nez v2, :cond_60

    .line 501
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_50

    .line 510
    :cond_60
    invoke-virtual {p3}, Lcom/google/googlenav/ui/friend/q;->d()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v2

    if-eqz v2, :cond_6e

    if-nez v10, :cond_5c

    .line 519
    :cond_6e
    if-nez v0, :cond_99

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 520
    new-instance v0, LaQ/bv;

    const/4 v2, 0x1

    const v3, 0x7f0400de

    const/16 v4, 0x57b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const/4 v0, 0x1

    move v6, v0

    .line 525
    :goto_8a
    new-instance v0, LaK/d;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LaK/d;-><init>(Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/ui/af;LaM/ag;Lcom/google/googlenav/friend/L;I)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_5c

    .line 529
    :cond_98
    return-void

    :cond_99
    move v6, v0

    goto :goto_8a
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    :goto_6
    return-void

    .line 306
    :cond_7
    const v0, 0x7f100242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 308
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 309
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    const/16 v2, 0x222

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_2a
    new-instance v0, Lcom/google/googlenav/ui/friend/A;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/friend/A;-><init>(Lcom/google/googlenav/ui/friend/s;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iput-object v1, v0, Lcom/google/googlenav/ui/friend/A;->a:Landroid/view/View;

    .line 317
    const v0, 0x7f10019c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    new-instance v2, Lcom/google/googlenav/ui/friend/x;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/x;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->j()Z

    move-result v2

    if-nez v2, :cond_54

    .line 327
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_54
    const v0, 0x7f10019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 331
    new-instance v2, Lcom/google/googlenav/ui/friend/y;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/y;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    const v2, 0x7f1001a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/friend/A;->b:Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    const v2, 0x7f1001e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/friend/A;->c:Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iget-object v0, v0, Lcom/google/googlenav/ui/friend/A;->b:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/friend/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/z;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->m()V

    goto/16 :goto_6
.end method

.method static synthetic b(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/friend/r;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->m()V

    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bR()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 226
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    :goto_21
    return-void

    .line 229
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method private m()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    if-nez v0, :cond_8

    .line 371
    :goto_7
    return-void

    .line 364
    :cond_8
    invoke-static {}, Lcom/google/googlenav/friend/p;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 365
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iget-object v0, v0, Lcom/google/googlenav/ui/friend/A;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iget-object v0, v0, Lcom/google/googlenav/ui/friend/A;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 368
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iget-object v0, v0, Lcom/google/googlenav/ui/friend/A;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->r:Lcom/google/googlenav/ui/friend/A;

    iget-object v0, v0, Lcom/google/googlenav/ui/friend/A;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private n()Z
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bQ()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private o()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 378
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v1}, LaM/ag;->bQ()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private v()Z
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bQ()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private w()V
    .registers 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->x()V

    .line 391
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->y()V

    .line 392
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->z()V

    .line 393
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->A()V

    .line 394
    return-void
.end method

.method private x()V
    .registers 4

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v1

    .line 399
    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->n()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 409
    :cond_d
    :goto_d
    if-eqz v0, :cond_3e

    .line 410
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_1a
    return-void

    .line 401
    :cond_1b
    if-nez v1, :cond_24

    .line 402
    const/16 v0, 0x168

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 403
    :cond_24
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->o()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 404
    const/16 v0, 0x165

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 405
    :cond_31
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->v()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 406
    const/16 v0, 0x163

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 413
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->n:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1a
.end method

.method private y()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bR()Z

    move-result v0

    if-nez v0, :cond_f

    .line 419
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :goto_e
    return-void

    .line 421
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->o:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e
.end method

.method private z()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bR()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    const/4 v0, 0x0

    .line 429
    if-ne v1, v2, :cond_2e

    .line 430
    const/16 v0, 0x171

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_21
    :goto_21
    if-eqz v0, :cond_52

    .line 437
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->p:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->p:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_2d
    :goto_2d
    return-void

    .line 431
    :cond_2e
    if-le v1, v2, :cond_21

    .line 432
    const/16 v0, 0x16e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 441
    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2d
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 612
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 613
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 614
    instance-of v2, v0, Lah/p;

    if-eqz v2, :cond_1b

    .line 615
    check-cast v0, Lah/p;

    invoke-interface {v0}, Lah/p;->P_()V

    .line 612
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 618
    :cond_1f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/r;->k()V

    .line 619
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 217
    const v0, 0x7f02027f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 218
    const/16 v0, 0x222

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 581
    .line 582
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 583
    sparse-switch v0, :sswitch_data_38

    move v0, v1

    .line 607
    :goto_9
    iget-object v2, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    invoke-interface {v2, v0, v1, p2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 585
    :sswitch_10
    const/4 v0, 0x1

    .line 586
    goto :goto_9

    .line 588
    :sswitch_12
    const/16 v0, 0x12d

    .line 589
    goto :goto_9

    .line 591
    :sswitch_15
    const/16 v0, 0x834

    .line 592
    goto :goto_9

    .line 594
    :sswitch_18
    const/16 v0, 0x13d

    .line 595
    goto :goto_9

    .line 597
    :sswitch_1b
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x19b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x14e

    goto :goto_9

    :cond_2e
    const/16 v0, 0x14f

    goto :goto_9

    .line 601
    :sswitch_31
    const/16 v0, 0x13b

    .line 602
    goto :goto_9

    .line 604
    :sswitch_34
    const/16 v0, 0xa8c

    goto :goto_9

    .line 583
    nop

    :sswitch_data_38
    .sparse-switch
        0x7f1001dc -> :sswitch_15
        0x7f1001de -> :sswitch_18
        0x7f10022a -> :sswitch_12
        0x7f1004ca -> :sswitch_10
        0x7f1004cb -> :sswitch_1b
        0x7f1004cc -> :sswitch_31
        0x7f1004cd -> :sswitch_34
    .end sparse-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 571
    const v0, 0x7f1004cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->v:Landroid/view/MenuItem;

    .line 572
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->a:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x19d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_17
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->v:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 576
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_1e
    const/16 v0, 0x19b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 177
    const v0, 0x7f020210

    new-instance v1, Lcom/google/googlenav/ui/friend/s;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/s;-><init>(Lcom/google/googlenav/ui/friend/r;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_78

    invoke-virtual {p0, v6, v0, v1, v2}, Lcom/google/googlenav/ui/friend/r;->a(ZILag/f;[I)V

    .line 187
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/r;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 188
    const v0, 0x7f040085

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 190
    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/friend/r;->a(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 193
    const v0, 0x7f1001e7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->e:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->e:Landroid/view/View;

    const v3, 0x7f1001e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x266

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v0, 0x7f100026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/friend/r;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->w()V

    .line 203
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/r;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/friend/r;->g:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->B()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 209
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->l()V

    .line 211
    return-object v2

    .line 177
    nop

    :array_78
    .array-data 0x4
        0xbet 0xbt 0x0t 0x0t
        0xbdt 0xbt 0x0t 0x0t
    .end array-data
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->b:LaM/ag;

    invoke-interface {v0}, LaM/ag;->bR()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 628
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->B()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 630
    :cond_11
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->C()V

    .line 631
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    .line 641
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->C()V

    .line 642
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 538
    sget-object v0, Lcom/google/googlenav/ui/friend/r;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 539
    const v0, 0x7f1004ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_1e

    .line 542
    const/16 v1, 0x508

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 545
    :cond_1e
    const v0, 0x7f10022a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->t:Landroid/view/MenuItem;

    .line 546
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->t:Landroid/view/MenuItem;

    const/16 v1, 0x1ab

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 548
    const v0, 0x7f1001de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/r;->u:Landroid/view/MenuItem;

    .line 549
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/r;->u:Landroid/view/MenuItem;

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 551
    const v0, 0x7f1001dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 552
    const/16 v1, 0x72

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 553
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 555
    const v0, 0x7f1004cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    const/16 v1, 0x2a4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 558
    const v0, 0x7f1004cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_83

    .line 561
    const/16 v1, 0x1e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 564
    :cond_83
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/r;->D()V

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const/16 v0, 0x1a2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
