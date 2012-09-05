.class public final Lae/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->a:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->b:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->d:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->e:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/c;->f:I

    return-void
.end method

.method public static g()Lam/b;
    .registers 2

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->o:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    return-object v0
.end method

.method public static h()Lae/c;
    .registers 2

    invoke-static {}, Lae/d;->c()Lae/c;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lae/c;

    invoke-static {}, Lae/c;->g()Lam/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/c;-><init>(Lam/b;)V

    :cond_f
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lae/c;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lae/c;->b:I

    return v0
.end method

.method public c()J
    .registers 5

    iget v0, p0, Lae/c;->c:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .registers 5

    iget v0, p0, Lae/c;->d:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public e()J
    .registers 5

    iget v0, p0, Lae/c;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public f()J
    .registers 5

    iget v0, p0, Lae/c;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxServerTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeToWipe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
