.class public LaV/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LaM/i;LaM/m;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {v2, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_37
    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    return-object v0

    :cond_4a
    move-object v0, v1

    goto :goto_49
.end method
