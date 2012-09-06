.class public Lde/innosystec/unrar/b/d;
.super Ljava/io/InputStream;


# instance fields
.field private a:Lde/innosystec/unrar/b/a;

.field private b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/b/a;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lde/innosystec/unrar/b/d;->a:Lde/innosystec/unrar/b/a;

    iput-wide p2, p0, Lde/innosystec/unrar/b/d;->c:J

    iput-wide p2, p0, Lde/innosystec/unrar/b/d;->b:J

    iput-wide p4, p0, Lde/innosystec/unrar/b/d;->d:J

    iget-wide v0, p0, Lde/innosystec/unrar/b/d;->b:J

    invoke-interface {p1, v0, v1}, Lde/innosystec/unrar/b/a;->a(J)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 6

    iget-wide v0, p0, Lde/innosystec/unrar/b/d;->b:J

    iget-wide v2, p0, Lde/innosystec/unrar/b/d;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lde/innosystec/unrar/b/d;->a:Lde/innosystec/unrar/b/a;

    invoke-interface {v0}, Lde/innosystec/unrar/b/a;->read()I

    move-result v0

    iget-wide v1, p0, Lde/innosystec/unrar/b/d;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/b/d;->b:J

    goto :goto_9
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lde/innosystec/unrar/b/d;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 11

    if-nez p3, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-wide v0, p0, Lde/innosystec/unrar/b/d;->b:J

    iget-wide v2, p0, Lde/innosystec/unrar/b/d;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lde/innosystec/unrar/b/d;->a:Lde/innosystec/unrar/b/a;

    int-to-long v1, p3

    iget-wide v3, p0, Lde/innosystec/unrar/b/d;->d:J

    iget-wide v5, p0, Lde/innosystec/unrar/b/d;->b:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, p1, p2, v1}, Lde/innosystec/unrar/b/a;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lde/innosystec/unrar/b/d;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/b/d;->b:J

    goto :goto_3
.end method
