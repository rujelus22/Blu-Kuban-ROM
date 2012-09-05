.class public Lu/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/L;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Landroid/text/Spanned;

.field private final o:Lu/K;

.field private final p:Ljava/util/Map;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/List;

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private w:Lu/I;

.field private x:Lu/I;


# direct methods
.method protected constructor <init>(IIILt/L;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/I;->b:I

    iput p2, p0, Lu/I;->c:I

    iput p3, p0, Lu/I;->d:I

    iput-object p4, p0, Lu/I;->a:Lt/L;

    iput p5, p0, Lu/I;->e:I

    iput p6, p0, Lu/I;->f:I

    iput p8, p0, Lu/I;->g:I

    iput p9, p0, Lu/I;->h:I

    iput p10, p0, Lu/I;->i:F

    move/from16 v0, p11

    iput v0, p0, Lu/I;->j:F

    move-object/from16 v0, p12

    iput-object v0, p0, Lu/I;->k:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lu/I;->l:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lu/I;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lu/I;->u:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lu/I;->v:Ljava/util/List;

    iget-object v1, p0, Lu/I;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/j;

    invoke-virtual {v1, p0}, Lu/j;->a(Lu/I;)V

    goto :goto_33

    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/I;->q:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/I;->r:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/I;->s:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/I;->t:Ljava/util/List;

    move-object/from16 v0, p15

    invoke-static {p0, v0}, Lu/I;->a(Lu/I;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lu/I;->p:Ljava/util/Map;

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lu/I;->q:Ljava/util/List;

    invoke-static {v1, v2}, Lu/I;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lu/I;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lu/I;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lu/I;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lu/I;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lu/I;->s:Ljava/util/List;

    invoke-static {v1, v2}, Lu/I;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lu/I;->t:Ljava/util/List;

    invoke-static {v1, v2}, Lu/I;->a(Ljava/util/List;Ljava/util/List;)V

    iget v1, p0, Lu/I;->b:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_109

    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_e7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    iget-object v2, p0, Lu/I;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_109

    const/4 v2, 0x0

    :goto_f7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_109

    iget-object v3, p0, Lu/I;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    :cond_109
    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_130

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_130

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/K;

    iput-object v1, p0, Lu/I;->o:Lu/K;

    :goto_127
    iget-object v1, p0, Lu/I;->p:Ljava/util/Map;

    invoke-static {p7, v1}, Lu/I;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lu/I;->n:Landroid/text/Spanned;

    return-void

    :cond_130
    const/4 v1, 0x0

    iput-object v1, p0, Lu/I;->o:Lu/K;

    goto :goto_127
.end method

.method static a(Lam/b;)I
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/16 v2, 0x12

    if-lt v0, v2, :cond_13

    :cond_12
    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;
    .registers 11

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_22
    new-instance v0, Lu/J;

    invoke-direct {v0}, Lu/J;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_30
    if-ge v2, v5, :cond_6e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_46

    :cond_42
    :goto_42
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_30

    :cond_46
    const/4 v1, -0x1

    :cond_47
    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_61

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v3, v1, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_47

    :cond_61
    if-ltz v1, :cond_42

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_42

    :cond_6e
    return-object v3
.end method

.method private static a(Lu/P;Ljava/util/List;)Ljava/lang/String;
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/P;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    new-instance v0, Lu/K;

    const/4 v1, 0x6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lu/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p0}, Lu/P;->d()Lu/Q;

    move-result-object v9

    if-eqz v9, :cond_4d

    move v7, v6

    :goto_22
    invoke-virtual {v9}, Lu/Q;->a()I

    move-result v0

    if-ge v7, v0, :cond_4d

    new-instance v0, Lu/K;

    const/4 v1, 0x7

    invoke-virtual {v9, v7}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lu/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    invoke-virtual {v9, v7}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_22

    :cond_4d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lam/b;Lt/L;)Ljava/util/List;
    .registers 9

    const/4 v6, 0x6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v2

    invoke-virtual {p1}, Lt/L;->e()D

    move-result-wide v3

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_21

    invoke-virtual {p0, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lu/j;->a(Lam/b;D)Lu/j;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    return-object v1
.end method

.method private static a(Lu/I;Ljava/util/List;)Ljava/util/Map;
    .registers 7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    invoke-virtual {v0}, Lu/K;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    invoke-static {v0, p0}, Lu/K;->a(Lu/K;Lu/I;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_38
    return-object v2
.end method

.method public static a(Lam/b;Lt/L;IIIFFLu/P;)Lu/I;
    .registers 28

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v14

    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lam/g;->e(Lam/b;I)I

    move-result v8

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lam/g;->e(Lam/b;I)I

    move-result v9

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lam/g;->e(Lam/b;I)I

    move-result v10

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lu/I;->a(Lam/b;)I

    move-result v11

    invoke-static {v4}, Lu/I;->b(Lam/b;)I

    move-result v7

    const/16 v3, 0xc

    if-ne v11, v3, :cond_97

    const/4 v3, 0x7

    const/4 v6, -0x1

    invoke-static {v4, v3, v6}, Lam/g;->c(Lam/b;II)I

    move-result v3

    :goto_58
    invoke-static {v4}, Lu/I;->c(Lam/b;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lu/I;->a(Lam/b;Lt/L;)Ljava/util/List;

    move-result-object v19

    const/16 v6, 0x10

    if-ne v11, v6, :cond_99

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p7, :cond_b5

    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lu/I;->a(Lu/P;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b3

    :goto_79
    move-object v5, v4

    move-object v4, v6

    :goto_7b
    move-object/from16 v17, v4

    move v6, v7

    move-object v13, v5

    move v5, v11

    move v7, v3

    :goto_81
    new-instance v3, Lu/M;

    move-object/from16 v4, p1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v19}, Lu/M;-><init>(Lt/L;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lu/I;->a(Lu/M;III)Lu/I;

    move-result-object v3

    return-object v3

    :cond_97
    const/4 v3, -0x1

    goto :goto_58

    :cond_99
    invoke-static {v4}, Lu/I;->d(Lam/b;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_7b

    :cond_9e
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move v5, v3

    goto :goto_81

    :cond_b3
    move-object v4, v5

    goto :goto_79

    :cond_b5
    move-object v4, v6

    goto :goto_7b
.end method

.method public static a(Lu/M;III)Lu/I;
    .registers 22

    new-instance v0, Lu/I;

    invoke-virtual/range {p0 .. p0}, Lu/M;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lu/M;->c()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lu/M;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lu/M;->a()Lt/L;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lu/M;->e()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lu/M;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lu/M;->h()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lu/M;->i()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lu/M;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lu/M;->l()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lu/M;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lu/M;->n()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lu/M;->o()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lu/M;->p()Ljava/util/List;

    move-result-object v17

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v17}, Lu/I;-><init>(IIILt/L;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public static a(I)Z
    .registers 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static b(Lam/b;)I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v0

    if-ltz v0, :cond_11

    const/4 v2, 0x3

    if-lt v0, v2, :cond_12

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method static c(Lam/b;)Ljava/util/List;
    .registers 6

    const/4 v4, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lu/L;->a(Lam/b;)Lu/L;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-object v1
.end method

.method private static d(Lam/b;)Ljava/util/ArrayList;
    .registers 6

    const/4 v4, 0x4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lu/K;->a(Lam/b;)Lu/K;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-object v1
.end method


# virtual methods
.method public a()Lt/L;
    .registers 2

    iget-object v0, p0, Lu/I;->a:Lt/L;

    return-object v0
.end method

.method a(Lu/I;)V
    .registers 2

    iput-object p1, p0, Lu/I;->w:Lu/I;

    return-void
.end method

.method public a(Lu/j;)V
    .registers 3

    iget-object v0, p0, Lu/I;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lu/j;->a(Lu/I;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lu/I;->b:I

    return v0
.end method

.method b(Lu/I;)V
    .registers 2

    iput-object p1, p0, Lu/I;->x:Lu/I;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lu/I;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lu/I;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lu/I;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lu/I;->h:I

    return v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lu/I;->i:F

    return v0
.end method

.method public h()F
    .registers 2

    iget v0, p0, Lu/I;->j:F

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lu/I;->e:I

    return v0
.end method

.method public j()Lu/I;
    .registers 2

    iget-object v0, p0, Lu/I;->w:Lu/I;

    return-object v0
.end method

.method public k()Lu/I;
    .registers 2

    iget-object v0, p0, Lu/I;->x:Lu/I;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/I;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/I;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/I;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()Landroid/text/Spanned;
    .registers 2

    iget-object v0, p0, Lu/I;->n:Landroid/text/Spanned;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->q:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->r:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lu/I;->q:Ljava/util/List;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lu/I;->s:Ljava/util/List;

    goto :goto_a
.end method

.method public s()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->t:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lu/I;->p:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[idx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/I;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/I;->a:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/I;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/I;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " side:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->u:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/I;->v:Ljava/util/List;

    return-object v0
.end method

.method public final w()Lu/K;
    .registers 3

    invoke-virtual {p0}, Lu/I;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public x()Lu/K;
    .registers 2

    iget-object v0, p0, Lu/I;->o:Lu/K;

    return-object v0
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lu/I;->f:I

    return v0
.end method
