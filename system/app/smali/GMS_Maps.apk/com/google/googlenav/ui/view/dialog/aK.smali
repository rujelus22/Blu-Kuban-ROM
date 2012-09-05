.class public Lcom/google/googlenav/ui/view/dialog/aK;
.super Lcom/google/googlenav/ui/view/android/ay;

# interfaces
.implements Lay/q;


# static fields
.field private static final c:Ljava/lang/Integer;


# instance fields
.field b:Lcom/google/googlenav/ui/a;

.field private d:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ListView;

.field private o:Lcom/google/googlenav/ui/view/android/R;

.field private p:Lcom/google/googlenav/ui/android/ao;

.field private q:Lcom/google/googlenav/ui/android/ao;

.field private r:LaM/i;

.field private s:LaY/aG;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/aK;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/t;)V
    .registers 4

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/dialog/aK;-><init>(Lcom/google/googlenav/ui/p;Lbb/t;LaM/i;)V

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/ui/p;Lbb/t;LaM/i;)V
    .registers 7

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f0d001c

    :goto_e
    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aK;->r:LaM/i;

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/dialog/aK;->t:Z

    return-void

    :cond_21
    const v0, 0x7f0d001a

    goto :goto_e
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aK;)LaY/aG;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->s:LaY/aG;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ah;IZILaY/aG;)Lcom/google/googlenav/ui/view/android/bp;
    .registers 28

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, LaY/aG;->f(Lcom/google/googlenav/ah;)Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bn()Z

    move-result v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v15, :cond_3a

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->c(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->ba()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->i(I)Ljava/lang/String;

    move-result-object v7

    :cond_3a
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v12

    const/16 v21, 0x0

    new-instance v1, Lcom/google/googlenav/ui/view/android/bp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Lcom/google/googlenav/ui/a;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bD()I

    move-result v20

    move/from16 v14, p3

    move/from16 v16, p2

    move/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v1 .. v21}, Lcom/google/googlenav/ui/view/android/bp;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ao;Ljava/util/Vector;Lcom/google/googlenav/an;LaJ/B;ZZZIILaY/aG;Lbb/c;ILcom/google/googlenav/cd;)V

    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v0, 0x7f0f034e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x363

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v1, Lcom/google/googlenav/ui/a;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aK;->f:Lcom/google/googlenav/ui/p;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/a;-><init>(Lcom/google/googlenav/ui/p;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Lcom/google/googlenav/ui/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Lcom/google/googlenav/ui/a;

    new-instance v2, Lbb/a;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v4, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->q:Lcom/google/googlenav/ui/android/ao;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Lcom/google/googlenav/ui/a;

    new-instance v2, Lbb/a;

    const/16 v3, 0x6b0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->p:Lcom/google/googlenav/ui/android/ao;

    :cond_45
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->clear()V

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_11

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->notifyDataSetChanged()V

    return-void
.end method

.method private b(LaY/aG;)Ljava/util/List;
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->z()Lbb/t;

    move-result-object v0

    invoke-virtual {v0}, Lbb/t;->j()Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move v2, v6

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ah;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->r:LaM/i;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bk()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v3, 0x1

    :goto_2e
    const/16 v4, 0x6af

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Lcom/google/googlenav/ah;IZILaY/aG;)Lcom/google/googlenav/ui/view/android/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bp;->a()Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bp;->a()Lcom/google/googlenav/ui/view/android/bm;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_43
    move v3, v6

    goto :goto_2e

    :cond_45
    return-object v8
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->k:Landroid/widget/TextView;

    const/16 v1, 0x36e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f034d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_20

    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_20
    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f0351

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0f034f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->m:Landroid/widget/TextView;

    const v0, 0x7f0f005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0329

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0350

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->k:Landroid/widget/TextView;

    return-void
.end method

.method private w()V
    .registers 8

    const/16 v2, 0x36d

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->z()Lbb/t;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lbb/t;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbb/t;->i()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->a:Lbb/f;

    iput-object v0, v1, Lbb/f;->d:Ljava/lang/String;

    :goto_40
    return-void

    :cond_41
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlenav/ui/bh;

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lbb/t;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0}, Lbb/t;->i()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40
.end method

.method private x()V
    .registers 6

    const/4 v4, 0x0

    sget-object v0, Lcom/google/googlenav/ui/view/dialog/aK;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->z()Lbb/t;

    move-result-object v1

    invoke-virtual {v1}, Lbb/t;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->d:Landroid/widget/TextView;

    const/16 v1, 0x36a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->d:Landroid/widget/TextView;

    const/16 v1, 0x369

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->z()Lbb/t;

    move-result-object v3

    invoke-virtual {v3}, Lbb/t;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method private y()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aL;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aL;-><init>(Lcom/google/googlenav/ui/view/dialog/aK;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private z()Lbb/t;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->a:Lbb/f;

    check-cast v0, Lbb/t;

    return-object v0
.end method


# virtual methods
.method public a(LaY/aG;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->s:LaY/aG;

    return-void
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->a()V

    :cond_9
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->c(Landroid/view/View;)V

    return-object v0
.end method

.method protected g()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ay;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->o()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->o()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->k()V

    return-void
.end method

.method public k()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->w()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->z()Lbb/t;

    move-result-object v0

    invoke-virtual {v0}, Lbb/t;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_15

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->x()V

    :goto_14
    return-void

    :cond_15
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->t:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->y()V

    :goto_1c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->m()V

    goto :goto_14

    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->t:Z

    goto :goto_1c
.end method

.method public m()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aK;->w()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->s:LaY/aG;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->b(LaY/aG;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->o:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->t:Z

    return-void
.end method
