.class public Lt/i;
.super Ljava/lang/Object;

# interfaces
.implements Lt/h;


# static fields
.field static final a:Lt/V;


# instance fields
.field private b:Ljava/util/List;

.field private c:Lt/V;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lt/i;->b()Lt/V;

    move-result-object v0

    sput-object v0, Lt/i;->a:Lt/V;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lt/i;->b:Ljava/util/List;

    sget-object v0, Lt/i;->a:Lt/V;

    iput-object v0, p0, Lt/i;->c:Lt/V;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LK/bR;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lt/i;->b:Ljava/util/List;

    sget-object v0, Lt/i;->a:Lt/V;

    iput-object v0, p0, Lt/i;->c:Lt/V;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lt/i;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/h;

    invoke-virtual {p0, v0}, Lt/i;->a(Lt/h;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public varargs constructor <init>([Lt/h;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lt/i;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static b()Lt/V;
    .registers 2

    const/high16 v1, -0x8000

    new-instance v0, Lt/L;

    invoke-direct {v0, v1, v1}, Lt/L;-><init>(II)V

    new-instance v1, Lt/V;

    invoke-direct {v1, v0, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v1
.end method


# virtual methods
.method public a()Lt/V;
    .registers 2

    iget-object v0, p0, Lt/i;->c:Lt/V;

    return-object v0
.end method

.method public a(Lt/h;)V
    .registers 5

    invoke-interface {p1}, Lt/h;->a()Lt/V;

    move-result-object v0

    iget-object v1, p0, Lt/i;->c:Lt/V;

    sget-object v2, Lt/i;->a:Lt/V;

    if-ne v1, v2, :cond_23

    new-instance v1, Lt/V;

    iget-object v2, v0, Lt/V;->a:Lt/L;

    invoke-static {v2}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v2

    iget-object v0, v0, Lt/V;->b:Lt/L;

    invoke-static {v0}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v1, p0, Lt/i;->c:Lt/V;

    :goto_1d
    iget-object v0, p0, Lt/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_23
    iget-object v1, p0, Lt/i;->c:Lt/V;

    invoke-virtual {v1, v0}, Lt/V;->b(Lt/V;)V

    goto :goto_1d
.end method

.method public a(Lt/L;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lt/i;->c:Lt/V;

    invoke-virtual {v0, p1}, Lt/V;->a(Lt/L;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    move v1, v2

    :goto_b
    iget-object v0, p0, Lt/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lt/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/h;

    invoke-interface {v0, p1}, Lt/h;->a(Lt/L;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    goto :goto_9

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method public a(Lt/W;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v0

    iget-object v1, p0, Lt/i;->c:Lt/V;

    invoke-virtual {v1, v0}, Lt/V;->a(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return v2

    :cond_e
    move v1, v2

    :goto_f
    iget-object v0, p0, Lt/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lt/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/h;

    invoke-interface {v0, p1}, Lt/h;->a(Lt/W;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v2, 0x1

    goto :goto_d

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method
