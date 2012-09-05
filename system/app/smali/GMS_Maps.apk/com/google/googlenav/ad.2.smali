.class public Lcom/google/googlenav/ad;
.super Ljava/lang/Object;


# static fields
.field protected static final b:Lcom/google/googlenav/ui/bg;

.field protected static final c:Lcom/google/googlenav/ui/bg;


# instance fields
.field a:Lam/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/bg;

    sget-object v0, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lcom/google/googlenav/ad;->c:Lcom/google/googlenav/ui/bg;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ad;->c(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p1, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    :cond_b
    return-void
.end method

.method private a(Lam/b;Ljava/util/Vector;ZZ)V
    .registers 16

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    invoke-static {p1, v10}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v3

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_80

    if-eqz p3, :cond_5d

    if-nez v0, :cond_5d

    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/ad;->b(Ljava/util/Vector;Z)V

    :goto_15
    invoke-virtual {p1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4, v9}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v10}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-static {v6}, Las/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2bb

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/String;

    aput-object v5, v8, v1

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/bg;

    invoke-direct {p0, v4, v5, v6, p2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Ljava/util/Vector;)V

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_5d
    invoke-direct {p0, p2}, Lcom/google/googlenav/ad;->b(Ljava/util/Vector;)V

    goto :goto_15

    :cond_61
    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/bg;

    invoke-direct {p0, v5, v4, v6, p2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Ljava/util/Vector;)V

    goto :goto_5a

    :cond_80
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Ljava/util/Vector;)V
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Lbb/a;

    const/16 v1, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {p1, p3, v4, v4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {p2, p3, v4, v4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lam/b;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_1f
    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method private b(Ljava/util/Vector;)V
    .registers 4

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/util/Vector;Z)V
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Lbb/a;

    const/16 v0, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lbb/a;-><init>(IILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_39

    sget-char v0, Lcom/google/googlenav/ui/bw;->bg:C

    :goto_13
    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2ba

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ad;->c:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2, v4, v4, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :cond_39
    sget-char v0, Lcom/google/googlenav/ui/bw;->bf:C

    goto :goto_13
.end method

.method private b(Lam/b;)Z
    .registers 8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p1, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v2, v0

    :goto_17
    if-ge v2, v3, :cond_26

    invoke-virtual {p1, v5, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/googlenav/ad;->a(Lam/b;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    move v0, v1

    goto :goto_5
.end method

.method private c(Lam/b;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ad;->b(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    :goto_17
    if-ge v1, v2, :cond_26

    invoke-virtual {p1, v4, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/ad;->b(Lam/b;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    const/4 v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/googlenav/ad;->a(Lam/b;Ljava/util/Vector;ZZ)V

    :cond_10
    return-void
.end method

.method public a(Ljava/util/Vector;Z)V
    .registers 10

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    invoke-virtual {v0, v6}, Lam/b;->l(I)I

    move-result v4

    move v3, v2

    :goto_e
    if-ge v3, v4, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lam/b;

    invoke-virtual {v0, v6, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    if-nez v3, :cond_22

    if-eqz p2, :cond_22

    move v0, v1

    :goto_1b
    invoke-direct {p0, v5, p1, v0, v1}, Lcom/google/googlenav/ad;->a(Lam/b;Ljava/util/Vector;ZZ)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_22
    move v0, v2

    goto :goto_1b

    :cond_24
    return-void
.end method
