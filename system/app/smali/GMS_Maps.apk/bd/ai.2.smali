.class public abstract Lbd/ai;
.super Lcom/google/googlenav/ui/view/android/ap;

# interfaces
.implements Lay/q;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/D;

.field protected final b:LaY/m;

.field protected c:Lcom/google/googlenav/ui/view/android/R;


# direct methods
.method public constructor <init>(LaY/m;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p1, p0, Lbd/ai;->b:LaY/m;

    invoke-virtual {p1}, LaY/m;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iput-object v0, p0, Lbd/ai;->a:Lcom/google/googlenav/ui/D;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ah;IZI)Lcom/google/googlenav/ui/view/android/bO;
    .registers 26

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bl()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, LaY/aq;->a(Lcom/google/googlenav/ah;Z)Ljava/lang/String;

    move-result-object v2

    :cond_27
    invoke-static/range {p1 .. p1}, LaY/m;->f(Lcom/google/googlenav/ah;)Z

    move-result v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v4}, LaY/m;->bi()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bm()Z

    move-result v4

    if-eqz v4, :cond_42

    const/16 v3, 0x4e7

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bn()Z

    move-result v15

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez v15, :cond_151

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ah;->c(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bd()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v5}, LaY/m;->bk()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bc()Lcom/google/googlenav/ab;

    move-result-object v4

    :cond_67
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->ba()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->bb()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ah;->i(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v4

    move-object/from16 v4, v20

    :goto_7d
    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbd/ai;->b:LaY/m;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, LaY/m;->bm()Z

    move-result v16

    if-eqz v16, :cond_95

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->L()Lcom/google/googlenav/ao;

    move-result-object v11

    if-nez v11, :cond_95

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->V()Ljava/util/Vector;

    move-result-object v10

    :cond_95
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v17

    const v18, 0x7f0300b5

    new-instance v19, Lcom/google/googlenav/ui/view/android/bO;

    invoke-direct/range {v19 .. v19}, Lcom/google/googlenav/ui/view/android/bO;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->d(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/google/googlenav/ui/view/android/bO;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/google/googlenav/ui/view/android/bO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/googlenav/ui/view/android/bO;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/googlenav/ui/view/android/bO;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/view/android/bO;->g(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/view/android/bO;->h(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/bO;->i(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ab;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/view/android/bO;->j(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ao;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bO;->a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/googlenav/ui/view/android/bO;->a(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bO;->b(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/googlenav/ui/view/android/bO;->c(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bO;->b(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/view/android/bO;->c(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->X()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bO;->f(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ah;->be()Lcom/google/googlenav/cd;

    move-result-object v3

    if-eqz v3, :cond_150

    iget v2, v3, Lcom/google/googlenav/cd;->a:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14e

    const/4 v2, 0x1

    :goto_12d
    invoke-virtual {v4, v2}, Lcom/google/googlenav/ui/view/android/bO;->e(Z)Lcom/google/googlenav/ui/view/android/bO;

    const/4 v2, 0x1

    iget-object v3, v3, Lcom/google/googlenav/cd;->b:LK/bn;

    invoke-virtual {v3}, LK/bn;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_138
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ce;

    iget-object v6, v2, Lcom/google/googlenav/ce;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/googlenav/ce;->c:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v3}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bO;

    const/4 v2, 0x0

    move v3, v2

    goto :goto_138

    :cond_14e
    const/4 v2, 0x0

    goto :goto_12d

    :cond_150
    return-object v4

    :cond_151
    move-object/from16 v20, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v4

    move-object/from16 v4, v20

    goto/16 :goto_7d
.end method

.method protected abstract a(Lcom/google/googlenav/E;)Ljava/util/List;
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    const/4 v1, 0x0

    iget-object v2, p0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbd/ai;->a(Lcom/google/googlenav/E;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    iput-object v0, p0, Lbd/ai;->c:Lcom/google/googlenav/ui/view/android/R;

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lbd/ai;->c:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbd/ai;->c:Lcom/google/googlenav/ui/view/android/R;

    iget-object v1, p0, Lbd/ai;->b:LaY/m;

    invoke-virtual {v1}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbd/ai;->a(Lcom/google/googlenav/E;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->a(Ljava/util/List;)V

    :cond_13
    return-void
.end method
