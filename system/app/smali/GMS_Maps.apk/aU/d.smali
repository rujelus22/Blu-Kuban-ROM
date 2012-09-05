.class public LaU/d;
.super Lat/a;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:I

.field private static c:I


# instance fields
.field a:Z

.field private final d:I

.field private final e:LaU/e;

.field private final f:Lam/b;

.field private g:Lam/b;

.field private h:Z

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, LaU/d;->b:I

    return-void
.end method

.method public constructor <init>(LaU/e;LaJ/B;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-boolean v3, p0, LaU/d;->h:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaU/d;->i:J

    iput-object p1, p0, LaU/d;->e:LaU/e;

    sget v0, LaU/d;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LaU/d;->c:I

    iput v0, p0, LaU/d;->d:I

    new-instance v0, Lam/b;

    sget-object v1, LbD/fE;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, LaU/d;->f:Lam/b;

    if-eqz p2, :cond_3b

    iget-object v0, p0, LaU/d;->f:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {p2}, LaJ/B;->g()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    iget-object v0, p0, LaU/d;->f:Lam/b;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v3}, Lam/b;->b(IZ)V

    return-void

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private s()V
    .registers 11

    const/16 v6, 0x16

    const/16 v1, 0x11

    const/4 v5, 0x0

    iget-object v0, p0, LaU/d;->g:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, LaU/d;->g:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lam/b;->l(I)I

    move-result v4

    move v0, v5

    :goto_18
    if-ge v0, v4, :cond_2c

    invoke-virtual {v2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lam/b;->c(I)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v5

    add-int/lit8 v5, v0, 0x1

    move v0, v5

    move v5, v1

    goto :goto_18

    :cond_2b
    move v4, v5

    :cond_2c
    if-nez v4, :cond_2f

    :goto_2e
    return-void

    :cond_2f
    const-string v0, "sv"

    iget-wide v1, p0, LaU/d;->j:J

    iget-wide v6, p0, LaU/d;->i:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    iget-wide v2, p0, LaU/d;->k:J

    iget-wide v6, p0, LaU/d;->i:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    iget-wide v6, p0, LaU/d;->l:J

    iget-wide v8, p0, LaU/d;->i:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/K;->a(Ljava/lang/String;IIIII)V

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public a(II)V
    .registers 6

    const/16 v2, 0x35

    iget-object v0, p0, LaU/d;->f:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->a(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    iget-object v1, p0, LaU/d;->f:Lam/b;

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    iget-object v0, p0, LaU/d;->f:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaU/d;->j:J

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaU/d;->h:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, 0x1

    iget-boolean v0, p0, LaU/d;->a:Z

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataInput;->skipBytes(I)I

    :goto_10
    return v4

    :cond_11
    :try_start_11
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaU/d;->k:J

    sget-object v0, LbD/fE;->m:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaU/d;->g:Lam/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaU/d;->l:J

    invoke-direct {p0}, LaU/d;->s()V
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_10

    :catch_39
    move-exception v0

    iget-object v1, p0, LaU/d;->f:Lam/b;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lam/b;->g(II)V

    iput-boolean v4, p0, LaU/d;->a:Z

    throw v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LaU/d;->e:LaU/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaU/d;->e:LaU/e;

    invoke-interface {v0, p0}, LaU/e;->a(LaU/d;)V

    :cond_9
    return-void
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, LaU/d;->g:Lam/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, LaU/d;->g:Lam/b;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, LaU/d;->h:Z

    return v0
.end method

.method public m()Lah/f;
    .registers 5

    iget-object v0, p0, LaU/d;->g:Lam/b;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, LaU/d;->n()[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->o()Lah/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    goto :goto_b
.end method

.method public n()[B
    .registers 3

    iget-object v0, p0, LaU/d;->g:Lam/b;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lam/b;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .registers 4

    sget v0, LaU/d;->b:I

    if-lez v0, :cond_20

    iget-object v0, p0, LaU/d;->f:Lam/b;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, LaU/d;->q()Lap/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lap/d;->b(I)V

    sget v1, LaU/d;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    invoke-virtual {v0}, Lap/d;->g()V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0}, LaU/d;->p()V

    goto :goto_1f
.end method

.method p()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaU/d;->m:Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method q()Lap/d;
    .registers 3

    new-instance v0, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, LaU/d;->p()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SVR["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaU/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
