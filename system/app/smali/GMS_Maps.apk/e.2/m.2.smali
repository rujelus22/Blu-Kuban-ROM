.class public Le/m;
.super Le/A;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lk/a;->u:LW/d;

    invoke-direct {p0, v0}, Le/A;-><init>(LW/d;)V

    return-void
.end method

.method private static c(LW/a;)Ljava/util/Map;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v7}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-virtual {v2, v6}, LW/a;->i(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_25

    invoke-virtual {v2, v6, v0}, LW/a;->b(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v7, v0}, LW/a;->e(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    return-object v1
.end method


# virtual methods
.method public a(LW/a;)Le/k;
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1, v1}, LW/a;->f(I)LW/a;

    move-result-object v1

    const/4 v2, 0x3

    :try_start_a
    invoke-virtual {v1, v2}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-static {v2}, Le/r;->a(LW/a;)Lg/a;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LW/a;->f(I)LW/a;

    move-result-object v3

    invoke-static {v3}, Le/r;->b(LW/a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Le/m;->c(LW/a;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Le/E;

    invoke-direct {v5, v3, v2}, Le/E;-><init>(Ljava/util/Map;Lg/a;)V

    new-instance v1, Le/k;

    invoke-direct {v1, v5, v4}, Le/k;-><init>(Le/E;Ljava/util/Map;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2d

    move-object v0, v1

    goto :goto_4

    :catch_2d
    move-exception v1

    goto :goto_4
.end method

.method public synthetic b(LW/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Le/m;->a(LW/a;)Le/k;

    move-result-object v0

    return-object v0
.end method
