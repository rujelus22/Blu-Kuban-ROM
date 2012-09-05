.class public Lcom/google/googlenav/br;
.super Lat/a;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lam/b;

.field private final c:Lcom/google/googlenav/bs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/br;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/br;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/bs;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    sget-boolean v0, Lcom/google/googlenav/br;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    iput-object p1, p0, Lcom/google/googlenav/br;->c:Lcom/google/googlenav/bs;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/hx;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    invoke-virtual {v0, v3, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/hx;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/br;->b:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/br;->b:Lam/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/br;->b:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/br;->c:Lcom/google/googlenav/bs;

    iget-object v1, p0, Lcom/google/googlenav/br;->b:Lam/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bs;->a(Lam/b;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/br;->c:Lcom/google/googlenav/bs;

    invoke-interface {v0}, Lcom/google/googlenav/bs;->a()V

    goto :goto_14
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/br;->c:Lcom/google/googlenav/bs;

    invoke-interface {v0}, Lcom/google/googlenav/bs;->a()V

    return-void
.end method
