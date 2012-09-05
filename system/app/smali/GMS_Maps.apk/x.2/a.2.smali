.class public Lx/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Laf/a;

.field private final b:Lx/b;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Laf/a;IJLx/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/a;->a:Laf/a;

    iput-object p5, p0, Lx/a;->b:Lx/b;

    iput p2, p0, Lx/a;->c:I

    iput-wide p3, p0, Lx/a;->d:J

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lx/a;->c:I

    iget-object v3, p0, Lx/a;->b:Lx/b;

    invoke-interface {v3}, Lx/b;->a()I

    move-result v3

    if-eq v2, v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v2, p0, Lx/a;->b:Lx/b;

    invoke-interface {v2}, Lx/b;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1b

    move v0, v1

    goto :goto_c

    :cond_1b
    iget-object v4, p0, Lx/a;->a:Laf/a;

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lx/a;->d:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_c

    iget-wide v6, p0, Lx/a;->d:J

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_c

    move v0, v1

    goto :goto_c
.end method
