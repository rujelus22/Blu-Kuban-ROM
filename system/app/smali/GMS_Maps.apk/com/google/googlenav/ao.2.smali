.class public Lcom/google/googlenav/ao;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/googlenav/am;

.field private d:[Lcom/google/googlenav/am;


# direct methods
.method private constructor <init>([Lcom/google/googlenav/am;Lcom/google/googlenav/am;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ao;->d:[Lcom/google/googlenav/am;

    iput-object p2, p0, Lcom/google/googlenav/ao;->c:Lcom/google/googlenav/am;

    iput-object p3, p0, Lcom/google/googlenav/ao;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ao;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/ao;
    .registers 10

    const/4 v0, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    if-nez p0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, v3}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    invoke-static {v1, v3}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lam/b;->l(I)I

    move-result v4

    new-array v5, v4, [Lcom/google/googlenav/am;

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v4, :cond_2a

    invoke-virtual {p0, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/am;->a(Lam/b;)Lcom/google/googlenav/am;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    invoke-virtual {p0, v8}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0, v8}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/am;->a(Lam/b;)Lcom/google/googlenav/am;

    move-result-object v0

    :cond_38
    new-instance v1, Lcom/google/googlenav/ao;

    invoke-direct {v1, v5, v0, v2, v3}, Lcom/google/googlenav/ao;-><init>([Lcom/google/googlenav/am;Lcom/google/googlenav/am;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_6
.end method

.method public static a(I)Z
    .registers 2

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    if-ne p0, v0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a()[Lcom/google/googlenav/am;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ao;->d:[Lcom/google/googlenav/am;

    return-object v0
.end method

.method public b()Lcom/google/googlenav/am;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ao;->c:Lcom/google/googlenav/am;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ao;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ao;->a:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->d()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ao;->c:Lcom/google/googlenav/am;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
