.class public Lax/aS;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:Laf/h;

.field private c:Laf/h;

.field private d:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/E;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lax/aS;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v4

    move v3, v2

    :goto_1b
    if-ge v3, v4, :cond_36

    invoke-interface {p1, v3}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    new-instance v5, Lax/aP;

    if-nez v3, :cond_34

    const/4 v1, 0x1

    :goto_28
    invoke-direct {v5, p0, v1, v0}, Lax/aP;-><init>(Lax/aS;ZLcom/google/googlenav/ah;)V

    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    :cond_34
    move v1, v2

    goto :goto_28

    :cond_36
    invoke-virtual {p0}, Lax/aS;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lax/aS;->d:Ljava/util/Hashtable;

    iput-object p1, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Lax/aS;->a()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v2

    invoke-virtual {v2}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_18

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public a(I)Lax/aP;
    .registers 3

    invoke-virtual {p0}, Lax/aS;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(Ljava/lang/Long;)Lax/aP;
    .registers 3

    iget-object v0, p0, Lax/aS;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lax/aP;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v1

    invoke-virtual {v1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v1

    goto :goto_3

    :cond_1c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a
.end method

.method public a()V
    .registers 6

    iget-object v0, p0, Lax/aS;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    iget-object v1, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_28

    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    iget-object v3, p0, Lax/aS;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_28
    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lax/aS;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Lax/aP;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 6

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->l()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-object v1
.end method

.method public f()Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v1

    if-lez v1, :cond_22

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_22

    invoke-virtual {p0, v1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->m()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Lax/aP;->J()Z

    move-result v3

    if-nez v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public g()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_17

    invoke-virtual {p0, v1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->y()Z

    move-result v3

    if-eqz v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    return v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lax/aS;->b:Laf/h;

    iput-object v0, p0, Lax/aS;->c:Laf/h;

    return-void
.end method

.method public i()Laf/h;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lax/aS;->b:Laf/h;

    if-nez v0, :cond_72

    new-instance v0, Laf/h;

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    invoke-direct {v0, v2}, Laf/h;-><init>(I)V

    iput-object v0, p0, Lax/aS;->b:Laf/h;

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    move v0, v1

    :goto_15
    if-ge v0, v2, :cond_2a

    invoke-virtual {p0, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->y()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lax/aS;->b:Laf/h;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Laf/h;->a(J)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    iget-object v0, p0, Lax/aS;->b:Laf/h;

    invoke-virtual {v0}, Laf/h;->a()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lax/aS;->b:Laf/h;

    invoke-virtual {v0, v1}, Laf/h;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->d()LaJ/B;

    move-result-object v1

    new-instance v2, Laf/h;

    invoke-direct {v2}, Laf/h;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Laf/h;->a(J)V

    const/4 v0, 0x1

    iget-object v3, p0, Lax/aS;->b:Laf/h;

    invoke-virtual {v3}, Laf/h;->b()I

    move-result v3

    :goto_52
    if-ge v0, v3, :cond_6d

    iget-object v4, p0, Lax/aS;->b:Laf/h;

    invoke-virtual {v4, v0}, Laf/h;->a(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Lax/aS;->a(I)Lax/aP;

    move-result-object v4

    invoke-virtual {v4}, Lax/aP;->d()LaJ/B;

    move-result-object v4

    invoke-virtual {v4, v1}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Laf/h;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_6d
    iget-object v0, p0, Lax/aS;->b:Laf/h;

    invoke-static {v0, v2}, Lar/t;->a(Laf/h;Laf/h;)V

    :cond_72
    iget-object v0, p0, Lax/aS;->b:Laf/h;

    return-object v0
.end method

.method public j()Laf/h;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lax/aS;->c:Laf/h;

    if-nez v1, :cond_5e

    new-instance v1, Laf/h;

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    invoke-direct {v1, v2}, Laf/h;-><init>(I)V

    iput-object v1, p0, Lax/aS;->c:Laf/h;

    invoke-virtual {p0}, Lax/aS;->b()I

    move-result v2

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_2a

    invoke-virtual {p0, v1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->y()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lax/aS;->c:Laf/h;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Laf/h;->a(J)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2a
    iget-object v1, p0, Lax/aS;->c:Laf/h;

    invoke-virtual {v1}, Laf/h;->a()Z

    move-result v1

    if-nez v1, :cond_5e

    new-instance v1, Laf/h;

    invoke-direct {v1}, Laf/h;-><init>()V

    iget-object v2, p0, Lax/aS;->c:Laf/h;

    invoke-virtual {v2}, Laf/h;->b()I

    move-result v2

    :goto_3d
    if-ge v0, v2, :cond_59

    iget-object v3, p0, Lax/aS;->c:Laf/h;

    invoke-virtual {v3, v0}, Laf/h;->a(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->d()LaJ/B;

    move-result-object v3

    invoke-virtual {v3}, LaJ/B;->c()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Laf/h;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_59
    iget-object v0, p0, Lax/aS;->c:Laf/h;

    invoke-static {v0, v1}, Lar/t;->b(Laf/h;Laf/h;)V

    :cond_5e
    iget-object v0, p0, Lax/aS;->c:Laf/h;

    return-object v0
.end method
