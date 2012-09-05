.class public final Lc/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;J)V
    .registers 12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lc/b;-><init>(ILjava/lang/Object;JJ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;JJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/b;->c:I

    if-nez p2, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position many not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p2, p0, Lc/b;->d:Ljava/lang/Object;

    iput p1, p0, Lc/b;->c:I

    iput-wide p3, p0, Lc/b;->a:J

    iput-wide p5, p0, Lc/b;->b:J

    return-void
.end method

.method public static a(Ljava/io/DataInput;Le/w;)Lc/b;
    .registers 9

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p1, p0}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lc/b;

    invoke-direct/range {v0 .. v6}, Lc/b;-><init>(ILjava/lang/Object;JJ)V

    iput-wide v5, v0, Lc/b;->b:J

    return-object v0
.end method

.method public static a(Lc/b;Ljava/io/DataOutput;Le/w;)V
    .registers 5

    iget-wide v0, p0, Lc/b;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lc/b;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Lc/b;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lc/b;->d:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lc/b;->a:J

    return-wide v0
.end method

.method a(ILjava/lang/Object;J)V
    .registers 7

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-wide p3, p0, Lc/b;->a:J

    iput-object p2, p0, Lc/b;->d:Ljava/lang/Object;

    iput p1, p0, Lc/b;->c:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lc/b;->b:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lc/b;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lc/b;->a:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lc/b;->c:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lc/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheResult ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/b;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " databaseVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastSeenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc/b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
