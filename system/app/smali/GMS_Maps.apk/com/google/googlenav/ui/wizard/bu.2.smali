.class public Lcom/google/googlenav/ui/wizard/bU;
.super Lcom/google/googlenav/ui/wizard/hG;
.source "SourceFile"


# instance fields
.field private k:Lad/b;

.field private l:Ljava/util/List;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hG;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 80
    return-void
.end method

.method private B()V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 138
    iget v1, p0, Lcom/google/googlenav/ui/wizard/bU;->c:I

    .line 139
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    .line 140
    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    .line 141
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bU;->a()V

    .line 142
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    .line 143
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 144
    iput v1, p0, Lcom/google/googlenav/ui/wizard/bU;->c:I

    .line 145
    return-void
.end method

.method private static a(Ljava/util/List;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    new-instance v0, LaQ/bt;

    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-direct {v0, v1, v2, p2}, LaQ/bt;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method


# virtual methods
.method protected Q_()S
    .registers 2

    .prologue
    .line 149
    const/16 v0, 0x56

    return v0
.end method

.method public T_()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bU;->B()V

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bU;->j()V

    .line 134
    return-void
.end method

.method protected a(LaG/b;)LaG/a;
    .registers 19
    .parameter

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/hP;->g:I

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    .line 435
    :cond_12
    invoke-super/range {p0 .. p1}, Lcom/google/googlenav/ui/wizard/hG;->a(LaG/b;)LaG/a;

    move-result-object v1

    .line 438
    :goto_16
    return-object v1

    :cond_17
    new-instance v1, LaG/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->g:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v9, v9, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v10, v10, Lcom/google/googlenav/ui/wizard/hP;->e:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v11, v11, Lcom/google/googlenav/ui/wizard/hP;->f:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v12, v12, Lcom/google/googlenav/ui/wizard/hP;->n:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    invoke-virtual {v13}, Lad/b;->az()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v14, v14, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v15, v15, Lcom/google/googlenav/ui/wizard/hP;->c:Ljava/lang/String;

    move-object/from16 v16, p1

    invoke-direct/range {v1 .. v16}, LaG/a;-><init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IIIILjava/lang/String;Ljava/lang/String;LaG/b;)V

    goto :goto_16
.end method

.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter

    .prologue
    .line 397
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bU;->i()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-object v0
.end method

