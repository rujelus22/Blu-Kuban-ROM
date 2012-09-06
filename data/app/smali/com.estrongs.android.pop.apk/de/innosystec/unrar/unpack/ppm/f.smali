.class public Lde/innosystec/unrar/unpack/ppm/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 6

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/f;->c()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lde/innosystec/unrar/unpack/ppm/f;->c(J)V

    return-void
.end method

.method public a(J)V
    .registers 5

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->b:J

    return-void
.end method

.method public b()J
    .registers 5

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)V
    .registers 5

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->a:J

    return-void
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->c:J

    return-wide v0
.end method

.method public c(J)V
    .registers 5

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ppm/f;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  lowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  highCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/f;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/innosystec/unrar/unpack/ppm/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
