.class LaY/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:LaY/m;

.field private final b:Lcom/google/googlenav/ah;


# direct methods
.method private constructor <init>(LaY/m;Lcom/google/googlenav/ah;)V
    .registers 3

    iput-object p1, p0, LaY/q;->a:LaY/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    return-void
.end method

.method synthetic constructor <init>(LaY/m;Lcom/google/googlenav/ah;LaY/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LaY/q;-><init>(LaY/m;Lcom/google/googlenav/ah;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 11

    const/16 v7, 0x9e

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2, v7}, Lam/b;->l(I)I

    move-result v3

    move v2, v0

    :goto_c
    if-ge v2, v3, :cond_27

    invoke-virtual {p2, v7, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v4, v1}, Lam/b;->d(I)I

    move-result v5

    iget-object v6, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v5

    if-nez v5, :cond_24

    iget-object v0, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ah;->d(Lam/b;)V

    move v0, v1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    iget-object v1, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    sget-object v2, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ah;->a(Lcom/google/googlenav/at;)V

    iget-object v1, p0, LaY/q;->a:LaY/m;

    iget-object v2, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    invoke-static {v1, v2}, LaY/m;->a(LaY/m;Lcom/google/googlenav/ah;)V

    if-eqz v0, :cond_6

    iget-object v0, p0, LaY/q;->a:LaY/m;

    iget-object v0, v0, LaY/m;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LaY/q;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LaY/q;->a:LaY/m;

    invoke-virtual {v0}, LaY/m;->br()V

    goto :goto_6
.end method
