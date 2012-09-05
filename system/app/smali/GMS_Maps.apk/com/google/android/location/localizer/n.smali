.class public Lcom/google/android/location/localizer/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/localizer/v;


# instance fields
.field private final a:Li/E;

.field private final b:Lcom/google/android/location/localizer/D;

.field private c:J

.field private d:Ljava/util/Map;

.field private final e:Lcom/google/android/location/localizer/s;


# direct methods
.method public constructor <init>(Li/E;Lcom/google/android/location/localizer/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/n;->a:Li/E;

    new-instance v0, Lcom/google/android/location/localizer/D;

    invoke-direct {v0, p1}, Lcom/google/android/location/localizer/D;-><init>(Li/E;)V

    iput-object v0, p0, Lcom/google/android/location/localizer/n;->b:Lcom/google/android/location/localizer/D;

    iput-object p2, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;J)Lcom/google/android/location/localizer/o;
    .registers 10

    new-instance v2, Lcom/google/android/location/localizer/o;

    invoke-direct {v2}, Lcom/google/android/location/localizer/o;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v0, v4, v5, p2, p3}, Lcom/google/android/location/localizer/s;->a(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v2, v0}, Lcom/google/android/location/localizer/o;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_35
    move v1, v0

    goto :goto_f

    :cond_37
    invoke-virtual {v2}, Lcom/google/android/location/localizer/o;->c()V

    return-object v2

    :cond_3b
    move v0, v1

    goto :goto_35
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;
    .registers 15

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->a:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v6

    iget-wide v4, p0, Lcom/google/android/location/localizer/n;->c:J

    sub-long v4, v2, v4

    const-wide/16 v8, 0x1f40

    cmp-long v0, v4, v8

    if-gez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->d:Ljava/util/Map;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/location/localizer/n;->b:Lcom/google/android/location/localizer/D;

    invoke-virtual {v0, p2}, Lcom/google/android/location/localizer/D;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-wide v2, p0, Lcom/google/android/location/localizer/n;->c:J

    iput-object v0, p0, Lcom/google/android/location/localizer/n;->d:Ljava/util/Map;

    invoke-virtual {p0, v1, v6, v7}, Lcom/google/android/location/localizer/n;->a(Ljava/util/Map;J)Lcom/google/android/location/localizer/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/location/localizer/o;->b()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_a9

    invoke-virtual {v8}, Lcom/google/android/location/localizer/o;->a()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    cmp-long v0, p3, v3

    if-gtz v0, :cond_56

    const/4 v0, 0x1

    :goto_47
    iget-object v3, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v3, v2, v6, v7, v0}, Lcom/google/android/location/localizer/s;->a(Ljava/lang/String;JZ)Le/k;

    move-result-object v2

    if-nez v2, :cond_58

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/s;->a()V

    const/4 v0, 0x0

    :goto_55
    return-object v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_47

    :cond_58
    invoke-virtual {v2, v1}, Le/k;->a(Ljava/util/Map;)Le/l;

    move-result-object v4

    invoke-virtual {v4}, Le/l;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v2, v5, v6, v7, v0}, Lcom/google/android/location/localizer/s;->b(Ljava/lang/String;JZ)Le/h;

    move-result-object v6

    if-nez v6, :cond_6f

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/s;->a()V

    const/4 v0, 0x0

    goto :goto_55

    :cond_6f
    invoke-virtual {v6, v1}, Le/h;->a(Ljava/util/Map;)Le/i;

    move-result-object v3

    new-instance v0, Le/x;

    iget v1, v3, Le/i;->a:I

    iget v2, v3, Le/i;->b:I

    iget v3, v3, Le/i;->c:I

    invoke-virtual {v4}, Le/l;->b()F

    move-result v4

    const/high16 v7, 0x4120

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v6}, Le/h;->a()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Le/x;-><init>(IIIILjava/lang/String;I)V

    new-instance v1, Lcom/google/android/location/localizer/w;

    invoke-virtual {v8}, Lcom/google/android/location/localizer/o;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/location/localizer/w;-><init>(Le/x;ILjava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/s;->a()V

    move-object v0, v1

    goto :goto_55

    :cond_a9
    iget-object v0, p0, Lcom/google/android/location/localizer/n;->e:Lcom/google/android/location/localizer/s;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/s;->a()V

    const/4 v0, 0x0

    goto :goto_55
.end method
