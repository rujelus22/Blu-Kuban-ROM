.class public Lau/y;
.super Laf/i;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Laf/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lau/y;
    .registers 3

    invoke-static {p0}, Lau/y;->a(Ljava/lang/String;)Laf/i;

    move-result-object v0

    check-cast v0, Lau/y;

    if-nez v0, :cond_d

    new-instance v0, Lau/y;

    invoke-direct {v0, p0, p1}, Lau/y;-><init>(Ljava/lang/String;I)V

    :cond_d
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lau/y;
    .registers 2

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lau/y;->a(Ljava/lang/String;I)Lau/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/x;

    invoke-static {v0}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lau/x;Lau/x;)V
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Lau/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lau/y;->b(Lau/x;)V

    :cond_b
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lau/x;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p2}, Lau/y;->a(Lau/x;)Z

    :cond_16
    return-void
.end method

.method protected a(Ljava/io/DataInputStream;)V
    .registers 9

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Lam/b;

    sget-object v2, LbD/Z;->e:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, p1, v0}, Lam/b;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_35

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v4, v3}, Lau/x;->b(Lam/b;Lam/b;)Lau/x;

    move-result-object v3

    iget-object v4, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .registers 9

    const/4 v6, 0x1

    new-instance v2, Lam/b;

    sget-object v0, LbD/Z;->e:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p0}, Lau/y;->b()I

    move-result v0

    if-ge v1, v0, :cond_33

    invoke-virtual {v2, v6}, Lam/b;->a(I)Lam/b;

    move-result-object v3

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/x;

    const/4 v4, 0x2

    invoke-static {v0}, Lau/x;->a(Lau/x;)Lam/b;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lam/b;->b(ILam/b;)V

    const/4 v4, 0x3

    invoke-virtual {v0}, Lau/x;->b()Lam/b;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lam/b;->b(ILam/b;)V

    invoke-virtual {v2, v6, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_33
    invoke-virtual {v2, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Lau/x;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lau/y;->c()V

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/x;

    invoke-virtual {v0, p1}, Lau/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_5

    :cond_21
    invoke-static {p1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    if-ltz v0, :cond_41

    invoke-virtual {p0, v0}, Lau/y;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_41
    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v3, p0, Lau/y;->a:I

    if-lt v0, v3, :cond_50

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_50
    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lau/y;->e()V

    move v0, v2

    goto :goto_5
.end method

.method public b(Lau/x;)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lau/y;->c()V

    iget-object v0, p0, Lau/y;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lau/y;->e()V

    :cond_10
    return-void
.end method
