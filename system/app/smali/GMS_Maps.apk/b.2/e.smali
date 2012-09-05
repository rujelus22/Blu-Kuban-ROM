.class public Lb/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Lb/g;


# instance fields
.field private final b:Lb/c;

.field private final c:Lb/a;

.field private final d:Ljava/util/List;

.field private final e:Lb/b;

.field private final f:Li/c;

.field private g:Lb/g;

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lb/g;

    sget-object v1, Le/G;->c:Le/G;

    const-wide/high16 v2, -0x4010

    invoke-direct {v0, v1, v2, v3}, Lb/g;-><init>(Le/G;D)V

    sput-object v0, Lb/e;->a:Lb/g;

    return-void
.end method

.method public constructor <init>(Lc/t;Li/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    iput-object v0, p0, Lb/e;->b:Lb/c;

    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    iput-object v0, p0, Lb/e;->c:Lb/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/e;->d:Ljava/util/List;

    sget-object v0, Lb/e;->a:Lb/g;

    iput-object v0, p0, Lb/e;->g:Lb/g;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/e;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/e;->i:Z

    iput-object p2, p0, Lb/e;->f:Li/c;

    new-instance v0, Lb/b;

    invoke-direct {v0, p1}, Lb/b;-><init>(Lc/t;)V

    iput-object v0, p0, Lb/e;->e:Lb/b;

    return-void
.end method

.method private a(Lb/f;)Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lb/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lb/e;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private a()Z
    .registers 3

    invoke-direct {p0}, Lb/e;->b()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lb/e;->g:Lb/g;

    sget-object v1, Lb/e;->a:Lb/g;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Lb/f;Ljava/util/List;)Z
    .registers 8

    invoke-virtual {p1}, Lb/f;->a()Le/L;

    move-result-object v0

    iget-wide v1, v0, Le/L;->a:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Le/L;

    move-result-object v0

    iget-wide v3, v0, Le/L;->a:J

    sub-long v0, v1, v3

    const-wide/32 v2, 0xd6d8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private b(Le/u;Le/L;)Lb/g;
    .registers 6

    if-nez p2, :cond_5

    sget-object v0, Lb/e;->a:Lb/g;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p2}, Le/L;->a()I

    move-result v0

    if-gtz v0, :cond_e

    sget-object v0, Lb/e;->a:Lb/g;

    goto :goto_4

    :cond_e
    new-instance v0, Lb/f;

    invoke-direct {v0, p2, p1}, Lb/f;-><init>(Le/L;Le/u;)V

    invoke-direct {p0, v0}, Lb/e;->b(Lb/f;)V

    invoke-direct {p0, v0}, Lb/e;->a(Lb/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_24

    sget-object v0, Lb/e;->a:Lb/g;

    goto :goto_4

    :cond_24
    iget-object v1, p0, Lb/e;->e:Lb/b;

    invoke-virtual {v1, v0}, Lb/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lb/e;->b:Lb/c;

    invoke-virtual {v1, v0}, Lb/c;->a(Ljava/util/Map;)Lb/g;

    move-result-object v0

    goto :goto_4
.end method

.method private b(Lb/f;)V
    .registers 4

    iget-object v0, p0, Lb/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/e;->d:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lb/e;->a(Lb/f;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    iget-object v0, p0, Lb/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_24

    iget-object v0, p0, Lb/e;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method private b()Z
    .registers 5

    iget-object v0, p0, Lb/e;->f:Li/c;

    invoke-interface {v0}, Li/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lb/e;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(Le/u;Le/L;)Lb/g;
    .registers 6

    invoke-direct {p0, p1, p2}, Lb/e;->b(Le/u;Le/L;)Lb/g;

    move-result-object v1

    iget-object v2, p0, Lb/e;->c:Lb/a;

    if-nez p1, :cond_22

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v2, v0}, Lb/a;->a(Le/a;)Lb/g;

    move-result-object v0

    sget-object v2, Lb/e;->a:Lb/g;

    if-ne v1, v2, :cond_25

    sget-object v2, Lb/e;->a:Lb/g;

    if-eq v0, v2, :cond_25

    :goto_15
    sget-object v2, Lb/e;->a:Lb/g;

    if-ne v0, v2, :cond_27

    invoke-direct {p0}, Lb/e;->a()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v0, p0, Lb/e;->g:Lb/g;

    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p1, Le/u;->c:Le/a;

    goto :goto_9

    :cond_25
    move-object v0, v1

    goto :goto_15

    :cond_27
    sget-object v2, Lb/e;->a:Lb/g;

    if-ne v1, v2, :cond_38

    iget-boolean v2, p0, Lb/e;->i:Z

    if-eqz v2, :cond_38

    invoke-direct {p0}, Lb/e;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v0, p0, Lb/e;->g:Lb/g;

    goto :goto_21

    :cond_38
    if-ne v0, v1, :cond_48

    const/4 v1, 0x1

    :goto_3b
    iput-boolean v1, p0, Lb/e;->i:Z

    iput-object v0, p0, Lb/e;->g:Lb/g;

    iget-object v1, p0, Lb/e;->f:Li/c;

    invoke-interface {v1}, Li/c;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lb/e;->h:J

    goto :goto_21

    :cond_48
    const/4 v1, 0x0

    goto :goto_3b
.end method
