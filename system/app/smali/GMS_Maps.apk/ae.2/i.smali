.class public final Lae/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/i;->a:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lae/i;->b:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/i;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/i;->d:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lae/i;->e:I

    return-void
.end method

.method public static d()Lam/b;
    .registers 2

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->q:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 5

    iget v0, p0, Lae/i;->a:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lae/i;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lae/i;->c:I

    return v0
.end method

.method public e()J
    .registers 5

    iget v0, p0, Lae/i;->d:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lae/i;->e:I

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "personalizedSmartMapsTileDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onlyRequestPsmWhenPoiInBaseTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lae/i;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minPsmRequestZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileClientCoverage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
