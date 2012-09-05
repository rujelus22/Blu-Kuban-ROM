.class public Le/j;
.super Le/A;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lk/a;->e:LW/d;

    invoke-direct {p0, v0}, Le/A;-><init>(LW/d;)V

    return-void
.end method

.method private c(LW/a;)I
    .registers 4

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v1}, LW/a;->c(I)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/16 v0, 0x3e8

    goto :goto_b
.end method


# virtual methods
.method public a(LW/a;)Le/h;
    .registers 8

    const/4 v1, 0x3

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1, v1}, LW/a;->f(I)LW/a;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v1, v2}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-static {v2}, Le/r;->b(LW/a;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, LW/a;->f(I)LW/a;

    move-result-object v3

    invoke-static {v3}, Le/r;->a(LW/a;)Lg/a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, LW/a;->f(I)LW/a;

    move-result-object v4

    invoke-static {v4}, Le/r;->a(LW/a;)Lg/a;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    new-instance v5, Le/E;

    invoke-direct {v5, v2, v3}, Le/E;-><init>(Ljava/util/Map;Lg/a;)V

    new-instance v3, Le/E;

    invoke-direct {v3, v2, v4}, Le/E;-><init>(Ljava/util/Map;Lg/a;)V

    invoke-direct {p0, v1}, Le/j;->c(LW/a;)I

    move-result v2

    new-instance v1, Le/h;

    invoke-direct {v1, v5, v3, v2}, Le/h;-><init>(Le/E;Le/E;I)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3b} :catch_3d

    move-object v0, v1

    goto :goto_4

    :catch_3d
    move-exception v1

    goto :goto_4
.end method

.method public synthetic b(LW/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/j;->a(LW/a;)Le/h;

    move-result-object v0

    return-object v0
.end method
