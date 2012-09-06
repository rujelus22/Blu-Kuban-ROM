.class final Lcom/twitter/android/network/b;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Lcom/twitter/android/network/l;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLcom/twitter/android/network/l;)V
    .registers 9

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lcom/twitter/android/network/b;->a:Lcom/twitter/android/network/l;

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/b;->b:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->c:J

    iget-wide v0, p0, Lcom/twitter/android/network/b;->c:J

    iput-wide v0, p0, Lcom/twitter/android/network/b;->e:J

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 7

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v2, p0, Lcom/twitter/android/network/b;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcom/twitter/android/network/b;->a:Lcom/twitter/android/network/l;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/network/b;->a:Lcom/twitter/android/network/l;

    iget-wide v1, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v3, p0, Lcom/twitter/android/network/b;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/l;->a(JJ)V

    :cond_22
    iget-wide v0, p0, Lcom/twitter/android/network/b;->e:J

    iget-wide v2, p0, Lcom/twitter/android/network/b;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->e:J

    :cond_29
    return-void
.end method

.method public final write([BII)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v2, p0, Lcom/twitter/android/network/b;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcom/twitter/android/network/b;->a:Lcom/twitter/android/network/l;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/network/b;->a:Lcom/twitter/android/network/l;

    iget-wide v1, p0, Lcom/twitter/android/network/b;->d:J

    iget-wide v3, p0, Lcom/twitter/android/network/b;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/l;->a(JJ)V

    :cond_21
    iget-wide v0, p0, Lcom/twitter/android/network/b;->e:J

    iget-wide v2, p0, Lcom/twitter/android/network/b;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/b;->e:J

    :cond_28
    return-void
.end method
