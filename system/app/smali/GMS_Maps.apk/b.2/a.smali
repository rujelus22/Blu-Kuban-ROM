.class public Lb/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lb/a;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lb/a;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/a;->c:Ljava/util/List;

    return-void
.end method

.method private a(Le/a;Le/a;)Z
    .registers 6

    iget-object v0, p1, Le/a;->c:Le/x;

    iget-object v1, p2, Le/a;->c:Le/x;

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v0

    iget-object v1, p1, Le/a;->c:Le/x;

    iget v1, v1, Le/x;->c:I

    div-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private a(Le/a;Ljava/util/List;)Z
    .registers 8

    iget-wide v1, p1, Le/a;->e:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a;

    iget-wide v3, v0, Le/a;->e:J

    sub-long v0, v1, v3

    const-wide/32 v2, 0xd6d8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private b(Le/a;)V
    .registers 4

    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lb/a;->a(Le/a;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_24

    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_24
    return-void
.end method


# virtual methods
.method public a(Le/a;)Lb/g;
    .registers 7

    const-wide/high16 v3, 0x3fe0

    if-eqz p1, :cond_8

    iget-object v0, p1, Le/a;->c:Le/x;

    if-nez v0, :cond_b

    :cond_8
    sget-object v0, Lb/e;->a:Lb/g;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    invoke-direct {p0, p1}, Lb/a;->b(Le/a;)V

    sget-object v0, Lb/e;->a:Lb/g;

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    iget-object v0, p0, Lb/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a;

    invoke-direct {p0, p1, v0}, Lb/a;->a(Le/a;Le/a;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_34
    invoke-direct {p0, p1}, Lb/a;->b(Le/a;)V

    if-eqz v0, :cond_41

    new-instance v0, Lb/g;

    sget-object v1, Le/G;->b:Le/G;

    invoke-direct {v0, v1, v3, v4}, Lb/g;-><init>(Le/G;D)V

    goto :goto_a

    :cond_41
    new-instance v0, Lb/g;

    sget-object v1, Le/G;->a:Le/G;

    invoke-direct {v0, v1, v3, v4}, Lb/g;-><init>(Le/G;D)V

    goto :goto_a

    :cond_49
    move v0, v1

    goto :goto_34
.end method
