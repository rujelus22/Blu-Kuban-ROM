.class public Lcom/google/android/location/localizer/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/B;

.field private final b:Lcom/google/android/location/localizer/a;


# direct methods
.method public constructor <init>(Lc/t;Lc/t;Lcom/google/android/location/localizer/s;Li/E;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p4}, Li/E;->n()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/localizer/MetricModel;->a(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/localizer/MetricModel;->a()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/google/android/location/localizer/e;

    invoke-direct {v2, v0}, Lcom/google/android/location/localizer/e;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/location/localizer/B;

    new-instance v1, Lcom/google/android/location/localizer/x;

    invoke-direct {v1}, Lcom/google/android/location/localizer/x;-><init>()V

    new-instance v3, Lcom/google/android/location/localizer/n;

    invoke-direct {v3, p4, p3}, Lcom/google/android/location/localizer/n;-><init>(Li/E;Lcom/google/android/location/localizer/s;)V

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/B;-><init>(Lcom/google/android/location/localizer/x;Lcom/google/android/location/localizer/e;Lcom/google/android/location/localizer/n;Lc/t;Li/c;)V

    iput-object v0, p0, Lcom/google/android/location/localizer/d;->a:Lcom/google/android/location/localizer/B;

    new-instance v0, Lcom/google/android/location/localizer/a;

    invoke-direct {v0, p1, p4}, Lcom/google/android/location/localizer/a;-><init>(Lc/t;Li/c;)V

    iput-object v0, p0, Lcom/google/android/location/localizer/d;->b:Lcom/google/android/location/localizer/a;

    return-void
.end method

.method private a(Le/L;Le/L;Le/x;J)Le/K;
    .registers 9

    iget-object v0, p0, Lcom/google/android/location/localizer/d;->a:Lcom/google/android/location/localizer/B;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/google/android/location/localizer/B;->a(Ljava/util/List;Le/x;J)Le/K;

    move-result-object v0

    iget-object v1, v0, Le/K;->d:Le/p;

    sget-object v2, Le/p;->a:Le/p;

    if-eq v1, v2, :cond_1e

    if-eq p1, p2, :cond_1e

    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/google/android/location/localizer/d;->a:Lcom/google/android/location/localizer/B;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/google/android/location/localizer/B;->a(Ljava/util/List;Le/x;J)Le/K;

    move-result-object v0

    :cond_1e
    return-object v0
.end method

.method private a(Le/n;Le/n;)Le/n;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Le/n;->d:Le/p;

    sget-object v3, Le/p;->a:Le/p;

    if-ne v0, v3, :cond_16

    move v0, v1

    :goto_9
    iget-object v3, p2, Le/n;->d:Le/p;

    sget-object v4, Le/p;->a:Le/p;

    if-ne v3, v4, :cond_18

    move v3, v1

    :goto_10
    if-nez v0, :cond_1a

    if-nez v3, :cond_1a

    const/4 p2, 0x0

    :cond_15
    :goto_15
    return-object p2

    :cond_16
    move v0, v2

    goto :goto_9

    :cond_18
    move v3, v2

    goto :goto_10

    :cond_1a
    if-eqz v0, :cond_15

    if-nez v3, :cond_20

    move-object p2, p1

    goto :goto_15

    :cond_20
    iget-object v3, p1, Le/n;->c:Le/x;

    iget-object v4, p2, Le/n;->c:Le/x;

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v0

    iget v5, v3, Le/x;->c:I

    iget v6, v4, Le/x;->c:I

    add-int/2addr v5, v6

    const v6, 0x3567e0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    if-gt v0, v5, :cond_45

    move v0, v1

    :goto_39
    if-eqz v0, :cond_49

    iget v0, v3, Le/x;->c:I

    iget v3, v4, Le/x;->c:I

    if-le v0, v3, :cond_47

    :cond_41
    :goto_41
    if-nez v1, :cond_15

    move-object p2, p1

    goto :goto_15

    :cond_45
    move v0, v2

    goto :goto_39

    :cond_47
    move v1, v2

    goto :goto_41

    :cond_49
    iget v0, v3, Le/x;->d:I

    iget v3, v4, Le/x;->d:I

    if-lt v0, v3, :cond_41

    move v1, v2

    goto :goto_41
.end method


# virtual methods
.method public a(Le/d;Le/L;Le/e;Le/x;J)Le/u;
    .registers 14

    iget-object v0, p0, Lcom/google/android/location/localizer/d;->b:Lcom/google/android/location/localizer/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/localizer/a;->a(Le/d;)Le/a;

    move-result-object v6

    if-nez p4, :cond_42

    if-eqz v6, :cond_42

    iget-object v0, v6, Le/a;->d:Le/p;

    sget-object v1, Le/p;->a:Le/p;

    if-ne v0, v1, :cond_42

    iget-object v0, v6, Le/a;->c:Le/x;

    new-instance p4, Le/x;

    iget v1, v0, Le/x;->a:I

    iget v2, v0, Le/x;->b:I

    iget v0, v0, Le/x;->c:I

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p4, v1, v2, v0}, Le/x;-><init>(III)V

    move-object v3, p4

    :goto_20
    if-nez p3, :cond_3f

    const/4 v2, 0x0

    :goto_23
    move-object v0, p0

    move-object v1, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/d;->a(Le/L;Le/L;Le/x;J)Le/K;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/google/android/location/localizer/d;->a(Le/n;Le/n;)Le/n;

    move-result-object v0

    if-nez v0, :cond_39

    if-eqz p3, :cond_39

    iget-object v2, p3, Le/e;->d:Le/p;

    sget-object v3, Le/p;->a:Le/p;

    if-ne v2, v3, :cond_39

    move-object v0, p3

    :cond_39
    new-instance v2, Le/u;

    invoke-direct {v2, v0, v1, v6, p3}, Le/u;-><init>(Le/n;Le/K;Le/a;Le/e;)V

    return-object v2

    :cond_3f
    iget-object v2, p3, Le/e;->a:Le/L;

    goto :goto_23

    :cond_42
    move-object v3, p4

    goto :goto_20
.end method
