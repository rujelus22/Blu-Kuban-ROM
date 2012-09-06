.class final Ldbxyzptlk/l/s;
.super Ljava/io/FilterOutputStream;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/l/r;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ldbxyzptlk/l/r;Ljava/io/OutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 85
    iput-object p1, p0, Ldbxyzptlk/l/s;->a:Ldbxyzptlk/l/r;

    .line 86
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    iput-wide v0, p0, Ldbxyzptlk/l/s;->b:J

    .line 82
    iput-wide v0, p0, Ldbxyzptlk/l/s;->c:J

    .line 83
    iput-wide v0, p0, Ldbxyzptlk/l/s;->d:J

    .line 87
    invoke-static {p1}, Ldbxyzptlk/l/r;->a(Ldbxyzptlk/l/r;)Ldbxyzptlk/l/q;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/l/q;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/s;->c:J

    .line 88
    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 8
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 106
    iget-wide v0, p0, Ldbxyzptlk/l/s;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/l/s;->d:J

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    iget-wide v2, p0, Ldbxyzptlk/l/s;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Ldbxyzptlk/l/s;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    .line 109
    iput-wide v0, p0, Ldbxyzptlk/l/s;->b:J

    .line 110
    iget-object v0, p0, Ldbxyzptlk/l/s;->a:Ldbxyzptlk/l/r;

    invoke-static {v0}, Ldbxyzptlk/l/r;->a(Ldbxyzptlk/l/r;)Ldbxyzptlk/l/q;

    move-result-object v0

    iget-wide v1, p0, Ldbxyzptlk/l/s;->d:J

    iget-object v3, p0, Ldbxyzptlk/l/s;->a:Ldbxyzptlk/l/r;

    invoke-static {v3}, Ldbxyzptlk/l/r;->b(Ldbxyzptlk/l/r;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ldbxyzptlk/l/q;->a(JJ)V

    .line 112
    :cond_2b
    return-void
.end method

.method public final write([BII)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Ldbxyzptlk/l/s;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    iget-wide v0, p0, Ldbxyzptlk/l/s;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/l/s;->d:J

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-wide v2, p0, Ldbxyzptlk/l/s;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Ldbxyzptlk/l/s;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 98
    iput-wide v0, p0, Ldbxyzptlk/l/s;->b:J

    .line 99
    iget-object v0, p0, Ldbxyzptlk/l/s;->a:Ldbxyzptlk/l/r;

    invoke-static {v0}, Ldbxyzptlk/l/r;->a(Ldbxyzptlk/l/r;)Ldbxyzptlk/l/q;

    move-result-object v0

    iget-wide v1, p0, Ldbxyzptlk/l/s;->d:J

    iget-object v3, p0, Ldbxyzptlk/l/s;->a:Ldbxyzptlk/l/r;

    invoke-static {v3}, Ldbxyzptlk/l/r;->b(Ldbxyzptlk/l/r;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ldbxyzptlk/l/q;->a(JJ)V

    .line 101
    :cond_2c
    return-void
.end method
