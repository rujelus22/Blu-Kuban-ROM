.class public Lcom/estrongs/android/pop/view/Property;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Landroid/view/View$OnClickListener;

.field private h:Lcom/estrongs/android/pop/d/f;

.field private i:Lcom/estrongs/android/pop/d/e;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Landroid/widget/TextView;

.field private m:Z

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->h:Lcom/estrongs/android/pop/d/f;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Property;->k:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Property;->l:Landroid/widget/TextView;

    new-instance v0, Lcom/estrongs/android/pop/view/kw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/kw;-><init>(Lcom/estrongs/android/pop/view/Property;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->g:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/Property;->m:Z

    new-instance v0, Lcom/estrongs/android/pop/view/kx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/kx;-><init>(Lcom/estrongs/android/pop/view/Property;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/Property;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;J)V
    .registers 9

    invoke-static {p2, p3}, Lcom/estrongs/android/util/a/b;->a(J)J

    move-result-wide v0

    const-string v2, ""

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6d

    const-wide/16 v0, 0x1

    move-wide v1, v0

    :goto_f
    const-wide/32 v3, 0x40000000

    cmp-long v0, v1, v3

    if-ltz v0, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->c:Ljava/lang/String;

    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2, p3, v1, v2}, Lcom/estrongs/android/util/a/b;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/estrongs/android/util/a/b;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_57
    const-wide/32 v3, 0x100000

    cmp-long v0, v1, v3

    if-ltz v0, :cond_61

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->d:Ljava/lang/String;

    goto :goto_18

    :cond_61
    const-wide/16 v3, 0x400

    cmp-long v0, v1, v3

    if-ltz v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->e:Ljava/lang/String;

    goto :goto_18

    :cond_6a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->f:Ljava/lang/String;

    goto :goto_18

    :cond_6d
    move-wide v1, v0

    goto :goto_f
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/Property;Landroid/widget/TextView;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/view/Property;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/Property;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/Property;->m:Z

    return-void
.end method

