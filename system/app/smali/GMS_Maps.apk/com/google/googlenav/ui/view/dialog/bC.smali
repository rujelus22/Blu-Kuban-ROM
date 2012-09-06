.class public abstract Lcom/google/googlenav/ui/view/dialog/bC;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/v;

.field protected final b:LaM/m;

.field protected c:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method public constructor <init>(LaM/m;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    .line 45
    invoke-virtual {p1}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bC;->a:Lcom/google/googlenav/ui/v;

    .line 46
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ai;IZI)Lcom/google/googlenav/ui/view/android/bK;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v10

    .line 92
    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 94
    const/4 v1, 0x0

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v2}, LaM/m;->bi()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 97
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, LaM/aR;->a(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_27
    invoke-static/range {p1 .. p1}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v12

    .line 103
    const/4 v2, 0x0

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v3}, LaM/m;->bf()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->bw()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 106
    const/16 v2, 0x5f5

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->bx()Z

    move-result v13

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v4, 0x0

    .line 117
    if-nez v13, :cond_116

    .line 118
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ai;->d(Z)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v6

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v4}, LaM/m;->bh()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->ba()Lcom/google/googlenav/ac;

    move-result-object v3

    .line 124
    :cond_66
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->aY()Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ai;->j(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    move-object v4, v5

    move-object v5, v3

    move-object/from16 v3, v18

    .line 129
    :goto_77
    const/4 v9, 0x0

    .line 130
    const/4 v8, 0x0

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v14}, LaM/m;->bj()Z

    move-result v14

    if-eqz v14, :cond_8d

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->M()Lcom/google/googlenav/aq;

    move-result-object v9

    .line 134
    if-nez v9, :cond_8d

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->R()Ljava/util/Vector;

    move-result-object v8

    .line 144
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v14

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v15

    .line 149
    new-instance v16, Lcom/google/googlenav/ui/view/android/bK;

    invoke-direct/range {v16 .. v16}, Lcom/google/googlenav/ui/view/android/bK;-><init>()V

    const v17, 0x7f0400d4

    invoke-virtual/range {v16 .. v17}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/google/googlenav/ui/view/android/bK;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/googlenav/ui/view/android/bK;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/view/android/bK;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/googlenav/ui/view/android/bK;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/view/android/bK;->g(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bK;->h(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ac;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/view/android/bK;->i(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/aq;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/googlenav/ui/view/android/bK;->a(Lat/B;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/googlenav/ui/view/android/bK;->a(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->b(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/googlenav/ui/view/android/bK;->c(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->a(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bK;->b(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/g;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v2}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/bw;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->T()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->e(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ai;->bd()Lcom/google/googlenav/cy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/cy;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v1

    .line 174
    return-object v1

    :cond_116
    move-object/from16 v18, v4

    move-object v4, v5

    move-object v5, v3

    move-object/from16 v3, v18

    goto/16 :goto_77
.end method

.method protected abstract a(Lcom/google/googlenav/F;)Ljava/util/List;
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v2}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/bC;->a(Lcom/google/googlenav/F;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bC;->c:Lcom/google/googlenav/ui/view/android/L;

    .line 73
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bC;->c:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_13

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bC;->c:Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bC;->b:LaM/m;

    invoke-virtual {v1}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/bC;->a(Lcom/google/googlenav/F;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 63
    :cond_13
    return-void
.end method
