.class Lcom/estrongs/io/archive/aeszip/e;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic d:Z


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:Lcom/estrongs/io/archive/aeszip/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/estrongs/io/archive/aeszip/a;JJ)V
    .registers 9

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->d:Z

    if-nez v0, :cond_15

    cmp-long v0, p2, v1

    if-gez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->d:Z

    if-nez v0, :cond_23

    cmp-long v0, p4, v1

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    iput-wide p4, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    iput-wide p2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    return-void
.end method

.method public available()I
    .registers 5

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    iget-boolean v2, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_e
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    const v0, 0x7fffffff

    :goto_18
    return v0

    :cond_19
    long-to-int v0, v0

    goto :goto_18
.end method

.method public read()I
    .registers 8

    const-wide/16 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_19

    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v1, :cond_17

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    :cond_16
    :goto_16
    return v0

    :cond_17
    const/4 v0, -0x1

    goto :goto_16

    :cond_19
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->d(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0}, Lde/a/a/a/a/h;->b()I

    move-result v0

    if-ltz v0, :cond_16

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    goto :goto_16
.end method

.method public read([BII)I
    .registers 9

    const/4 v0, 0x0

    if-gtz p3, :cond_b

    if-gez p3, :cond_21

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_b
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_24

    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v1, :cond_22

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :cond_21
    :goto_21
    return v0

    :cond_22
    const/4 v0, -0x1

    goto :goto_21

    :cond_24
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    iget-wide v0, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    long-to-int p3, v0

    :cond_2e
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    invoke-virtual {v0, v1, v2}, Lde/a/a/a/a/h;->d(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->c:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lde/a/a/a/a/h;->a([BII)I

    move-result v0

    if-lez v0, :cond_21

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    iget-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    goto :goto_21
.end method