.method public a(Lad/b;Lat/H;IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    .line 90
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/bU;->l:Ljava/util/List;

    .line 91
    const/16 v0, 0x447

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->a:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-super {p0, p2, p3, p4, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(Lat/H;IILcom/google/googlenav/ui/wizard/C;)V

    .line 93
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v9, 0x0

    const/4 v1, 0x3

    const/4 v10, 0x1

    .line 154
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    if-eqz v0, :cond_11

    move v0, v1

    .line 157
    :goto_9
    packed-switch p1, :pswitch_data_132

    .line 227
    :pswitch_c
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/hG;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 154
    goto :goto_9

    .line 160
    :pswitch_13
    iput-boolean v9, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(I)V

    move v0, v10

    .line 162
    goto :goto_10

    .line 165
    :pswitch_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/hP;->n:I

    .line 167
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v3}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_62

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v3}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    iput-object v0, v2, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v2, v3}, Lad/b;->h(I)Lat/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v2, v3}, Lad/b;->i(I)Ln/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 173
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bU;->a(I)V

    move v0, v10

    .line 174
    goto :goto_10

    .line 167
    :cond_62
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v3}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 177
    :pswitch_71
    const/16 v1, 0x463

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/lang/String;II)V

    move v0, v10

    .line 179
    goto :goto_10

    .line 182
    :pswitch_7c
    const/16 v1, 0x464

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/lang/String;II)V

    move v0, v10

    .line 185
    goto :goto_10

    .line 188
    :pswitch_88
    const/16 v1, 0x465

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/lang/String;II)V

    move v0, v10

    .line 190
    goto/16 :goto_10

    .line 196
    :pswitch_95
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    invoke-virtual {v2, v3}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 198
    const/16 v0, 0x467

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/lang/String;II)V

    move v0, v10

    .line 201
    goto/16 :goto_10

    .line 206
    :pswitch_c1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    if-nez v0, :cond_e3

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    invoke-virtual {v1}, Lat/H;->a()Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    invoke-virtual {v1, v2}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 210
    :cond_e3
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/hP;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v6, v6, Lcom/google/googlenav/ui/wizard/hP;->e:I

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v7, v7, Lcom/google/googlenav/ui/wizard/hP;->f:I

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/ju;->a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Lat/H;IILcom/google/googlenav/ui/wizard/C;Z)V

    .line 213
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bU;->B()V

    move v0, v10

    .line 214
    goto/16 :goto_10

    .line 219
    :pswitch_108
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    invoke-virtual {v2, v3}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 221
    const/16 v0, 0x46f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9, v1}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/lang/String;II)V

    move v0, v10

    .line 224
    goto/16 :goto_10

    .line 157
    :pswitch_data_132
    .packed-switch 0x5e1
        :pswitch_108
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_71
        :pswitch_7c
        :pswitch_88
        :pswitch_95
        :pswitch_c1
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method protected b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    invoke-virtual {v1}, Lad/b;->c()I

    move-result v1

    iput v1, v0, Lcom/google/googlenav/ui/wizard/hP;->n:I

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/hP;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_71

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    .line 104
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v2}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_62

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v2}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    :goto_36
    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v1, v2}, Lad/b;->h(I)Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v1, v2}, Lad/b;->i(I)Ln/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 116
    :goto_54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    invoke-virtual {v1}, Lad/b;->al()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->c:Ljava/lang/String;

    .line 118
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/hG;->b()V

    .line 119
    return-void

    .line 104
    :cond_62
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->n:I

    invoke-virtual {v0, v2}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 112
    :cond_71
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    goto :goto_54
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bU;->k:Lad/b;

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/googlenav/ui/wizard/hP;->n:I

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/hP;->o:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    .line 127
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/hG;->c()V

    .line 128
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected g()Lcom/google/googlenav/ui/view/android/bb;
    .registers 2

    .prologue
    .line 420
    new-instance v0, Lcom/google/googlenav/ui/wizard/bX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bX;-><init>(Lcom/google/googlenav/ui/wizard/bU;)V

    return-object v0
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 233
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bU;->c:I

    packed-switch v0, :pswitch_data_2a

    .line 247
    :pswitch_6
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/hG;->h()V

    .line 248
    :goto_9
    return-void

    .line 235
    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(I)V

    goto :goto_9

    .line 238
    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/hP;->g:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bU;->m:Z

    if-eqz v0, :cond_24

    .line 241
    :cond_20
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(I)V

    goto :goto_9

    .line 243
    :cond_24
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bU;->a(I)V

    goto :goto_9

    .line 233
    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_e
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public i()Ljava/util/List;
    .registers 4

    .prologue
    .line 356
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 357
    iget v1, p0, Lcom/google/googlenav/ui/wizard/bU;->c:I

    sparse-switch v1, :sswitch_data_38

    .line 378
    :goto_9
    return-object v0

    .line 359
    :sswitch_a
    const/16 v1, 0x463

    const/16 v2, 0x5e7

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    .line 361
    const/16 v1, 0x464

    const/16 v2, 0x5e8

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    .line 363
    const/16 v1, 0x465

    const/16 v2, 0x5e9

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    .line 365
    const/16 v1, 0x467

    const/16 v2, 0x5ea

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    .line 367
    const/16 v1, 0x466

    const/16 v2, 0x5eb

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    .line 369
    const/16 v1, 0x46f

    const/16 v2, 0x5e1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Ljava/util/List;II)V

    goto :goto_9

    .line 373
    :sswitch_35
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->l:Ljava/util/List;

    goto :goto_9

    .line 357
    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_35
    .end sparse-switch
.end method

.method protected y()Lcom/google/googlenav/ui/view/android/bb;
    .registers 2

    .prologue
    .line 425
    new-instance v0, Lcom/google/googlenav/ui/wizard/bW;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bW;-><init>(Lcom/google/googlenav/ui/wizard/bU;)V

    return-object v0
.end method