.method private a(Z)V
    .registers 25

    const v3, 0x7f0700d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0700d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0700d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0700db

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0700dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0700df

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0700e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0700e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0700e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0700d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0700d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0700d7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    if-eqz p1, :cond_178

    const v16, 0x7f0700e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_152

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/estrongs/android/pop/a/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/fs/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11a

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0901c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/Property;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/fs/d;->h(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v6}, Lcom/estrongs/android/pop/view/Property;->a(Landroid/widget/TextView;J)V

    :cond_11a
    :goto_11a
    const v3, 0x7f09007b

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f09007b

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f09007b

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f09007b

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f09007b

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f09007b

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f090048

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_144
    :goto_144
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_151

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_151
    :goto_151
    return-void

    :cond_152
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/estrongs/android/pop/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090074

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_da

    :cond_16d
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11a

    :cond_178
    const v17, 0x7f0700e0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TableRow;

    const v18, 0x7f0700e3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TableRow;

    const v19, 0x7f0700e6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TableRow;

    const v20, 0x7f0700e9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    const v21, 0x7f0700eb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/pop/view/Property;->l:Landroid/widget/TextView;

    const v21, 0x7f0700ec

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v22

    if-eqz v22, :cond_1f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_212

    :cond_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e4

    :cond_212
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->l:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Property;->g:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2bb
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v17, 0x7f090047

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Property;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    if-nez v7, :cond_309

    const v4, 0x7f090079

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_151

    :cond_2e4
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v17, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2bb

    :cond_309
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v7, v7, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_31f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v7, v7, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_31f
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v3, v3, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    if-eqz v3, :cond_42a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v3, v3, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    const-string v7, "File"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42a

    const v3, 0x7f090075

    :goto_33b
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v3, v3, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_35b

    const-string v3, "MM/dd/yy"

    :cond_35b
    sget-boolean v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H:Z

    if-eqz v5, :cond_42f

    new-instance v5, Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " kk:mm:ss"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v5, v5, Lcom/estrongs/android/pop/d/e;->h:J

    const-wide/16 v17, 0x0

    cmp-long v5, v5, v17

    if-eqz v5, :cond_44a

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v6, v6, Lcom/estrongs/android/pop/d/e;->h:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v5, v5, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_452

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v6, v6, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v5, v5, Lcom/estrongs/android/pop/d/e;->i:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_45a

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v6, v6, Lcom/estrongs/android/pop/d/e;->i:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/e;->k:Z

    if-eqz v3, :cond_462

    const v3, 0x7f09005f

    :goto_3dd
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/e;->l:Z

    if-eqz v3, :cond_467

    const v3, 0x7f09005f

    :goto_3eb
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/e;->m:Z

    if-eqz v3, :cond_46b

    const v3, 0x7f09005f

    :goto_3f9
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_46f

    const v3, 0x7f090048

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v3, v3, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_144

    new-instance v3, Lcom/estrongs/android/pop/view/lb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-object v5, v5, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v5, v15, v1}, Lcom/estrongs/android/pop/view/lb;-><init>(Lcom/estrongs/android/pop/view/Property;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/lb;->start()V

    goto/16 :goto_144

    :cond_42a
    const v3, 0x7f090076

    goto/16 :goto_33b

    :cond_42f
    new-instance v5, Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " hh:mm:ss a"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_378

    :cond_44a
    const v5, 0x7f09007b

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_396

    :cond_452
    const v5, 0x7f09007b

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3b4

    :cond_45a
    const v3, 0x7f09007b

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3d2

    :cond_462
    const v3, 0x7f090085

    goto/16 :goto_3dd

    :cond_467
    const v3, 0x7f090085

    goto :goto_3eb

    :cond_46b
    const v3, 0x7f090085

    goto :goto_3f9

    :cond_46f
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    iget-wide v5, v3, Lcom/estrongs/android/pop/d/e;->e:J

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v6}, Lcom/estrongs/android/pop/view/Property;->a(Landroid/widget/TextView;J)V

    goto/16 :goto_144
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/Property;)Lcom/estrongs/android/pop/d/e;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/Property;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/Property;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/Property;->m:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    new-instance v0, Lcom/estrongs/android/pop/view/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/view/bd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090213

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/bd;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/view/kz;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/kz;-><init>(Lcom/estrongs/android/pop/view/Property;Lcom/estrongs/android/pop/view/bd;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    new-instance v2, Lcom/estrongs/android/pop/view/la;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/view/la;-><init>(Lcom/estrongs/android/pop/view/Property;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/widget/at;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const v0, 0x10001015

    if-ne p1, v0, :cond_2f

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "perm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    :cond_27
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    :cond_2f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/16 v5, 0xd

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f090044

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setTitle(I)V

    const v0, 0x7f030017

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/estrongs/android/pop/view/Property;->k:Landroid/content/Context;

    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Property;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->a:Ljava/lang/String;

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Property;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->b:Ljava/lang/String;

    const-string v0, "GB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->c:Ljava/lang/String;

    const-string v0, "MB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->d:Ljava/lang/String;

    const-string v0, "KB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->e:Ljava/lang/String;

    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Property;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "G\u0431"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->c:Ljava/lang/String;

    const-string v0, "M\u0431"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->d:Ljava/lang/String;

    const-string v0, "K\u0431"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->e:Ljava/lang/String;

    :cond_63
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Property;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_INFORMATION_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Property;->finish()V

    :goto_76
    return-void

    :cond_77
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Property;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_REMOTE_ROOT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cc

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/Property;->a(Z)V

    :goto_87
    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Property;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/pop/view/ky;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ky;-><init>(Lcom/estrongs/android/pop/view/Property;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_be
    new-array v0, v5, [I

    fill-array-data v0, :array_f4

    new-array v1, v5, [I

    fill-array-data v1, :array_112

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/Property;->a([I[I)V

    goto :goto_76

    :cond_cc
    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    :goto_dc
    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/view/Property;->a(Z)V

    goto :goto_87

    :cond_e0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/Property;->h:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/Property;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/f;->c(JLjava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Property;->i:Lcom/estrongs/android/pop/d/e;

    goto :goto_dc

    :cond_ed
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_be

    nop

    :array_f4
    .array-data 0x4
        0xd2t 0x0t 0x7t 0x7ft
        0xd4t 0x0t 0x7t 0x7ft
        0xd8t 0x0t 0x7t 0x7ft
        0xdat 0x0t 0x7t 0x7ft
        0xdct 0x0t 0x7t 0x7ft
        0xdet 0x0t 0x7t 0x7ft
        0xe1t 0x0t 0x7t 0x7ft
        0xe4t 0x0t 0x7t 0x7ft
        0xe7t 0x0t 0x7t 0x7ft
        0xeat 0x0t 0x7t 0x7ft
        0xect 0x0t 0x7t 0x7ft
        0xedt 0x0t 0x7t 0x7ft
        0xeet 0x0t 0x7t 0x7ft
    .end array-data

    :array_112
    .array-data 0x4
        0x45t 0x0t 0x9t 0x7ft
        0x46t 0x0t 0x9t 0x7ft
        0x47t 0x0t 0x9t 0x7ft
        0x49t 0x0t 0x9t 0x7ft
        0x4at 0x0t 0x9t 0x7ft
        0x4bt 0x0t 0x9t 0x7ft
        0x4ct 0x0t 0x9t 0x7ft
        0x4dt 0x0t 0x9t 0x7ft
        0x4et 0x0t 0x9t 0x7ft
        0xcat 0x1t 0x9t 0x7ft
        0xcbt 0x1t 0x9t 0x7ft
        0x12t 0x2t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/Property;->m:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/Property;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Property;->finish()V

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
