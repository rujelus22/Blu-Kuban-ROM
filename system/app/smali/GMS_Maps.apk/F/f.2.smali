.class LF/f;
.super Ljava/lang/Object;

# interfaces
.implements LF/h;


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F


# instance fields
.field private final j:Lbc/d;

.field private final k:Ljava/util/ArrayList;

.field private l:LF/k;


# direct methods
.method public constructor <init>(Lbc/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, LF/f;->l:LF/k;

    iput-object p1, p0, LF/f;->j:Lbc/d;

    invoke-direct {p0}, LF/f;->a()V

    return-void
.end method

.method private static a(F)F
    .registers 3

    sget v0, LF/f;->g:F

    mul-float/2addr v0, p0

    sget v1, LF/f;->h:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    sget v0, LF/f;->h:F

    :cond_b
    :goto_b
    return v0

    :cond_c
    sget v1, LF/f;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sget v0, LF/f;->i:F

    goto :goto_b
.end method

.method private static a(FJ)F
    .registers 5

    long-to-float v0, p1

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget v1, LF/f;->c:F

    mul-float/2addr v0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget v1, LF/f;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    sget v0, LF/f;->d:F

    :cond_13
    return v0
.end method

.method private a(LF/k;Ljava/util/ArrayList;)I
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, LF/k;->d()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_e
    if-ge v2, v3, :cond_25

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    if-eq p1, v0, :cond_26

    invoke-virtual {v0}, LF/k;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    add-int/lit8 v0, v1, 0x1

    :goto_20
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_e

    :cond_25
    return v1

    :cond_26
    move v0, v1

    goto :goto_20

    :cond_28
    move v0, v1

    goto :goto_8
.end method

.method private a(LF/k;LF/R;)LF/k;
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, LF/f;->b(LF/k;LF/R;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    invoke-virtual {p1}, LF/k;->h()Lbc/a;

    move-result-object v1

    iget v1, v1, Lbc/a;->b:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2b

    iget-object v1, v0, LF/k;->b:Lbc/t;

    iget-object v6, p1, LF/k;->b:Lbc/t;

    invoke-virtual {v1, v6}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_2b
    move v1, v3

    :goto_2c
    invoke-virtual {v0, v1}, LF/k;->a(Z)V

    invoke-direct {p0, v0, p1}, LF/f;->a(LF/k;LF/k;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, LF/k;->c()LF/m;

    move-result-object v1

    invoke-virtual {v0, v1}, LF/k;->a(LF/m;)V

    goto :goto_a

    :cond_3d
    move v1, v2

    goto :goto_2c

    :cond_3f
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_43
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-direct {p0, v4, p1}, LF/f;->a(Ljava/util/ArrayList;LF/k;)LF/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LF/k;->c(LF/k;)LF/l;

    invoke-virtual {v0}, LF/k;->e()LF/l;

    move-result-object v1

    sget-object v4, LF/l;->c:LF/l;

    if-ne v1, v4, :cond_66

    :goto_58
    if-eqz v3, :cond_68

    invoke-virtual {v0}, LF/k;->d()Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, LF/m;->b:LF/m;

    invoke-virtual {v0, v1}, LF/k;->a(LF/m;)V

    :cond_65
    :goto_65
    return-object v0

    :cond_66
    move v3, v2

    goto :goto_58

    :cond_68
    if-nez v3, :cond_65

    invoke-virtual {v0}, LF/k;->d()Z

    move-result v1

    if-nez v1, :cond_65

    sget-object v1, LF/m;->c:LF/m;

    invoke-virtual {v0, v1}, LF/k;->a(LF/m;)V

    goto :goto_65

    :cond_76
    const/4 v0, 0x0

    goto :goto_65
.end method

.method private a(Ljava/util/ArrayList;LF/k;)LF/k;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_1c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    if-eqz v1, :cond_17

    invoke-direct {p0, v0, v1, p2}, LF/f;->a(LF/k;LF/k;LF/k;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_17
    :goto_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_7

    :cond_1c
    if-eqz p2, :cond_2b

    invoke-virtual {v1, p2}, LF/k;->a(LF/k;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1, p2}, LF/k;->b(LF/k;)Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_2a
    return-object p2

    :cond_2b
    move-object p2, v1

    goto :goto_2a

    :cond_2d
    move-object v0, v1

    goto :goto_17
.end method

.method private a(Lbc/a;Lbc/a;)Lbc/a;
    .registers 5

    iget-object v0, p2, Lbc/a;->a:Lbc/t;

    iget-object v1, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, LF/f;->j:Lbc/d;

    sget v1, LF/f;->a:F

    neg-float v1, v1

    invoke-static {v0, p2, v1}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object p2

    :cond_13
    return-object p2
.end method

.method private a(Lbc/t;LF/R;II)Ljava/util/ArrayList;
    .registers 16

    iget-object v0, p0, LF/f;->j:Lbc/d;

    invoke-virtual {v0, p1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v9

    invoke-virtual {v9}, Lbc/h;->v()LK/bn;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v10

    if-gez p4, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    :cond_14
    invoke-virtual {v9, p3}, Lbc/h;->b(I)LaJ/B;

    move-result-object v0

    move v3, p3

    move-object v2, v0

    :goto_1a
    if-ge v3, p4, :cond_9b

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v9, v0}, Lbc/h;->b(I)LaJ/B;

    move-result-object v8

    invoke-static {p2}, LI/g;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v4

    invoke-virtual {v2, v8}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v9}, Lbc/h;->b()Lbc/q;

    move-result-object v0

    sget-object v1, Lbc/q;->e:Lbc/q;

    if-ne v0, v1, :cond_4c

    invoke-static {v4, v2}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v5

    invoke-static {v5, v9, v3}, LF/f;->a(FLbc/h;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, LF/k;

    iget-object v1, p0, LF/f;->j:Lbc/d;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, LF/k;-><init>(Lbc/d;Lbc/t;ILF/R;FFZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    move-object v2, v8

    goto :goto_1a

    :cond_50
    invoke-static {v4, v2, v8}, LI/g;->c(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v6

    invoke-static {v4, v2}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v0

    invoke-static {v4, v8}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v1

    invoke-static {v4, v2, v8}, LI/g;->b(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v5

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_90

    const/high16 v2, 0x3f80

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_90

    :goto_6b
    invoke-static {v5, v9, v3}, LF/f;->a(FLbc/h;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {v6}, LF/f;->b(F)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_82

    const/high16 v0, 0x3f80

    cmpl-float v0, v6, v0

    if-lez v0, :cond_99

    :cond_82
    const/4 v7, 0x1

    :goto_83
    new-instance v0, LF/k;

    iget-object v1, p0, LF/f;->j:Lbc/d;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, LF/k;-><init>(Lbc/d;Lbc/t;ILF/R;FFZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_90
    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_97

    move v5, v0

    goto :goto_6b

    :cond_97
    move v5, v1

    goto :goto_6b

    :cond_99
    const/4 v7, 0x0

    goto :goto_83

    :cond_9b
    return-object v10
.end method

.method private a()V
    .registers 4

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v1, v0, LI/q;->e:F

    iget v2, v0, LI/q;->d:F

    add-float/2addr v1, v2

    sput v1, LF/f;->a:F

    iget v1, v0, LI/q;->A:F

    sput v1, LF/f;->b:F

    iget v1, v0, LI/q;->j:F

    sput v1, LF/f;->c:F

    iget v1, v0, LI/q;->k:F

    sput v1, LF/f;->d:F

    iget v1, v0, LI/q;->l:F

    sput v1, LF/f;->e:F

    iget v1, v0, LI/q;->m:F

    sput v1, LF/f;->f:F

    iget v1, v0, LI/q;->n:F

    sput v1, LF/f;->g:F

    iget v1, v0, LI/q;->o:F

    sput v1, LF/f;->h:F

    iget v0, v0, LI/q;->p:F

    sput v0, LF/f;->i:F

    return-void
.end method

.method private a(LF/k;)V
    .registers 4

    iget v0, p1, LF/k;->g:F

    sget v1, LF/f;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    sget-object v0, LF/m;->a:LF/m;

    invoke-virtual {p1, v0}, LF/k;->a(LF/m;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, LF/f;->j:Lbc/d;

    iget-object v1, p1, LF/k;->b:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->c()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, LF/f;->c(LF/k;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_22
    invoke-virtual {p1}, LF/k;->g()Lbc/a;

    move-result-object v0

    invoke-virtual {p1, v0}, LF/k;->a(Lbc/a;)V

    sget-object v0, LF/m;->c:LF/m;

    invoke-virtual {p1, v0}, LF/k;->a(LF/m;)V

    goto :goto_d

    :cond_2f
    sget-object v0, LF/m;->a:LF/m;

    invoke-virtual {p1, v0}, LF/k;->a(LF/m;)V

    goto :goto_d
.end method

.method private a(Ljava/util/ArrayList;LF/k;Lbc/a;)V
    .registers 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    if-eq v0, p2, :cond_4

    invoke-virtual {v0}, LF/k;->h()Lbc/a;

    move-result-object v0

    iget-object v2, p0, LF/f;->j:Lbc/d;

    invoke-static {v2, p3, v0}, LI/g;->a(Lbc/d;Lbc/a;Lbc/a;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, LF/f;->a:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_2a
    return-void
.end method

.method private static a(FLbc/h;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Lbc/h;->d(I)F

    move-result v0

    invoke-static {v0}, LF/f;->a(F)F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(LF/k;LF/k;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, LF/k;->h()Lbc/a;

    move-result-object v1

    invoke-virtual {p2}, LF/k;->h()Lbc/a;

    move-result-object v2

    iget-object v1, v1, Lbc/a;->a:Lbc/t;

    iget-object v2, v2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v1, v2}, Lbc/t;->a(Lbc/t;)I

    move-result v1

    if-lez v1, :cond_17

    invoke-direct {p0, p1}, LF/f;->b(LF/k;)Z

    move-result v0

    :cond_17
    return v0
.end method

.method private a(LF/k;LF/k;LF/k;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, LF/k;->c()LF/m;

    move-result-object v2

    invoke-virtual {p2}, LF/k;->c()LF/m;

    move-result-object v3

    invoke-virtual {v2, v3}, LF/m;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    if-gez v2, :cond_15

    move v0, v1

    goto :goto_10

    :cond_15
    invoke-virtual {p1}, LF/k;->h()Lbc/a;

    move-result-object v2

    invoke-virtual {p2}, LF/k;->h()Lbc/a;

    move-result-object v3

    if-eqz p3, :cond_3d

    invoke-virtual {p3}, LF/k;->h()Lbc/a;

    move-result-object v4

    iget-object v5, v2, Lbc/a;->a:Lbc/t;

    iget-object v6, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v5, v6}, Lbc/t;->a(Lbc/t;)I

    move-result v5

    iget-object v6, v3, Lbc/a;->a:Lbc/t;

    iget-object v4, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v6, v4}, Lbc/t;->a(Lbc/t;)I

    move-result v4

    if-ltz v5, :cond_37

    if-ltz v4, :cond_10

    :cond_37
    if-gez v5, :cond_3d

    if-ltz v4, :cond_3d

    move v0, v1

    goto :goto_10

    :cond_3d
    invoke-direct {p0, p1, p2}, LF/f;->b(LF/k;LF/k;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-direct {p0, p2, p1}, LF/f;->b(LF/k;LF/k;)Z

    move-result v4

    if-nez v4, :cond_76

    invoke-direct {p0, p1}, LF/f;->c(LF/k;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-direct {p0, p2}, LF/f;->c(LF/k;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_55
    if-eqz p3, :cond_63

    invoke-virtual {p1, p3}, LF/k;->b(LF/k;)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p2, p3}, LF/k;->b(LF/k;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_63
    invoke-virtual {v2, v3}, Lbc/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {p1, p2}, LF/k;->a(LF/k;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_71
    invoke-virtual {p1, p2}, LF/k;->a(LF/k;)Z

    move-result v0

    goto :goto_10

    :cond_76
    move v0, v1

    goto :goto_10
.end method

.method private b(Lbc/a;Lbc/a;)Lbc/a;
    .registers 5

    iget-object v0, p2, Lbc/a;->a:Lbc/t;

    iget-object v1, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, LF/f;->j:Lbc/d;

    sget v1, LF/f;->a:F

    invoke-static {v0, p2, v1}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object p2

    :cond_12
    return-object p2
.end method

.method private b(LF/R;)Ljava/util/ArrayList;
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, LF/f;->l:LF/k;

    if-eqz v0, :cond_14

    iget-object v0, p0, LF/f;->l:LF/k;

    invoke-direct {p0, v0, p1}, LF/f;->a(LF/k;LF/R;)LF/k;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1b
    if-ge v2, v4, :cond_37

    iget-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    iget-object v5, p0, LF/f;->l:LF/k;

    if-ne v0, v5, :cond_2d

    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_2d
    invoke-direct {p0, v0, p1}, LF/f;->a(LF/k;LF/R;)LF/k;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_37
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0, p1}, LF/f;->c(LF/R;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_45
    if-ge v1, v4, :cond_5f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    invoke-direct {p0, v0}, LF/f;->a(LF/k;)V

    invoke-virtual {v0}, LF/k;->c()LF/m;

    move-result-object v5

    sget-object v6, LF/m;->a:LF/m;

    if-eq v5, v6, :cond_5b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45

    :cond_5f
    return-object v3
.end method

.method private b(LF/k;LF/R;)Ljava/util/ArrayList;
    .registers 13

    const/4 v9, 0x0

    const/4 v1, -0x1

    invoke-static {p2}, LI/g;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v0

    iget-object v2, p1, LF/k;->d:LaJ/B;

    invoke-static {v0, v2}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v0

    invoke-virtual {p2}, LF/R;->getTime()J

    move-result-wide v2

    iget-wide v4, p1, LF/k;->e:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, LF/f;->a(FJ)F

    move-result v0

    iget v2, p1, LF/k;->h:F

    add-float/2addr v0, v2

    invoke-virtual {p2}, LF/R;->getAccuracy()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, LF/k;->g()Lbc/a;

    move-result-object v2

    iget-object v3, p0, LF/f;->j:Lbc/d;

    neg-float v4, v0

    invoke-static {v3, v2, v4}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v3

    invoke-direct {p0, v2, v3}, LF/f;->a(Lbc/a;Lbc/a;)Lbc/a;

    move-result-object v3

    iget-object v4, p0, LF/f;->j:Lbc/d;

    invoke-static {v4, v2, v0}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v0

    invoke-direct {p0, v2, v0}, LF/f;->b(Lbc/a;Lbc/a;)Lbc/a;

    move-result-object v4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v0, Lbc/v;

    iget-object v2, p0, LF/f;->j:Lbc/d;

    invoke-direct {v0, v2}, Lbc/v;-><init>(Lbc/d;)V

    iget-object v2, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Lbc/v;->b(Lbc/t;)Lbc/v;

    move-result-object v6

    :cond_49
    invoke-virtual {v6}, Lbc/v;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-virtual {v6}, Lbc/v;->a()Lbc/t;

    move-result-object v7

    invoke-virtual {p2}, LF/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, LF/f;->j:Lbc/d;

    invoke-virtual {v0, v7}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->c()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p2}, LF/R;->getSpeed()F

    move-result v0

    sget v2, LF/f;->b:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_49

    :cond_6f
    iget-object v0, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v7, v0}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, LF/f;->j:Lbc/d;

    iget-object v2, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    iget v2, v3, Lbc/a;->b:F

    invoke-virtual {v0, v2}, Lbc/h;->b(F)I

    move-result v0

    :goto_85
    iget-object v2, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v7, v2}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    iget-object v2, p0, LF/f;->j:Lbc/d;

    iget-object v8, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v2, v8}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    iget v8, v4, Lbc/a;->b:F

    invoke-virtual {v2, v8}, Lbc/h;->b(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_9d
    invoke-direct {p0, v7, p2, v0, v2}, LF/f;->a(Lbc/t;LF/R;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v3, Lbc/a;->a:Lbc/t;

    invoke-virtual {v7, v0}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    invoke-virtual {v0}, LF/k;->g()Lbc/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbc/a;->a(Lbc/a;)I

    move-result v0

    if-lez v0, :cond_c2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v7, v0}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/k;

    invoke-virtual {v0}, LF/k;->g()Lbc/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbc/a;->a(Lbc/a;)I

    move-result v0

    if-gez v0, :cond_e9

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_e9
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v4, Lbc/a;->a:Lbc/t;

    invoke-virtual {v7, v0}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_f4
    return-object v5

    :cond_f5
    move v2, v1

    goto :goto_9d

    :cond_f7
    move v0, v1

    goto :goto_85
.end method

.method private b(Ljava/util/ArrayList;LF/k;)V
    .registers 4

    iget-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, LF/f;->l:LF/k;

    return-void
.end method

.method private static b(F)Z
    .registers 3

    sget v0, LF/f;->e:F

    neg-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f80

    sget v1, LF/f;->e:F

    add-float/2addr v0, v1

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(LF/k;)Z
    .registers 4

    iget v0, p1, LF/k;->g:F

    sget v1, LF/f;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(LF/k;LF/k;)Z
    .registers 6

    iget v0, p1, LF/k;->f:F

    iget v1, p2, LF/k;->f:F

    sget v2, LF/f;->f:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private c(LF/R;)Ljava/util/ArrayList;
    .registers 8

    const/4 v5, -0x1

    new-instance v0, Lbc/v;

    iget-object v1, p0, LF/f;->j:Lbc/d;

    invoke-direct {v0, v1}, Lbc/v;-><init>(Lbc/d;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-virtual {v0}, Lbc/v;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Lbc/v;->a()Lbc/t;

    move-result-object v2

    invoke-virtual {p1}, LF/R;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, LF/f;->j:Lbc/d;

    invoke-virtual {v3, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v3

    invoke-virtual {v3}, Lbc/h;->c()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p1}, LF/R;->getSpeed()F

    move-result v3

    sget v4, LF/f;->b:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    :cond_32
    invoke-direct {p0, v2, p1, v5, v5}, LF/f;->a(Lbc/t;LF/R;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_3a
    return-object v1
.end method

.method private c(LF/k;)Z
    .registers 4

    iget-boolean v0, p1, LF/k;->i:Z

    if-eqz v0, :cond_e

    iget v0, p1, LF/k;->g:F

    sget v1, LF/f;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(LF/R;)LF/i;
    .registers 9

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, LF/R;->getLatitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_31

    invoke-virtual {p1}, LF/R;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_31

    move v0, v1

    :goto_15
    const-string v3, "Location should have both latitude and longitude"

    invoke-static {v0, v3}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, LF/f;->b(LF/R;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, LF/j;->a:LF/j;

    move-object v1, v0

    move-object v0, v2

    :goto_28
    invoke-direct {p0, v4, v2}, LF/f;->b(Ljava/util/ArrayList;LF/k;)V

    new-instance v2, LF/i;

    invoke-direct {v2, v1, v0}, LF/i;-><init>(LF/j;Lbc/a;)V

    return-object v2

    :cond_31
    const/4 v0, 0x0

    goto :goto_15

    :cond_33
    iget-object v0, p0, LF/f;->l:LF/k;

    invoke-direct {p0, v4, v0}, LF/f;->a(Ljava/util/ArrayList;LF/k;)LF/k;

    move-result-object v3

    invoke-virtual {v3}, LF/k;->h()Lbc/a;

    move-result-object v0

    invoke-direct {p0, v4, v3, v0}, LF/f;->a(Ljava/util/ArrayList;LF/k;Lbc/a;)V

    sget-object v5, LF/g;->a:[I

    invoke-virtual {v3}, LF/k;->c()LF/m;

    move-result-object v6

    invoke-virtual {v6}, LF/m;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6a

    sget-object v0, LF/j;->a:LF/j;

    move-object v1, v0

    move-object v0, v2

    goto :goto_28

    :pswitch_54
    sget-object v1, LF/j;->d:LF/j;

    move-object v2, v3

    goto :goto_28

    :pswitch_58
    invoke-direct {p0, v3, v4}, LF/f;->a(LF/k;Ljava/util/ArrayList;)I

    move-result v5

    if-ne v5, v1, :cond_67

    sget-object v1, LF/j;->d:LF/j;

    sget-object v2, LF/m;->d:LF/m;

    invoke-virtual {v3, v2}, LF/k;->a(LF/m;)V

    move-object v2, v3

    goto :goto_28

    :cond_67
    sget-object v1, LF/j;->b:LF/j;

    goto :goto_28

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_58
    .end packed-switch
.end method
