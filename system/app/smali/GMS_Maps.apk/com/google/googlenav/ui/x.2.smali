.class public Lcom/google/googlenav/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Lah/g;


# static fields
.field static final a:C


# instance fields
.field final b:I

.field private c:Ljava/util/List;

.field private d:[J

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0xec32

    const v1, 0xecff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/google/googlenav/ui/x;->a:C

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/x;->h:Z

    sget-char v0, Lcom/google/googlenav/ui/x;->a:C

    const v1, 0xec00

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/x;->b:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/x;->b()V

    return-void
.end method

.method private d(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private e(J)V
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/x;->b(J)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-char v0, v0, Lcom/google/googlenav/ui/z;->d:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method private h()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/x;->h:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->i()V

    :cond_7
    return-void
.end method

.method private i()V
    .registers 9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/googlenav/ui/x;->h:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-static {v0, v1}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Lam/b;

    sget-object v2, LbD/aR;->b:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    :try_start_1b
    const-string v2, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-interface {v0, v2}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lam/b;->a([B)Lam/b;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_4f

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/x;->g:I

    invoke-virtual {v1, v7}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->d:[J

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v2, :cond_13

    invoke-virtual {v1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lam/b;->c(I)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lam/b;->e(I)J

    move-result-wide v5

    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    aput-wide v5, v3, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/googlenav/ui/x;->a([BJ)Lcom/google/googlenav/ui/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :catch_4f
    move-exception v0

    goto :goto_13
.end method


# virtual methods
.method public a(J)C
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/x;->b(J)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-nez v0, :cond_d

    const v0, 0xec00

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lcom/google/googlenav/ui/z;->a(Lcom/google/googlenav/ui/z;)C

    move-result v0

    goto :goto_c
.end method

.method public a([BJ)Lcom/google/googlenav/ui/z;
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_d

    :cond_c
    :goto_c
    return-object v6

    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/google/googlenav/ui/x;->b(J)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-eqz v0, :cond_17

    iput-object p1, v0, Lcom/google/googlenav/ui/z;->a:[B

    move-object v6, v0

    goto :goto_c

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/x;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v5, v0

    new-instance v0, Lcom/google/googlenav/ui/z;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/z;-><init>(Lcom/google/googlenav/ui/x;[BJCLcom/google/googlenav/ui/y;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .registers 13

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/x;->c()I

    move-result v0

    new-array v5, v0, [J

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v9

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ui/x;->c()I

    move-result v2

    if-ge v3, v2, :cond_37

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v3

    move v0, v2

    :goto_35
    move v3, v0

    goto :goto_12

    :cond_37
    if-nez v1, :cond_3e

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_3e
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_35

    :cond_43
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/x;->d(J)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/x;->e(J)V

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    :cond_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/x;->d:[J

    array-length v0, v0

    if-ge v4, v0, :cond_5b

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->d:[J

    aget-wide v6, v0, v4

    cmp-long v0, v6, v9

    if-nez v0, :cond_43

    :cond_5b
    iput-object v5, p0, Lcom/google/googlenav/ui/x;->d:[J

    return-object v1

    :cond_5e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    array-length v0, v5

    if-ge v3, v0, :cond_71

    add-int/lit8 v0, v3, 0x1

    aput-wide v6, v5, v3

    move v3, v0

    goto :goto_4c

    :cond_71
    invoke-direct {p0, v6, v7}, Lcom/google/googlenav/ui/x;->e(J)V

    goto :goto_4c
.end method

.method public a(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    iget v0, p0, Lcom/google/googlenav/ui/x;->g:I

    if-eq v0, p1, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/x;->b()V

    iput p1, p0, Lcom/google/googlenav/ui/x;->g:I

    :cond_c
    return-void
.end method

.method public a(C)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/x;->f(C)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(CLah/e;II)Z
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/x;->f(C)Lcom/google/googlenav/ui/z;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-static {v1}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v0

    invoke-interface {p2, v0, p3, p4}, Lah/e;->a(Lah/f;II)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public b(C)I
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/x;->f(C)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0

    :cond_11
    invoke-static {v0}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->b()I

    move-result v0

    goto :goto_10
.end method

.method protected b(J)Lcom/google/googlenav/ui/z;
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/z;

    return-object v0
.end method

.method public b()V
    .registers 5

    const v1, 0xec00

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/x;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->f:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->d:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/x;->c()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/x;->c:Ljava/util/List;

    move v0, v1

    :goto_25
    iget v2, p0, Lcom/google/googlenav/ui/x;->b:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lcom/google/googlenav/ui/x;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_25

    :cond_37
    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/x;->b:I

    return v0
.end method

.method public c(C)I
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/x;->f(C)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0

    :cond_11
    invoke-static {v0}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->a()I

    move-result v0

    goto :goto_10
.end method

.method public c(J)[B
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/x;->b(J)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, v0, Lcom/google/googlenav/ui/z;->a:[B

    goto :goto_a
.end method

.method public d(C)I
    .registers 3

    const/4 v0, 0x2

    return v0
.end method

.method public d()[J
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    move v0, v1

    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    array-length v3, v3

    if-ge v0, v3, :cond_15

    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    aget-wide v3, v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    :cond_15
    new-array v4, v2, [J

    move v3, v1

    move v0, v1

    :goto_19
    if-ge v0, v2, :cond_3e

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->d:[J

    aget-wide v5, v1, v3

    invoke-direct {p0, v5, v6}, Lcom/google/googlenav/ui/x;->d(J)Z

    move-result v1

    if-eqz v1, :cond_38

    :goto_25
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_19

    :cond_29
    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    aget-wide v3, v3, v0

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/x;->d(J)Z

    move-result v3

    if-nez v3, :cond_35

    add-int/lit8 v2, v2, 0x1

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_38
    add-int/lit8 v1, v0, 0x1

    aput-wide v5, v4, v0

    move v0, v1

    goto :goto_25

    :cond_3e
    return-object v4
.end method

.method public e()I
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    iget v0, p0, Lcom/google/googlenav/ui/x;->g:I

    return v0
.end method

.method public e(C)Lah/f;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/x;->f(C)Lcom/google/googlenav/ui/z;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/googlenav/ui/z;->b(Lcom/google/googlenav/ui/z;)Lah/f;

    move-result-object v0

    goto :goto_7
.end method

.method protected f(C)Lcom/google/googlenav/ui/z;
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/z;

    return-object v0
.end method

.method public f()V
    .registers 9

    invoke-direct {p0}, Lcom/google/googlenav/ui/x;->h()V

    :try_start_3
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    new-instance v2, Lam/b;

    sget-object v0, LbD/aR;->b:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/16 v0, 0x11

    iget v3, p0, Lcom/google/googlenav/ui/x;->g:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    const/4 v0, 0x0

    :goto_1a
    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    array-length v3, v3

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/google/googlenav/ui/x;->d:[J

    aget-wide v3, v3, v0

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_49

    :cond_29
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lam/b;->l(I)I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_37

    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lam/b;->g(II)V

    :cond_37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I

    :goto_48
    return-void

    :cond_49
    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/x;->d(J)Z

    move-result v5

    if-eqz v5, :cond_52

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_52
    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/x;->b(J)Lcom/google/googlenav/ui/z;

    move-result-object v3

    if-eqz v3, :cond_4f

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lam/b;->a(I)Lam/b;

    move-result-object v4

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/google/googlenav/ui/z;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lam/b;->b(IJ)V

    const/4 v5, 0x3

    iget-object v3, v3, Lcom/google/googlenav/ui/z;->a:[B

    invoke-virtual {v4, v5, v3}, Lam/b;->b(I[B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lam/b;->a(ILam/b;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6d} :catch_6e

    goto :goto_4f

    :catch_6e
    move-exception v0

    goto :goto_48
.end method

.method public g()Lar/k;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/x;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    :cond_1f
    new-instance v0, Lar/k;

    const-string v2, "DownloadedIconProvider"

    invoke-direct {v0, v2, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
