.class public abstract LaY/A;
.super LaY/i;


# static fields
.field private static final A:I

.field private static final x:LaJ/Y;

.field private static final y:I

.field private static final z:I


# instance fields
.field protected w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/16 v0, 0x12

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    sput-object v0, LaY/A;->x:LaJ/Y;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_12
    sput v0, LaY/A;->y:I

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v2

    :cond_1b
    sput v1, LaY/A;->z:I

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v2, 0x5

    :cond_24
    sput v2, LaY/A;->A:I

    return-void

    :cond_27
    const/16 v0, 0xe

    goto :goto_12
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, LaY/i;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/A;->w:Z

    return-void
.end method

.method private a([LaJ/B;I)[LaJ/B;
    .registers 6

    const/4 v2, 0x0

    new-array v0, p2, [LaJ/B;

    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b()I
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->x()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_12

    sget v0, LaY/A;->A:I

    neg-int v0, v0

    :goto_11
    return v0

    :cond_12
    const-wide/high16 v2, 0x3ff8

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    sget v0, LaY/A;->z:I

    neg-int v0, v0

    goto :goto_11

    :cond_1c
    sget v0, LaY/A;->y:I

    neg-int v0, v0

    goto :goto_11
.end method


# virtual methods
.method protected a()Lau/b;
    .registers 2

    iget-object v0, p0, LaY/A;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/b;

    return-object v0
.end method

.method protected a(IZZ)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v4

    iget-object v0, p0, LaY/A;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/k;

    iget-object v2, p0, LaY/A;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v5

    iget-boolean v2, p0, LaY/A;->w:Z

    if-eqz v2, :cond_1f

    sget-object v2, LaY/A;->x:LaJ/Y;

    invoke-virtual {v2, v5}, LaJ/Y;->b(LaJ/Y;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v5, LaY/A;->x:LaJ/Y;

    :cond_1f
    iput-boolean v1, p0, LaY/A;->w:Z

    invoke-virtual {p0, p1}, LaY/A;->b(I)V

    invoke-virtual {p0}, LaY/A;->ao()Z

    if-ltz p1, :cond_50

    iget-object v2, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->f()I

    move-result v2

    if-ge p1, v2, :cond_50

    if-eqz p2, :cond_50

    if-eqz p3, :cond_74

    const/4 v2, -0x1

    if-eq v4, v2, :cond_79

    invoke-interface {v0, v4}, Lau/k;->m(I)I

    move-result v2

    invoke-interface {v0, p1}, Lau/k;->m(I)I

    move-result v3

    :goto_40
    if-ne v2, v3, :cond_51

    invoke-virtual {p0, v1, v5}, LaY/A;->a(ZLaJ/Y;)V

    :goto_45
    const/16 v0, 0x12

    const-string v1, "dd"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_50
    return-void

    :cond_51
    invoke-interface {v0}, Lau/k;->af()[LaJ/B;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    array-length v1, v0

    invoke-direct {p0, v0, v1}, LaY/A;->a([LaJ/B;I)[LaJ/B;

    move-result-object v1

    iget-object v0, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, LaY/A;->a(Lcom/google/googlenav/D;LaJ/Y;)LaJ/B;

    move-result-object v0

    aput-object v0, v1, v3

    :cond_69
    iget-object v0, p0, LaY/A;->d:LaJ/u;

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, LaJ/u;->a([LaJ/B;IIILaJ/Y;)V

    goto :goto_45

    :cond_74
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, LaY/A;->a(ZLaJ/Y;)V

    goto :goto_45

    :cond_79
    move v3, v1

    move v2, v1

    goto :goto_40
.end method

.method protected a(Lau/x;I)V
    .registers 7

    iget-object v0, p0, LaY/A;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v1, p2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    const/4 v0, 0x0

    iget-object v1, p0, LaY/A;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p1}, Lau/x;->j()Lcom/google/googlenav/ah;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;BZ)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x4

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected a(Lbb/E;I)Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, LaY/A;->g:Lbb/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/A;->g:Lbb/d;

    if-eq p1, v0, :cond_e

    :cond_9
    invoke-super {p0, p1}, LaY/i;->a(Lbb/E;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LaY/A;->h:Lcom/google/googlenav/D;

    if-eqz v0, :cond_37

    iget-object v0, p0, LaY/A;->h:Lcom/google/googlenav/D;

    instance-of v0, v0, Lau/m;

    if-eqz v0, :cond_37

    iget-object v0, p0, LaY/A;->h:Lcom/google/googlenav/D;

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->s()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, LaY/A;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lau/x;->j()Lcom/google/googlenav/ah;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {p0, v0, p2}, LaY/A;->a(Lau/x;I)V

    move v0, v1

    goto :goto_d

    :cond_37
    const/16 v0, 0x23

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, LaY/A;->a(CI)Z

    move v0, v1

    goto :goto_d
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 4

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-static {}, LaY/A;->b()I

    move-result v0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, LaY/A;->f(Lcom/google/googlenav/D;)I

    move-result v0

    neg-int v0, v0

    goto :goto_b
.end method

.method public e(Laq/b;)Z
    .registers 7

    const/16 v4, 0x36

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/A;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-virtual {p1}, Laq/b;->b()I

    move-result v3

    if-eq v3, v4, :cond_15

    const/16 v0, 0x34

    if-ne v3, v0, :cond_a

    :cond_15
    invoke-virtual {p0}, LaY/A;->ac()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, LaY/A;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aA()I

    move-result v0

    if-ltz v0, :cond_37

    iget-object v3, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-lt v0, v3, :cond_38

    :cond_37
    move v0, v1

    :cond_38
    iget-object v1, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->a(I)V

    invoke-virtual {p0}, LaY/A;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, LaY/Y;->a(LaY/i;I)V

    move v1, v2

    goto :goto_a

    :cond_4a
    iget-object v0, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-ne v3, v4, :cond_6c

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LaY/A;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_60
    invoke-virtual {p0, v0, v2, v2}, LaY/A;->a(IZZ)V

    if-ne v3, v4, :cond_73

    const-string v0, "cn"

    :goto_67
    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    move v1, v2

    goto :goto_a

    :cond_6c
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_60

    :cond_73
    const-string v0, "cp"

    goto :goto_67
.end method

.method protected p()I
    .registers 2

    invoke-virtual {p0}, LaY/A;->q()I

    move-result v0

    neg-int v0, v0

    return v0
.end method
