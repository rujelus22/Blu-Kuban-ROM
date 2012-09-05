.class public Lt/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lt/W;

.field private b:I

.field private c:[Lt/L;

.field private d:Z

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:I


# direct methods
.method public constructor <init>(Lt/W;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/f;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lt/f;->a(Lt/W;)V

    return-void
.end method

.method private a(ILt/L;IZ)V
    .registers 10

    const/4 v4, 0x0

    iget v0, p0, Lt/f;->b:I

    if-ne p1, v0, :cond_9

    invoke-direct {p0, p2, p3, p4}, Lt/f;->a(Lt/L;IZ)V

    :goto_8
    return-void

    :cond_9
    if-nez p1, :cond_48

    iget-object v0, p0, Lt/f;->a:Lt/W;

    invoke-virtual {v0}, Lt/W;->c()Lt/L;

    move-result-object v1

    iget-object v0, p0, Lt/f;->a:Lt/W;

    invoke-virtual {v0, v4}, Lt/W;->a(I)Lt/L;

    move-result-object v0

    :goto_17
    invoke-static {v1, v0, p2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;)I

    move-result v2

    if-ltz v2, :cond_57

    if-nez p4, :cond_3b

    iget-object v2, p0, Lt/f;->c:[Lt/L;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;)I

    move-result v2

    if-gez v2, :cond_3b

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    iget-object v3, p0, Lt/f;->c:[Lt/L;

    aget-object v3, v3, p1

    invoke-static {v1, v0, p2, v3, v2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p3, v1}, Lt/f;->a(ILt/L;IZ)V

    :cond_3b
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lt/f;->a(ILt/L;IZ)V

    :cond_40
    :goto_40
    iget-object v0, p0, Lt/f;->c:[Lt/L;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lt/L;->b(Lt/L;)V

    goto :goto_8

    :cond_48
    iget-object v0, p0, Lt/f;->a:Lt/W;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lt/W;->a(I)Lt/L;

    move-result-object v1

    iget-object v0, p0, Lt/f;->a:Lt/W;

    invoke-virtual {v0, p1}, Lt/W;->a(I)Lt/L;

    move-result-object v0

    goto :goto_17

    :cond_57
    if-nez p4, :cond_40

    iget-object v2, p0, Lt/f;->c:[Lt/L;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;)I

    move-result v2

    if-ltz v2, :cond_40

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    iget-object v3, p0, Lt/f;->c:[Lt/L;

    aget-object v3, v3, p1

    invoke-static {v1, v0, v3, p2, v2}, Lt/N;->a(Lt/L;Lt/L;Lt/L;Lt/L;Lt/L;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v4}, Lt/f;->a(ILt/L;IZ)V

    goto :goto_40
.end method

.method private a(Lt/L;IZ)V
    .registers 6

    if-eqz p3, :cond_26

    iget v0, p0, Lt/f;->g:I

    iget-object v1, p0, Lt/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lt/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lt/R;

    invoke-direct {v1}, Lt/R;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lt/g;

    invoke-direct {v1}, Lt/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget v0, p0, Lt/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/f;->g:I

    :cond_26
    iget-object v0, p0, Lt/f;->e:Ljava/util/ArrayList;

    iget v1, p0, Lt/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/R;

    invoke-virtual {v0, p1}, Lt/R;->a(Lt/L;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lt/f;->d:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    iget v1, p0, Lt/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/g;

    invoke-virtual {v0, p2}, Lt/g;->a(I)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public a(Lt/P;Ljava/util/ArrayList;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lt/f;->g:I

    iput-boolean v0, p0, Lt/f;->d:Z

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v3

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    invoke-virtual {p1, v1, v2}, Lt/P;->a(ILt/L;)V

    invoke-direct {p0, v0, v2, v0, v5}, Lt/f;->a(ILt/L;IZ)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v2}, Lt/P;->a(ILt/L;)V

    invoke-direct {p0, v0, v2, v0, v0}, Lt/f;->a(ILt/L;IZ)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_23
    move v1, v0

    :goto_24
    iget v0, p0, Lt/f;->g:I

    if-ge v1, v0, :cond_44

    iget-object v0, p0, Lt/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/R;

    invoke-virtual {v0}, Lt/R;->a()I

    move-result v2

    if-le v2, v5, :cond_3d

    invoke-virtual {v0}, Lt/R;->d()Lt/P;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    invoke-virtual {v0}, Lt/R;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_44
    return-void
.end method

.method public a(Lt/P;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lt/f;->a(Lt/P;[ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(Lt/P;[ILjava/util/List;Ljava/util/List;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lt/f;->g:I

    if-eqz p2, :cond_18

    if-eqz p4, :cond_18

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lt/f;->d:Z

    invoke-virtual {p1}, Lt/P;->a()Lt/V;

    move-result-object v0

    iget-object v3, p0, Lt/f;->a:Lt/W;

    invoke-virtual {v3, v0}, Lt/W;->a(Lt/W;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v2

    goto :goto_9

    :cond_1a
    iget-object v3, p0, Lt/f;->a:Lt/W;

    invoke-virtual {v3, v0}, Lt/W;->b(Lt/W;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lt/f;->d:Z

    if-eqz v0, :cond_17

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    new-instance v4, Lt/L;

    invoke-direct {v4}, Lt/L;-><init>()V

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v5

    invoke-virtual {p1, v2, v4}, Lt/P;->a(ILt/L;)V

    iget-boolean v0, p0, Lt/f;->d:Z

    if-eqz v0, :cond_55

    aget v0, p2, v2

    :goto_3f
    invoke-direct {p0, v2, v4, v0, v1}, Lt/f;->a(ILt/L;IZ)V

    move v3, v1

    :goto_43
    if-ge v3, v5, :cond_59

    invoke-virtual {p1, v3, v4}, Lt/P;->a(ILt/L;)V

    iget-boolean v0, p0, Lt/f;->d:Z

    if-eqz v0, :cond_57

    aget v0, p2, v3

    :goto_4e
    invoke-direct {p0, v2, v4, v0, v2}, Lt/f;->a(ILt/L;IZ)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_43

    :cond_55
    move v0, v2

    goto :goto_3f

    :cond_57
    move v0, v2

    goto :goto_4e

    :cond_59
    :goto_59
    iget v0, p0, Lt/f;->g:I

    if-ge v2, v0, :cond_17

    iget-object v0, p0, Lt/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/R;

    invoke-virtual {v0}, Lt/R;->a()I

    move-result v3

    if-le v3, v1, :cond_72

    invoke-virtual {v0}, Lt/R;->d()Lt/P;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    invoke-virtual {v0}, Lt/R;->c()V

    iget-boolean v0, p0, Lt/f;->d:Z

    if-eqz v0, :cond_91

    iget-object v0, p0, Lt/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/g;

    invoke-virtual {v0}, Lt/g;->c()I

    move-result v3

    if-le v3, v1, :cond_8e

    invoke-virtual {v0}, Lt/g;->a()[I

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8e
    invoke-virtual {v0}, Lt/g;->b()V

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_59
.end method

.method public a(Lt/W;)V
    .registers 5

    iput-object p1, p0, Lt/f;->a:Lt/W;

    invoke-virtual {p1}, Lt/W;->b()I

    move-result v0

    iput v0, p0, Lt/f;->b:I

    iget v0, p0, Lt/f;->b:I

    new-array v0, v0, [Lt/L;

    iput-object v0, p0, Lt/f;->c:[Lt/L;

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lt/f;->c:[Lt/L;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lt/f;->c:[Lt/L;

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_20
    return-void
.end method
