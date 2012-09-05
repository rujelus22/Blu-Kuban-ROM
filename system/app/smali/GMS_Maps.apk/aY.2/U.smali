.class public LaY/U;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaY/i;

.field private final b:Lcom/google/googlenav/D;

.field private final c:I

.field private final d:Z

.field private e:J

.field private f:Z


# direct methods
.method private constructor <init>(LaY/i;Lcom/google/googlenav/D;IJZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/U;->a:LaY/i;

    iput-object p2, p0, LaY/U;->b:Lcom/google/googlenav/D;

    iput p3, p0, LaY/U;->c:I

    iput-wide p4, p0, LaY/U;->e:J

    iput-boolean p6, p0, LaY/U;->d:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, LaY/i;->az()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-wide v0, p0, LaY/U;->e:J

    sget v2, LaY/Y;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, LaY/U;->e:J

    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/U;->f:Z

    return-void
.end method

.method public static a(J)LaY/U;
    .registers 9

    const/4 v1, 0x0

    new-instance v0, LaY/U;

    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v2, v1

    move-wide v4, p0

    invoke-direct/range {v0 .. v6}, LaY/U;-><init>(LaY/i;Lcom/google/googlenav/D;IJZ)V

    return-object v0
.end method

.method public static a(LaY/i;Lcom/google/googlenav/D;IJ)LaY/U;
    .registers 12

    new-instance v0, LaY/U;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, LaY/U;-><init>(LaY/i;Lcom/google/googlenav/D;IJZ)V

    return-object v0
.end method


# virtual methods
.method public a()LaY/i;
    .registers 2

    iget-object v0, p0, LaY/U;->a:LaY/i;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/U;->f:Z

    return-void
.end method

.method public b()Lcom/google/googlenav/D;
    .registers 2

    iget-object v0, p0, LaY/U;->b:Lcom/google/googlenav/D;

    return-object v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, LaY/U;->e:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaY/U;->c:I

    return v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, LaY/U;->e:J

    return-wide v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaY/U;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, LaY/U;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaY/U;->a:LaY/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaY/U;->b:Lcom/google/googlenav/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaY/U;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelDistanceSquared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LaY/U;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
