.class public Lcom/google/android/location/localizer/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/c;

.field private final b:Lc/t;

.field private final c:Li/c;


# direct methods
.method public constructor <init>(Lc/t;Li/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/c;

    invoke-direct {v0}, Lcom/google/android/location/localizer/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    iput-object p1, p0, Lcom/google/android/location/localizer/a;->b:Lc/t;

    iput-object p2, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    return-void
.end method

.method private a(Le/b;Ljava/util/Map;J)Lc/b;
    .registers 8

    invoke-static {p1}, Lc/m;->a(Le/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->b:Lc/t;

    invoke-virtual {v0, v1, p3, p4}, Lc/t;->a(Ljava/lang/Object;J)Lc/b;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a(Le/d;)Le/a;
    .registers 16

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v0}, Li/c;->a()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v0}, Li/c;->b()J

    move-result-wide v7

    if-eqz p1, :cond_102

    invoke-virtual {p1}, Le/d;->b()Le/b;

    move-result-object v2

    invoke-virtual {p1}, Le/d;->c()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    move-object v0, v2

    move-object v2, v13

    :goto_1a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Le/b;->k()Z

    move-result v5

    if-nez v5, :cond_36

    :cond_27
    new-instance v0, Le/a;

    sget-object v2, Le/p;->b:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a;-><init>(Le/x;Le/p;JLe/d;Ljava/util/Map;)V

    :goto_35
    return-object v0

    :cond_36
    iget-object v5, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v5}, Lcom/google/android/location/localizer/c;->a()V

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/google/android/location/localizer/a;->a(Le/b;Ljava/util/Map;J)Lc/b;

    move-result-object v5

    if-nez v5, :cond_50

    new-instance v0, Le/a;

    sget-object v2, Le/p;->c:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a;-><init>(Le/x;Le/p;JLe/d;Ljava/util/Map;)V

    goto :goto_35

    :cond_50
    invoke-virtual {v5}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->a()Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v0, Le/a;

    sget-object v2, Le/p;->b:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a;-><init>(Le/x;Le/p;JLe/d;Ljava/util/Map;)V

    goto :goto_35

    :cond_6b
    iget-object v9, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v5}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v9, v0}, Lcom/google/android/location/localizer/c;->a(Le/x;)V

    if-eqz v2, :cond_b2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7c
    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b;

    invoke-virtual {v0}, Le/b;->h()J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0x7530

    cmp-long v5, v9, v11

    if-gez v5, :cond_7c

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/google/android/location/localizer/a;->a(Le/b;Ljava/util/Map;J)Lc/b;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->a()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v9, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v5}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v9, v0}, Lcom/google/android/location/localizer/c;->a(Le/x;)V

    goto :goto_7c

    :cond_b2
    new-instance v5, Le/x;

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/c;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v2}, Lcom/google/android/location/localizer/c;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v3}, Lcom/google/android/location/localizer/c;->e()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/location/localizer/b;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/c;

    invoke-virtual {v4}, Lcom/google/android/location/localizer/c;->d()I

    move-result v4

    invoke-direct {v5, v0, v2, v3, v4}, Le/x;-><init>(IIII)V

    invoke-static {v5}, Lcom/google/android/location/localizer/b;->c(Le/x;)Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance v0, Le/a;

    sget-object v2, Le/p;->a:Le/p;

    iget-object v1, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v1}, Li/c;->a()J

    move-result-wide v3

    move-object v1, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a;-><init>(Le/x;Le/p;JLe/d;Ljava/util/Map;)V

    goto/16 :goto_35

    :cond_f2
    new-instance v0, Le/a;

    sget-object v2, Le/p;->b:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/a;->c:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a;-><init>(Le/x;Le/p;JLe/d;Ljava/util/Map;)V

    goto/16 :goto_35

    :cond_102
    move-object v2, v1

    move-object v0, v1

    goto/16 :goto_1a
.end method
